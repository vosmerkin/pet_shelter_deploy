
#!/bin/bash

# 1. Define variables
REMOTE_REPO="https://github.com/vosmerkin/pet_shelter_deploy"
LOCAL_REPO="/home/$USER/pet_shelter_deploy"

# 2. Navigate to the local repository
# If the directory doesn't exist, we exit to prevent running commands in the wrong place
cd "$LOCAL_REPO" || { echo "Error: Directory $LOCAL_REPO not found."; exit 1; }

# 3. Update local knowledge of the remote
cd ..
git fetch origin

# 4. Define comparison points
UPSTREAM='@{u}'
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")

# 5. Logical Comparison
if [ "$LOCAL" != "$REMOTE" ]; then
    echo "Changes detected in $REMOTE_REPO. Pulling now..."
    
    # Pull the changes
    git pull origin main
    
    # Check if the pull was successful before running the next script
    if [ $? -eq 0 ]; then
        echo "Pull successful. Running post-update tasks..."
        # Trigger your secondary script here
        #./post-update-tasks.sh
        echo "Run update script here"
    else
        echo "Git pull failed. Manual intervention may be required."
    fi
else
    echo "Local repository at $LOCAL_REPO is already up to date."
fi
