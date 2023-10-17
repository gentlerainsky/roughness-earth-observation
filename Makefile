build:
	docker -l debug build -t local/earth_obs .

shell:
	docker run --shm-size 16G --gpus all -it -p 8800:8800 -p 3123:3123 -v `pwd`:/workspace -v /mnt/d/soil_roughness/:/data/soil_roughness local/earth_obs

shell-more:
	docker exec -it $$(docker ps | awk 'FNR==2{print $$1}') /bin/bash

jupyter:
	jupyter notebook --ip 0.0.0.0 --port=8800 --no-browser --allow-root

