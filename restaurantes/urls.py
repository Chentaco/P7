from django.conf.urls import url

from restaurantes import views

urlpatterns = [
  url(r'^$', views.index, name='index'),
  url(r'^restaurantes/$', views.restaurantes, name='restaurantes'),
  url(r'^editar_restaurante/$', views.editar_restaurante, name='editar_restaurante'),
  url(r'^agregar_restaurante/$', views.agregar_restaurante, name='agregar_restaurante'),
  url(r'^eliminar_restaurante/$', views.eliminar_restaurante, name='eliminar_restaurante'),
]

