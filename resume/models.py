from django.db import models
import time
from datetime import date

def showall(klass):
    for object in klass.objects.all():
        print('----- ' + klass._meta.model_name)
        for field in object._meta.get_fields():
            value = getattr(object, field.name, None)
            print(field.name, value)
            
class PersonalInfo(models.Model):
    first_name = models.CharField(max_length=255)
    middle_name = models.CharField(max_length=255, blank=True)
    last_name = models.CharField(max_length=255)
    suffix = models.CharField(max_length=255, blank=True, help_text="e.g. PhD")
    locality = models.CharField(max_length=255, help_text="e.g. city such as Boston")
    region = models.CharField(max_length=255, help_text="e.g. MA or Italy",blank=True)
    title = models.CharField(max_length=255, help_text="e.g. Developer",blank=True)
    email = models.EmailField(blank=True)
    linkedin = models.URLField(blank=True)
    facebook = models.URLField(blank=True)
    github = models.URLField(blank=True)
    site = models.URLField(blank=True)
    twittername = models.CharField(max_length=100, blank=True)
    image = models.ImageField(upload_to='static/resume/img/',blank=True)
    class Meta:
        verbose_name_plural = "01. Personal Info"    
    def full_name(self):
        return " ".join([self.first_name, self.middle_name, self.last_name])    
    def githubname(self):
        print('git='+str(self.github))
        if self.github is not '':
            return self.github.rsplit('/',maxsplit=1)[1]
        else:
            return None
    def __unicode__(self):
        return self.full_name()
    def __str__(self):
        return self.full_name()

class Overview(models.Model):
    text = models.TextField()
    class Meta:
        verbose_name_plural = "02. Overview"
    def __unicode__(self):
        return self.text[0:40] + '...'
    def __str__(self):
        return self.text[0:40] + '...'

class Education(models.Model):
    name = models.CharField(max_length=250)
    name2 = models.CharField(max_length=250, blank=True)
    location = models.CharField(max_length=250)
    location2 = models.CharField(max_length=250, blank=True)
    schoolurl = models.URLField('School URL', blank=True)
    schoolurl2   = models.URLField('School URL2', blank=True)
    start_date = models.DateField(null=True)
    end_date = models.DateField(null=True)
    degree = models.TextField(blank=True)
    description = models.TextField(blank=True)
    #is_current = models.BooleanField(default=True)
    class Meta:
        verbose_name_plural = "03. Education"
        ordering = ['-end_date','id']
    def edu_date_range(self):
        return ' - '.join(['(', self.formatted_start_date(), 
                            self.formatted_end_date(), ')'])
    def full_start_date(self):
        return self.start_date.strftime("%Y-%m-%d")
    def full_end_date(self):
        if (self.end_date == None):
            return time.strftime("%Y-%m-%d", time.localtime())
        else:
            return self.end_date.strftime("%Y-%m-%d")
    def formatted_start_date(self):
        return self.start_date.strftime("%b %Y")
    def formatted_end_date(self):
        if (self.end_date == None):
            return "Present"
        else:
            return self.end_date.strftime("%b %Y")
    def __unicode__(self):
        return ' '.join([self.name, self.edu_date_range()])
    def __str__(self):
        return self.name

class Job(models.Model):
    company = models.CharField(max_length=250)
    companyurl = models.URLField('Company URL')
    location = models.CharField(max_length=250)
    title = models.CharField(max_length=250)    
    description = models.TextField(blank=True)
    start_date = models.DateField(blank=True,null=True)
    end_date = models.DateField(blank=True,null=True)
    is_current = models.BooleanField(default=False)
    is_public = models.BooleanField(default=True)
    company_image = models.CharField(max_length=250, blank=True, 
        help_text='path to company image, local or otherwise')
    class Meta:
        db_table = 'jobs'
        verbose_name_plural = "04. Jobs"
        ordering = ['-end_date','id']        
    def job_date_range(self):
        return ' - '.join(['(', self.formatted_start_date(),
            self.formatted_end_date(), ')'])    
    def full_start_date(self):
        if self.start_date is None:
            return None
        return self.start_date.strftime("%Y-%m-%d")
    def full_end_date(self):
        if (self.is_current is True):
            return time.strftime("%Y-%m-%d", time.localtime())
        else:
            return self.end_date.strftime("%Y-%m-%d")
    def formatted_start_date(self):
        if self.start_date is None:
            return None
        return self.start_date.strftime("%b %Y")        
    def formatted_end_date(self):
        if self.is_current == True or self.end_date is None:
            return "Present"
        else:
            return self.end_date.strftime("%b %Y")
    def __unicode__(self):
        return ' '.join([self.company, self.job_date_range()])
    def __str__(self):
        return self.company

class JobAccomplishment(models.Model):
    description = models.TextField()
    job = models.ForeignKey('Job',on_delete=models.CASCADE)
    order = models.IntegerField(default=1)
    class Meta:
        verbose_name_plural = "05. Job Accomplishments"
        db_table = 'jobaccomplishment'
        ordering = ['order', 'id']
    def __unicode__(self):
        return ' - '.join([self.job.company, self.description[0:50]+'...'])
    def __str__(self):
        return self.description[0:10]+'...'

