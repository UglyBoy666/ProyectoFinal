from urllib import request
from django.shortcuts import redirect, render
from rest_framework.views import APIView
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from django.core.mail import EmailMultiAlternatives
from django.contrib.auth import authenticate, login

# Create your views here.
def login_view(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('index')
        else:
            error_message = "Los datos son incorrectos. Por favor, inténtalo de nuevo."
            return render(request, 'authentication-login.html', {'error_message': error_message})

    return render(request, 'authentication-login.html')

def registro(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')
        password = request.POST.get('password')
        confirm_password = request.POST.get('password2')

        if password == confirm_password:
            if not User.objects.filter(username=username).exists():
                if not User.objects.filter(email=email).exists():
                    user = User.objects.create_user(username=username, email=email, password=password)
                    if user is not None:
                        # Envío del correo con formato HTML
                        subject = 'Registro Exitoso'
                        from_email = 'brandon.silva.180@gmail.com'  # Cambiar por tu dirección de correo
                        to_email = [email]
                        
                        # Renderiza el template HTML del correo
                        html_content = render_to_string('email-user.html', {
                            'username': username,
                            'password': password,
                        })
                        
                        text_content = strip_tags(html_content)  # Elimina el HTML para usuarios que no admiten HTML
                        
                        msg = EmailMultiAlternatives(subject, text_content, from_email, to_email)
                        msg.attach_alternative(html_content, "text/html")
                        msg.send()
                        
                        # Una vez que se ha creado el usuario, redirige a la página de inicio de sesión
                        return redirect('login_view')
                else:
                    error_message = "El correo electrónico ya está en uso."
                    return render(request, 'authentication-register.html', {'error_message': error_message})
            else:
                error_message = "El nombre de usuario ya existe."
                return render(request, 'authentication-register.html', {'error_message': error_message})
        else:
            error_message = "Las contraseñas no coinciden."
            return render(request, 'authentication-register.html', {'error_message': error_message})

    return render(request, 'authentication-register.html')

def maps(request):
    return render(request, 'maps.html')

def controls(request):
    return render(request, 'controls.html')

def home(request):
    return render(request, 'home.html')

@login_required
def index(request):
    usuario = request.user
    return render(request, 'index.html', {'usuario': usuario})
    
