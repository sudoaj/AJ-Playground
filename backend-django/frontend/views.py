from django.shortcuts import render
from datetime import datetime

def index(request):
    context = {
        "app_name": "Playground 2.0",
        "welcome_message": "Welcome to my playground",
        "thought_message": "CODE, SLEEP, EAT(SOMETIMES), REPEAT",
        "current_year": datetime.now().year,
        "projects": [
            {"name": "ATM", "description": "A Java-based ATM system", "github_url": "https://gh.com/atm"},
            {"name": "Security Logger", "description": "Real-time security logging", "github_url": "https://gh.com/securitylogger"},
            {"name": "Tekisite", "description": "A CMS for technical blogs", "github_url": "https://gh.com/tekisite"},
        ],
        "blog_posts": [
            {"title": "Why React?", "published_date": "2020"},
            {"title": "Frontend vs Backend", "published_date": "2019"},
            {"title": "Which OS is better?", "published_date": "2024"},
        ],
        "social_profiles": [
            {"url": "https://twitter.com/your-profile", "icon": "bi bi-twitter", "bg_color": "#1DA1F2"},
            {"url": "https://youtube.com/your-profile", "icon": "bi bi-youtube", "bg_color": "#FF0000"},
            {"url": "https://instagram.com/your-profile", "icon": "bi bi-instagram", "bg_color": "#C13584"},
        ],
    }
    return render(request, "frontend/index.html", context)