from django.urls import path
from .views import *
from django.views.decorators.cache import cache_page
# from rest_framework.routers import DefaultRouter

# # Create a router and register our viewsets with it.
urlpatterns = [
    path('', index)
]