class Skillset(models.Model):
    name = models.TextField()
    class Meta:
        verbose_name_plural = "06. Skillsets"
        ordering = ['id']
    def __unicode__(self):
        return self.name
    def __str__(self):
        return self.name

class Skill(models.Model):
    text =  models.TextField()
    order = models.IntegerField(default=1)
    #skillurl = models.URLField('Skill URL', blank=True)
    skillset = models.ForeignKey('Skillset',on_delete=models.CASCADE)
    class Meta:
        verbose_name_plural = "07. Skills"
        ordering = ['order','id']
    def __unicode__(self):
        return ' - '.join([self.skillset.name, self.text])
    def __str__(self):
        return self.text

class ProgrammingArea(models.Model):
    name = models.CharField(max_length=250)
    order = models.IntegerField(default=1)
    class Meta:
        verbose_name_plural = "08. Programming areas"
        ordering = ['order','name']
    def __str__(self):
        return self.name

class ProgrammingLanguage(models.Model):
    name = models.CharField(max_length=250)
    programmingarea = models.ForeignKey('ProgrammingArea',on_delete=models.CASCADE)
    NIH_proficiency_scale = (
        (5, 'Expert'),
        (4, 'Advanced'),
        (3, 'Intermediate'),
        (2, 'Novice'),
        (1, 'Fundamental Awareness')
        )
    level = models.IntegerField(help_text='Choice between 1 and 5', choices=NIH_proficiency_scale)
    description = models.CharField(max_length=50, blank=True)
    order = models.IntegerField(default=1)
    class Meta:
        verbose_name_plural = "09. Programming languages"
        db_table = 'programminglanguage'
        ordering = ['order', 'id']
    def __unicode__(self):
        return self.name
    def __str__(self):
        return self.name

class Language(models.Model):
    language = models.CharField(max_length=20,blank=False)
    order = models.IntegerField(default=1)
    ILR_scale = (
        (5, 'Native'),
        (4, 'Full professional proficiency'),
        (3, 'Professional working proficiency'),
        (2, 'Limited professional proficiency'),
        (1, 'Elementary professional proficiency')
        )
    level = models.IntegerField(help_text='Choice between 1 and 5', default=5, choices=ILR_scale)
    class Meta:
        verbose_name_plural = "10. Languages"
        ordering = ['level','order']
    def __unicode__(self):
        return ' - '.join([self.language, str(self.level)])
    def __str__(self):
        return self.language

class ProjectType(models.Model):
    name = models.CharField(max_length=255)
    order = models.IntegerField(default=1)
    class Meta:
        verbose_name_plural = "11. ProjectTypes"
        ordering = ['order','id']
    def __unicode__(self):
        return ' - '.join([self.name, str(self.id)])
    def __str__(self):
        return self.name

class Project(models.Model):
    name = models.CharField(max_length=255)
    short_description = models.TextField(blank=True,help_text="Text shown in project list")
    long_description = models.TextField(blank=True,help_text="Text shown in modals appearing when clicking on images")
    link = models.URLField(blank=True)
    order = models.IntegerField(default=1)
    #file will be uploaded to MEDIA_ROOT/<upload_to>  '/resume/static/resume/'
    image = models.ImageField(upload_to='static/resume/img/',blank=True,
                              help_text="Preferred width x height: 247x200")
    projtype = models.ForeignKey('ProjectType',on_delete=models.CASCADE,default=1)
    def save(self, *args, **kwargs):
        if not self.long_description:
            self.long_description = self.short_description
        super(Project, self).save(*args, **kwargs)
    class Meta:
        verbose_name_plural = "12. Projects"
        ordering = ['order','id']
    def __unicode__(self):
        return ' - '.join([self.name, self.link, self.short_description[0:50]+'...'])
    def __str__(self):
        return self.name

class Achievement(models.Model):
    title = models.CharField(max_length=50, blank=True)
    description = models.TextField()
    order = models.IntegerField(default=1)
    url = models.URLField('URL', blank=True)
    #linkdefault = 'this link'
    #if url is not '': linkdefault = ''
    #linkname = models.CharField(default=linkdefault, max_length=150, blank=True)
    class Meta:
        verbose_name_plural = "13. Achievements"
        db_table = 'achievement'
        ordering = ['order', 'id']
    def __unicode__(self):
        return ' - '.join([str(self.order), self.url, self.description[0:50]+'...'])
    def __str__(self):
        return self.title

class Publication(models.Model):
    title = models.CharField(max_length=250)
    authors = models.TextField()
    author_underlined = models.CharField(max_length=50, default="Marin A")
    journal = models.CharField(max_length=150)
    year = models.IntegerField(default=date.today().year)
    order = models.IntegerField(default=1)
    journalpages = models.TextField(blank=True)
    link = models.URLField('Publication URL', blank=True)
    class Meta:
        verbose_name_plural = "14. Publications"
        db_table = 'publications'
        ordering = ['-year', 'order']
    def formatted_authors(self):
        return self.authors.replace(self.author_underlined,'<span class="strong-underlined">'+self.author_underlined+'</span>')
    def __unicode__(self):
        return ' - '.join([str(self.id), str(self.year), str(self.order), self.journal[0:10]+'...'])
    def __str__(self):
        return self.title[0:10]+'...'
