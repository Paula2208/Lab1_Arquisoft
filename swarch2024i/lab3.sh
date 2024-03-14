echo "Step 1: Creating docker image..."
docker build -t swarch2024i .

if [ $? -eq 0 ];
then
    echo "Step 1 Completed"
    echo ""
    echo ""

    # Creación y despliegue del contenedor
    echo "Step 2: Deploying container..."
    docker run -p 5000:5000 swarch2024i

fi


### See http://localhost:5000/graphiql to access 