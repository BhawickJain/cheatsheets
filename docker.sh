__docker cli__
```
# enter a container
docker exec -it <YOUR-CONTAINER-NAME> /bin/bash

# clean container entirely
docker compose down --rmi all -v && docker system prune -a && rm -rf .devcontainer% 

# show docker logs and dump them into a log text file
docker-compose logs --tail <YOUR-CONTAINER-NAME> > <YOUR-CONTAINER-NAME>.log
```
