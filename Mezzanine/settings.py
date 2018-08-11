
from __future__ import absolute_import, unicode_literals
import os

from django import VERSION as DJANGO_VERSION
from django.utils.translation import ugettext_lazy as _

#Determine if running on Development or in Production. Use that for DEBUG parameter
import sys
RUNNING_DEVSERVER = (len(sys.argv) > 1 and sys.argv[1] == 'runserver')

######################
# MEZZANINE SETTINGS #
######################

# The following settings are already defined with default values in
# the ``defaults.py`` module within each of Mezzanine's apps, but are
# common enough to be put here, commented out, for conveniently
# overriding. Please consult the settings documentation for a full list
# of settings Mezzanine implements:
# http://mezzanine.jupo.org/docs/configuration.html#default-settings

# Controls the ordering and grouping of the admin menu.
#
ADMIN_MENU_ORDER = (
     ("Content", ("pages.Page", "blog.BlogPost", "blog.BlogCategory", "generic.ThreadedComment",
                    (_("Media Library"), "media-library"),)),
     ("Site", ("sites.Site", "redirects.Redirect", "conf.Setting")),
     ("Users", ("auth.User", "auth.Group",)),
)

# A three item sequence, each containing a sequence of template tags
# used to render the admin dashboard.
#
# DASHBOARD_TAGS = (
#     ("blog_tags.quick_blog", "mezzanine_tags.app_list"),
#     ("comment_tags.recent_comments",),
#     ("mezzanine_tags.recent_actions",),
# )

# A sequence of templates used by the ``page_menu`` template tag. Each
# item in the sequence is a three item sequence, containing a unique ID
# for the template, a label for the template, and the template path.
# These templates are then available for selection when editing which
# menus a page should appear in. Note that if a menu template is used
# that doesn't appear in this setting, all pages will appear in it.

# PAGE_MENU_TEMPLATES = (
#     (1, _("Top navigation bar"), "pages/menus/dropdown.html"),
#     (2, _("Left-hand tree"), "pages/menus/tree.html"),
#     (3, _("Footer"), "pages/menus/footer.html"),
# )

# A sequence of fields that will be injected into Mezzanine's (or any
# library's) models. Each item in the sequence is a four item sequence.
# The first two items are the dotted path to the model and its field
# name to be added, and the dotted path to the field class to use for
# the field. The third and fourth items are a sequence of positional
# args and a dictionary of keyword args, to use when creating the
# field instance. When specifying the field class, the path
# ``django.models.db.`` can be omitted for regular Django model fields.
#
# EXTRA_MODEL_FIELDS = (
#     (
#         # Dotted path to field.
#         "mezzanine.blog.models.BlogPost.image",
#         # Dotted path to field class.
#         "somelib.fields.ImageField",
#         # Positional args for field class.
#         (_("Image"),),
#         # Keyword args for field class.
#         {"blank": True, "upload_to": "blog"},
#     ),
#     # Example of adding a field to *all* of Mezzanine's content types:
#     (
#         "mezzanine.pages.models.Page.another_field",
#         "IntegerField", # 'django.db.models.' is implied if path is omitted.
#         (_("Another name"),),
#         {"blank": True, "default": 1},
#     ),
# )

# Setting to turn on featured images for blog posts. Defaults to False.
#
BLOG_USE_FEATURED_IMAGE = True

# If True, the django-modeltranslation will be added to the
# INSTALLED_APPS setting.
USE_MODELTRANSLATION = False


########################
# MAIN DJANGO SETTINGS #
########################

# Hosts/domain names that are valid for this site; required if DEBUG is False
# See https://docs.djangoproject.com/en/dev/ref/settings/#allowed-hosts
ALLOWED_HOSTS = [ '127.0.0.1','localhost','aless80.pythonanywhere.com', 'amarin.pythonanywhere.com']

# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# On Unix systems, a value of None will cause Django to use the same
# timezone as the operating system.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'America/New_York'

# If you set this to True, Django will use timezone-aware datetimes.
USE_TZ = True

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = "en"

# Supported languages
LANGUAGES = (
    ('en', _('English')),
)

# A boolean that turns on/off debug mode. When set to ``True``, stack traces
# are displayed for error pages. Best set to ``True`` in local_settings.py
# Do not run with debug turned on in production!
DEBUG = RUNNING_DEVSERVER

# Whether a user's session cookie expires when the Web browser is closed.
SESSION_EXPIRE_AT_BROWSER_CLOSE = True

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = False

AUTHENTICATION_BACKENDS = ("mezzanine.core.auth_backends.MezzanineBackend",)

# The numeric mode to set newly-uploaded files to. The value should be
# a mode you'd pass directly to os.chmod.
FILE_UPLOAD_PERMISSIONS = 0o644


