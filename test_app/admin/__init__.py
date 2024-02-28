from django.contrib import admin
from test_app.models import *


class SubscriberAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Subscriber._meta.fields]
    list_filter = ['id']
    search_fields = ['email']

    class Meta:
        model = Subscriber


admin.site.register(Post)
admin.site.register(Subscriber, SubscriberAdmin)


