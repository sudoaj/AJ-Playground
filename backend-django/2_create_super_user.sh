#!/bin/bash

# Define superuser details for both users
SUPERUSER_1_USERNAME=aj
SUPERUSER_1_EMAIL=aj@aj-playground.org
SUPERUSER_1_PASSWORD=playgroundLaunch2021?

SUPERUSER_2_USERNAME=sudoaj
SUPERUSER_2_EMAIL=sudoaj@aj-playground.org
SUPERUSER_2_PASSWORD=playgroundLaunch2021? # Same password and email as the first superuser

# Run the Django shell to create both superusers
echo "
from django.contrib.auth import get_user_model

User = get_user_model()

# Create first superuser
if not User.objects.filter(username='$SUPERUSER_1_USERNAME').exists():
    User.objects.create_superuser(
        username='$SUPERUSER_1_USERNAME',
        email='$SUPERUSER_1_EMAIL',
        password='$SUPERUSER_1_PASSWORD'
    )
    print('Superuser $SUPERUSER_1_USERNAME created successfully.')
else:
    print('Superuser $SUPERUSER_1_USERNAME already exists.')

# Create second superuser
if not User.objects.filter(username='$SUPERUSER_2_USERNAME').exists():
    User.objects.create_superuser(
        username='$SUPERUSER_2_USERNAME',
        email='$SUPERUSER_2_EMAIL',
        password='$SUPERUSER_2_PASSWORD'
    )
    print('Superuser $SUPERUSER_2_USERNAME created successfully.')
else:
    print('Superuser $SUPERUSER_2_USERNAME already exists.')
" | python manage.py shell