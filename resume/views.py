from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.sites.requests import RequestSite
from django.template import RequestContext

from .models import Overview, PersonalInfo
from .models import Education, Job, JobAccomplishment
from .models import Skillset, Skill, ProgrammingArea, ProgrammingLanguage, Language
from .models import ProjectType, Project
from .models import Achievement, Publication


from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy


def index(request):
    site_name = RequestSite(request).domain
    personal_info = PersonalInfo.objects.all()[:1]
    overview = Overview.objects.all()[:1]
    education = Education.objects.all()
    jobaccomplishment = JobAccomplishment.objects.all()

    job_list = Job.objects.all()
    skillset = Skillset.objects.all()
    progarea = ProgrammingArea.objects.all()
    proglan = ProgrammingLanguage.objects.all()
    language = Language.objects.all()
    projtype = ProjectType.objects.all()
    project = Project.objects.all()
    achievement = Achievement.objects.all()
    publication = Publication.objects.all()

    return render(request, 'resume/resume.html', {
        'site_name': site_name,
        'personal_info': personal_info,
        'overview' : overview,
        'education' : education,
        'language' : language,
        'job_list' : job_list,        
        'skillset' : skillset,
        'progarea' : progarea,
        'proglan' : proglan,
        'projtype' : projtype,
        'project' : project,
        'achievement' : achievement,
        'publication' : publication,
    })


import os
from django.conf import settings
from django.http import Http404
def download(request, path):
    file_path = os.path.join(settings.MEDIA_ROOT, path)
    if os.path.exists(file_path):
        with open(file_path, 'rb') as fh:
            response = HttpResponse(fh.read(), content_type="application/vnd.ms-excel")
            response['Content-Disposition'] = 'inline; filename=' + os.path.basename(file_path)
            return response
    raise Http404