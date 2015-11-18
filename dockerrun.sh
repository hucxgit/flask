#!/bin/bash
#source /data/env
#eval "$(weave proxy-env)"

#docker build -t flaskimage .
#docker stop flaskserver
#docker rm flaskserver
#docker run -d --name flaskserver -p 5001:5000 flaskimage
#docker run -d --name flaskserver \
#				-p 5001:5000 \
#        -e VIRTUAL_HOST="$SHUAYA_BACKEND_VIRTUAL_HOST" \
#        -v /data/www/shuaya-backend-image:/usr/src/app/uploads \
#        flaskimage

image=flaskimage
container=flaskimage_container 
echo $image
echo $container


#set environment
source /data/env

echo "=====>start stop and rm container"
sudo docker stop ${container}
sudo docker rm ${container}


echo "======>start build images"
sudo docker rmi ${image}
sudo docker build -t ${image} .





echo "======>start run new container"
#sudo docker run  --name ${container} -e VIRTUAL_HOST=${testnginx} -p 5001:5000 -dit ${image} 
sudo docker run  --name ${container}  -p 5001:5000 -dit ${image} 
sudo docker start ${container}

echo "=====> start enter container"
sudo docker exec -it ${container} /bin/bash
#sudo docker exec -it testimage_container