#############
# DATABASES #
#############
DATABASES = {
    "default": {
        # Ends with "postgresql_psycopg2", "mysql", "sqlite3" or "oracle".
        "ENGINE": "django.db.backends.mysql",
        # DB name or path to database file if using sqlite3.
        "NAME": "amarin$mezzanine_mysql",
        # Not used with sqlite3.
        "USER": "amarin",
        # Not used with sqlite3.
        "PASSWORD": "Set it up as environment variable",
        # Set to empty string for localhost. Not used with sqlite3.
        "HOST": "amarin.mysql.pythonanywhere-services.com",
        # Set to empty string for default. Not used with sqlite3.
        "PORT": "",
    }
}

#########
# PATHS #
#########

# Full filesystem path to the project.
PROJECT_APP_PATH = os.path.dirname(os.path.abspath(__file__))       #~/Mezzanine-website/Mezzanine
PROJECT_APP = os.path.basename(PROJECT_APP_PATH)                    #Mezzanine
PROJECT_ROOT = BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__))) #~/Mezzanine-website

# Every cache key will get prefixed with this value - here we set it to
# the name of the directory the project is in to try and use something
# project specific.
CACHE_MIDDLEWARE_KEY_PREFIX = PROJECT_APP

# URL prefix for static files.
# Example: "http://media.lawrence.com/static/"
STATIC_URL = "/static/"

# Absolute path to the directory static files should be collected to.
# Don't put anything in this directory yourself; store your static files
# in apps' "static/" subdirectories and in STATICFILES_DIRS.
# Example: "/home/media/media.lawrence.com/static/"
STATIC_ROOT = os.path.join(PROJECT_ROOT, STATIC_URL.strip("/"))

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash.
# Examples: "http://media.lawrence.com/media/", "http://example.com/media/"
MEDIA_URL = STATIC_URL + "media/"

# Absolute filesystem path to the directory that will hold user-uploaded files.
# Example: "/home/media/media.lawrence.com/media/"
MEDIA_ROOT = os.path.join(PROJECT_ROOT, *MEDIA_URL.strip("/").split("/"))

# Package/module name to import the root urlpatterns from for the project.
ROOT_URLCONF = "%s.urls" % PROJECT_APP

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [
            os.path.join(PROJECT_ROOT, "templates")
        ],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
                "django.template.context_processors.debug",
                "django.template.context_processors.i18n",
                "django.template.context_processors.static",
                "django.template.context_processors.media",
                "django.template.context_processors.request",
                "django.template.context_processors.tz",
                "mezzanine.conf.context_processors.settings",
                "mezzanine.pages.context_processors.page",
            ],
            "builtins": [
                "mezzanine.template.loader_tags",
            ],
        },
    },
]

if DJANGO_VERSION < (1, 9):
    del TEMPLATES[0]["OPTIONS"]["builtins"]


################
# APPLICATIONS #
################

INSTALLED_APPS = (
    "resume",
    "moderna",
    "categories",
    "categories.editor",
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.redirects",
    "django.contrib.sessions",
    "django.contrib.sites",
    "django.contrib.sitemaps",
    "django.contrib.staticfiles",
    "mezzanine.boot",
    "mezzanine.conf",
    "mezzanine.core",
    "mezzanine.generic",
    "mezzanine.pages",
    "mezzanine.blog",
    "mezzanine.forms",
    "mezzanine.galleries",
    "mezzanine.twitter",
    # "mezzanine.accounts",
    # "mezzanine.mobile",
)

# List of middleware classes to use. Order is important; in the request phase,
# these middleware classes will be applied in the order given, and in the
# response phase the middleware will be applied in reverse order.
MIDDLEWARE_CLASSES = (
    "mezzanine.core.middleware.UpdateCacheMiddleware",

    'django.contrib.sessions.middleware.SessionMiddleware',
    # Uncomment if using internationalisation or localisation
    # 'django.middleware.locale.LocaleMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',

    "mezzanine.core.request.CurrentRequestMiddleware",
    "mezzanine.core.middleware.RedirectFallbackMiddleware",
    "mezzanine.core.middleware.TemplateForDeviceMiddleware",
    "mezzanine.core.middleware.TemplateForHostMiddleware",
    "mezzanine.core.middleware.AdminLoginInterfaceSelectorMiddleware",
    "mezzanine.core.middleware.SitePermissionMiddleware",
    "mezzanine.pages.middleware.PageMiddleware",
    "mezzanine.core.middleware.FetchFromCacheMiddleware",
)

# Store these package names here as they may change in the future since
# at the moment we are using custom forks of them.
PACKAGE_NAME_FILEBROWSER = "filebrowser_safe"
PACKAGE_NAME_GRAPPELLI = "grappelli_safe"

#########################
# OPTIONAL APPLICATIONS #
#########################

# These will be added to ``INSTALLED_APPS``, only if available.
OPTIONAL_APPS = (
    "debug_toolbar",
    "django_extensions",
    "compressor",
    PACKAGE_NAME_FILEBROWSER,
    PACKAGE_NAME_GRAPPELLI,
)

##################
# LOCAL SETTINGS #
##################

# Allow any settings to be defined in local_settings.py which should be
# ignored in your version control system allowing for settings to be
# defined per machine.

# Instead of doing "from .local_settings import *", we use exec so that
# local_settings has full access to everything defined in this module.
# Also force into sys.modules so it's visible to Django's autoreload.

