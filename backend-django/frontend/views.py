from django.shortcuts import render
from datetime import datetime


# Create your views here.
def index(request):
    projects = [
        {
            "name": "ATM",
            "description": "A project written in Java that has all the functionalities of any functioning ATM",
            "created_at": datetime(2020, 5, 20),
            "updated_at": datetime(2023, 8, 20),
            "technologies": ["Java", "Spring Boot", "MySQL"],
            "github_url": "https://gh.com/atm",
        },
        {
            "name": "Security Logger",
            "description": "A project to log security events in real-time.",
            "created_at": datetime(2021, 1, 15),
            "updated_at": datetime(2023, 7, 10),
            "technologies": ["Python", "Django", "PostgreSQL"],
            "github_url": "https://gh.com/securitylogger",
        },
        {
            "name": "Tekisite",
            "description": "A lightweight CMS for technical blogs.",
            "created_at": datetime(2019, 3, 10),
            "updated_at": datetime(2022, 12, 5),
            "technologies": ["React", "Node.js", "MongoDB"],
            "github_url": "https://gh.com/tekisite",
        },
    ]

    stats = {
        "projects_count": len(projects),
        "languages_count": 3,  # Example count, calculate dynamically if needed
        "frameworks_count": 4,
        "live_projects_count": 2,
    }

    context = {
        "technologies": [
            {
                "name": "Python",
                "url": "https://www.python.org/",
                "icon": "bi bi-file-code-fill",
            },
            {
                "name": "TypeScript",
                "url": "https://www.typescriptlang.org/",
                "icon": "bi bi-code-square",
            },
            {
                "name": "Docker",
                "url": "https://www.docker.com/",
                "icon": "bi bi-box-seam",
            },
            {
                "name": "AWS",
                "url": "https://aws.amazon.com/",
                "icon": "bi bi-cloud-fill",
            },
            {
                "name": "Code",
                "url": "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide",
                "icon": "bi bi-braces",
            },
        ],
        "projects": [
            {"name": "Project A", "url": "#"},
            {"name": "Project B", "url": "#"},
            {"name": "Project C", "url": "#"},
            {"name": "Project D", "url": "#"},
        ],
        "companies": [
            {"name": "Company A", "url": "#"},
            {"name": "Company B", "url": "#"},
            {"name": "Company C", "url": "#"},
            {"name": "Company D", "url": "#"},
        ],
        "current_year": datetime.now().year,
        "app_name": "Playground 2.0 Home",
        "app_website": "https://aj-playground.org",
    }

    blog_posts = [
        {
            "title": "Why React?",
            "image_url": "frontend/images/6615E80C-8EE2-4725-B35A-2601339B7197.png",
            "published_date": datetime(2020, 1, 1),
        },
        {
            "title": "Frontend vs Backend",
            "image_url": "frontend/images/BC4F2809-E668-429C-8AFC-5887A5166BF0.png",
            "published_date": datetime(2019, 1, 1),
        },
        {
            "title": "Which operating system is better?",
            "image_url": "frontend/images/D36FBA45-DCBB-49DB-8C60-81D4F3C91888.png",
            "published_date": datetime(2024, 1, 1),
        },
    ]
    social_profiles = [
        {
            "url": "https://twitter.com/your-profile",
            "icon": "bi bi-twitter",
            "bg_color": "#1DA1F2",  # Twitter's color
        },
        {
            "url": "https://youtube.com/your-profile",
            "icon": "bi bi-youtube",
            "bg_color": "#FF0000",  # YouTube's color
        },
        {
            "url": "https://instagram.com/your-profile",
            "icon": "bi bi-instagram",
            "bg_color": "#C13584",  # Instagram's color
        },
    ]

    return render(
        request,
        "frontend/base.html",
        {
            "projects": projects,
            "stats": stats,
            "blog_posts": blog_posts,
            "social_profiles": social_profiles,
            **context,
        },
    )
