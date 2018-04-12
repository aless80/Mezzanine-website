from django.contrib import admin
from .models import Overview, PersonalInfo
from .models import Education, Job, JobAccomplishment
from .models import Skillset, Skill, ProgrammingArea, ProgrammingLanguage, Language
from .models import ProjectType, Project
from .models import Achievement, Publication

# Register your models here.

class PersonalInfoAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('first_name','last_name','title','image','locality','region',)

class OverviewAdmin(admin.ModelAdmin): #customize appearance
    list_display = ['text'] #otherwise it displays 'object'

class EducationAdmin(admin.ModelAdmin):
    list_display = ('name','name2', 'degree', 'formatted_end_date', 'location', 'description')
    list_filter = ('name','name2', 'degree', 'location')
    search_fields = ('name','name2', 'degree')
    #prepopulated_fields = {'slug': ('degree',)}
    date_hierarchy = 'end_date'
    ordering = ['end_date', 'id']

class JobAdmin(admin.ModelAdmin):
    list_display = ('company', 'location', 'title', 'end_date')
    list_filter = ('company', 'location', 'title', 'end_date')
    search_fields = ('company', 'location', 'title')
    #prepopulated_fields = {'slug': ('degree',)}
    date_hierarchy = 'end_date'
    ordering = ['end_date', 'id']
    #def __unicode__(self):
    #    return self.company

class JobAccomplishmentAdmin(admin.ModelAdmin):
    list_display = ('get_job', 'order', 'description')
    list_filter = ('job__company',)
    ordering = ['-job__end_date','order']
    def get_job(self, obj):
        return obj.job.company
    get_job.short_description = 'Job'
    get_job.admin_order_field = 'job__end_date'
    #def __unicode__(self):
    #    return self.job.company

class SkillsetAdmin(admin.ModelAdmin):
    exclude = ()
    list_filter = ('name',)
    search_fields = ('name',)
    #prepopulated_fields = {'slug': ('degree',)}
    ordering = ['name', 'id']

class SkillAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('get_skillset','order', 'text', 'id')
    list_filter = ('skillset__name',)
    search_fields = ('skillset__name',)
    #prepopulated_fields = {'slug': ('degree',)}
    #date_hierarchy = 'order'
    ordering = ['skillset__name','order']
    def get_skillset(self, obj):
        return obj.skillset.name
    get_skillset.short_description = 'skillset'
    get_skillset.admin_order_field = 'skillset__name'

class ProgrammingAreaAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('name', 'order',)
    list_filter = ('name', )
    search_fields = ('name',)
    #prepopulated_fields = {'slug': ('degree',)}
    #date_hierarchy = 'order'
    ordering = ['order','name']

class ProgrammingLanguageAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('name', 'get_area','order', 'level','description',)
    list_filter = ('name','level', 'description', )
    search_fields = ('name','level', 'description', )
    #prepopulated_fields = {'slug': ('degree',)}
    ordering = ['programmingarea__name','order']
    def get_area(self, obj):
        return obj.programmingarea.name

class LanguageAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('language', 'order', 'level',)
    list_filter = ('language', 'order', 'level',)
    search_fields = ('language', 'level',)
    #prepopulated_fields = {'slug': ('degree',)}
    #date_hierarchy = 'order'
    ordering = ['-level','order']

class ProjectTypeAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('name','order',)
    list_filter = ('name','order',)
    search_fields = ('name','order',)
    ordering = ['order','name']

class ProjectAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('get_projtype','name','order','image','short_description','long_description')
    list_filter = ('projtype__name','name','order',)
    search_fields = ('projtype__name','name','order','image','short_description','long_description','link',)
    ordering = ['projtype__name','order']
    def get_projtype(self, obj):
        return obj.projtype.name

class AchievementAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('title','description', 'order', 'url','id')
    list_filter = ('title','url')
    search_fields = ('title','description','name',)
    #prepopulated_fields = {'slug': ('degree',)}
    #date_hierarchy = 'order'
    ordering = ['order','id']

class PublicationAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('title','year','order', 'journal',)
    list_filter = ('title','year','order', 'journal',)
    search_fields = ('title','year','journal',)
    #prepopulated_fields = {'slug': ('degree',)}
    #date_hierarchy = 'order'
    ordering = ['-year','order']

admin.site.register(PersonalInfo, PersonalInfoAdmin)
admin.site.register(Overview,OverviewAdmin)
admin.site.register(Education, EducationAdmin)
admin.site.register(Job, JobAdmin)
admin.site.register(JobAccomplishment, JobAccomplishmentAdmin)
admin.site.register(Skillset, SkillsetAdmin)
admin.site.register(Skill, SkillAdmin)
admin.site.register(ProgrammingArea,ProgrammingAreaAdmin)
admin.site.register(ProgrammingLanguage, ProgrammingLanguageAdmin)
admin.site.register(Language, LanguageAdmin)
admin.site.register(ProjectType, ProjectTypeAdmin)
admin.site.register(Project, ProjectAdmin)
admin.site.register(Achievement, AchievementAdmin)
admin.site.register(Publication, PublicationAdmin)