f = os.path.join(PROJECT_APP_PATH, "local_settings.py")
if os.path.exists(f):
    import imp
    module_name = "%s.local_settings" % PROJECT_APP
    module = imp.new_module(module_name)
    module.__file__ = f
    sys.modules[module_name] = module
    exec(open(f, "rb").read())


####################
# DYNAMIC SETTINGS #
####################

# set_dynamic_settings() will rewrite globals based on what has been
# defined so far, in order to provide some better defaults where
# applicable. We also allow this settings module to be imported
# without Mezzanine installed, as the case may be when using the
# fabfile, where setting the dynamic settings below isn't strictly
# required.
try:
    from mezzanine.utils.conf import set_dynamic_settings
except ImportError:
    pass
else:
    set_dynamic_settings(globals())


##########
# EMAIL #
##########
EMAIL_USE_TLS = True
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_HOST_USER = 'alessandromarin80@gmail.com'
EMAIL_HOST_PASSWORD = 'Set it up as environment variable'
EMAIL_PORT = 587
DEFAULT_FROM_EMAIL = 'alessandromarin80@gmail.com'

#####################
# PAGEDOWN SETTINGS #
#####################
#RICHTEXT_WIDGET_CLASS = 'mezzanine_pagedown.widgets.PageDownWidget'
#RICHTEXT_FILTERS = 'mezzanine_pagedown.filters.custom'
#PAGEDOWN_MARKDOWN_EXTENSIONS = ('extra','codehilite','toc')
#RICHTEXT_FILTER_LEVEL = 3
#PAGEDOWN_SERVER_SIDE_PREVIEW = True


if os.environ.get('PASSWORD') is None:
    print('')
    sys.exit("Define an environment variable as follows:\nexport PASSWORD='database password'")

DATABASES['default']['PASSWORD'] = os.environ.get('PASSWORD')

if os.environ.get('SECRET_KEY') is None:
    print('')
    sys.exit("Define an environment variable as follows:\nexport SECRET_KEY='Project password'")

SECRET_KEY=os.environ.get('SECRET_KEY')

if os.environ.get('EMAIL_HOST_PASSWORD') is None:
    print('EMAIL_HOST_PASSWORD not found as environment variable. You might want to set it')
else:
    EMAIL_HOST_PASSWORD=os.environ.get('EMAIL_HOST_PASSWORD')

STATICFILES_DIRS = [
    os.path.join(PROJECT_ROOT, "moderna"),
]

TEMPLATE_DIRS = [
    os.path.join(PROJECT_ROOT, "moderna/templates"),
    os.path.join(PROJECT_ROOT, "templates"),
    ]

# Print log
if RUNNING_DEVSERVER:
    print
    print("DEBUG: ".ljust(27)+str(DEBUG))
    print("DATABASES default ENGINE: ".ljust(27)+str(DATABASES["default"]['ENGINE']))
    try:
        print("DATABASES default NAME: ".ljust(27)+str(DATABASES["default"]['NAME']))
        print("DATABASES default USER: ".ljust(27)+str(DATABASES["default"]['USER']))
    except:
        pass
    print("PROJECT_APP: ".ljust(27)+PROJECT_APP)
    print("PROJECT_ROOT: ".ljust(27)+PROJECT_ROOT)
    print("PROJECT_APP_PATH: ".ljust(27)+PROJECT_APP_PATH)
    print("STATIC_URL: ".ljust(27)+STATIC_URL)
    print("STATIC_ROOT: ".ljust(27)+STATIC_ROOT)
    print("MEDIA_URL: ".ljust(27)+MEDIA_URL)
    print("MEDIA_ROOT: ".ljust(27)+MEDIA_ROOT)
else:
    from io import open
    log = os.path.join(PROJECT_ROOT, "settings_log.txt")
    with open(log, 'w') as file:
        file.write("DEBUG: ".ljust(27)+str(DEBUG)+"\n")
        #print(DATABASES)
        file.write("DATABASES default ENGINE: ".ljust(27)+str(DATABASES["default"]['ENGINE'])+"\n")
        try:
            file.write("DATABASES default NAME: ".ljust(27)+str(DATABASES["default"]['NAME'])+"\n")
            file.write("DATABASES default USER: ".ljust(27)+str(DATABASES["default"]['USER'])+"\n")
        except:
            pass
        file.write("PROJECT_APP: ".ljust(27)+PROJECT_APP+"\n")
        file.write("PROJECT_ROOT: ".ljust(27)+PROJECT_ROOT+"\n")
        file.write("PROJECT_APP_PATH: ".ljust(27)+PROJECT_APP_PATH+"\n")
        file.write("STATIC_URL: ".ljust(27)+STATIC_URL+"\n")
        file.write("STATIC_ROOT: ".ljust(27)+STATIC_ROOT+"\n")
        file.write("MEDIA_URL: ".ljust(27)+MEDIA_URL+"\n")
        file.write("MEDIA_ROOT: ".ljust(27)+MEDIA_ROOT+"\n")
        file.close()
