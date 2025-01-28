from django.urls import path
from . import views

urlpatterns = [
    # Hoome page    
    path('', views.index, name='index'),
    
]   