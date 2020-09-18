from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import User

# Create your views here.

def index(request):
    all_user = User.objects.all()
    # output = ','.join([u.name_text for u in all_user])
    template = loader.get_template('chat_app/index.html')
    context = {
        'all_user' : all_user
    }
    return HttpResponse(template.render(context, request))

def room(request, room_name):
    return render(request, 'chat_app/room.html', {
        'room_name' : room_name
    })