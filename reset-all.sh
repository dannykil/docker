# 1) Stopping all of the containers
docker stop $(docker ps -qa)

# 2) Deleting all of the containers
docker rm $(docker ps -qa)

# 3) Deleteing all of the images
docker rmi $(docker images -qa)

# 4) Deleteing all of the volumes
docker volume rm $(docker volume ls -qf dangling=true)

# 5) Deleteing all of configurations like network
docker system prune -f

# 6) Check results
docker ps -a
docker images
docker volume ls
docker network ls



