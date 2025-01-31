from django.shortcuts import render, redirect
from django.contrib.auth import authenticate,login, logout
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm
from django.contrib.auth.decorators import login_required
from django.contrib import messages

def register(request):
    """
    Handle user registration.
    """
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            # Save the user
            user = form.save()

            # Log in the user immediately after registration
            login(request, user)
            messages.success(request, 'Registration successful! Welcome to Wordle!')
            return redirect('home')
        else:
            messages.error(request, 'Registration failed. Please correct the errors below.')
    else:
        form = UserCreationForm()
    
    return render(request, 'accounts/register.html', {'form': form})



def login_view(request):
    if request.method == "POST":
        username = request.POST["username"]
        password = request.POST["password"]
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            login(request, user)
            return redirect("dashboard")  # Change this to your desired redirect URL
        else:
            messages.error(request, "Invalid email or password. Please try again.")

    return render(request, "accounts/login.html")

@login_required
def custom_logout(request):
    """
    Log the user out and redirect to the home page.
    """
    logout(request)
    messages.success(request, 'You have successfully logged out.')
    return redirect('home')