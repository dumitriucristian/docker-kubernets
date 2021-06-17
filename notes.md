# use unix console - some commands are not valid on windows cmd

## assign multiple ports to container   
docker run -d -p 8080:80 -p 3000:80 nginx:latest  

## list all containers id /all /quiet    
docker ps -qa 

## remove all stoped containers  
docker rm $(docker ps -aq) 

## format docker ps  
```docker ps --format="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n" ```

## export variable   
```export FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"``` 

## display docker containers with format variable  
docker ps --format=$FORMAT

## mount volume  
docker run --name website -v D/Development/website:usr/share/nginx/html -d -p 8080:80 nginx

## share same volume between multiple containers   
docker run --name website-copy --volumes-from website -d -p 8081:80 nginx

## build image in the current directory with a tag
docker build --tag website:latest .

## cacheing and packing
in Dockerfile add ADD package*.json ./

## build docker image with tag
docker build -t image-name:tag .

## docker remame the tag and version of the docker image 
docker tag old-image-name:old-tag new-image-name:new-tag

## docker registries
docker push reponame imagename/version:tag

## docker inspect
docker inspect id or name of the container

## docker logs view docker logs 
docker logs -f containerid

# kubernetes

## general info

### architecture 
- One master with several workers nodes that have clusters

### master node architecture 

- one server entrypoint 
- one controller manager - keep tracks of what is happening in the cluster
- sheduler - ensure pods placement

