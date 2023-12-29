from urllib import request
from django.shortcuts import redirect, render
from rest_framework.views import APIView
from django.contrib.auth.decorators import login_required

# Create your views here.
class inicio(APIView):
    template_name="authentication-login.html"
    def get(self, request):
        return render(request, self.template_name)
    def post(self, request):
        return render(request, self.template_name)
    
    