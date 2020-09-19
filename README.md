docker run --name olatdocker -e "DB_HOST=172.18.0.20" -it -d -p 8080:8080 --net egi_net --ip 172.18.0.10 egifadli/olatdocker:1
