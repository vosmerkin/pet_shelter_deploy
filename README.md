# pet_shelter_deploy

The target of this repo is to develop scripts and descriptions for automated deploying of pet_shelter and other web apps. 


Deployment main phases


   
 
1. Bash script for checking updates in master branch. If one is found - run pull script, and:
	- test_and_build script;
	- make Dockerfile;
	- rerun docker-compose
2. Bash script to generate/update certbot
3. Add nginx config to docker-compose.yaml
4. Add certbot to docker-compose.yaml
5. Add cron to docker-compose.yaml
