## run ./lab2.sh inside swarch2024i_ms/ in cmd

# Crear la imagen de docker
echo "Step 1: Creating docker image..."
docker build -t swarch2024i_ms .

if [ $? -eq 0 ];
then
    echo "Step 1 Completed"
    echo ""
    echo ""

    # Creación y despliegue del contenedor
    echo "Step 2: Deploying container..."
    docker run -p 4000:4000 -e DB_HOST=host.docker.internal -e DB_PORT=3306 -e DB_USER=swarch2024i -e DB_PASSWORD=2023 -e DB_NAME=swarch2024i_db -e URL=0.0.0.0:4000 swarch2024i_ms

fi

# !importante! Chequear el contenedor manualmente en una nueva terminal
# Correr el siguiente comando dentro de /swarch2024i_ms:

# docker ps