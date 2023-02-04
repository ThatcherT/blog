from django.shortcuts import render


def home(request):
    """Home page view."""
    return render(request, "index.html")

def article(request, slug):
    """Article page view."""
    print(f"slug: {slug}")
    return render(request, f"{slug}.html", {"slug": slug})