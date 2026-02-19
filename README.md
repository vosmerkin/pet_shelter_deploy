# pet_shelter_deploy

The target of this repo is to develop scripts and descriptions for automated deploying pet_shelter app


Deployment main phases

1. Pet_shelter repo should be cloned on the server (as well as current repo), and  to pe kept always updated.
2. Create cron job script for running pull script
3. Create sh script for pulling this repo
4. Create sh script for detecting changes in petshelter app, and then pull the changes
5. After pulling changes create docker image and push it to docker repo
6. Restart the app
   
 
