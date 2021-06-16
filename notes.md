#use gitbash or unix console - not valid on windows cmd

##assign multiple ports to container  
docker run -d -p 8080:80 -p 3000:80 nginx:latest
##list all containers id /all /quiet  
docker ps -qa
##remove all stoped containers
docker rm $(docker ps -aq) 
##format docker ps
docker ps --format="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"
##export variable
export FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n";
##display docker containers with format variable
docker ps --format=$FORMAT

