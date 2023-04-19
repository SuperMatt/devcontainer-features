
# UID GID Fixer

This replaces the users group GID 100 with GID 101. This is because in some environments the users groups (GID 100) is the actual group of the user, and therefore the magic beans that change the UID and GID doesn't work.