# paysuper-docker

Please create network with specific subnet manually
```
docker network create --driver=bridge --subnet=172.18.0.0/16 p1devnet
```

First of all, you need to run database and othe auxiliary services
```
docker-compose up -d
```

After that, please copy .env.example file to .env and fill all variables.

With next step you can run all paysuper services in a row or just specific one
```
docker-compose -f docker-compose-services.yaml up -d
```
