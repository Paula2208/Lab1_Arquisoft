echo "Step 1: Creating docker image..."
docker build -t swarch2024i_ag .

if [ $? -eq 0 ];
then
    echo "Step 1 Completed"
    echo ""
    echo ""

    # Creación y despliegue del contenedor
    echo "Step 2: Deploying container..."
    docker run -p 5000:5000 swarch2024i_ag

fi

if [ $? -eq 0 ];
then
    echo "Step 2 Completed"
    echo ""
    echo ""

    # Acceder a la graphQL
    echo "Step 4: Starting browser"
    start http://host:5000/graphiql
    echo "Please, check your browser to login"
    echo ""
    echo ""
fi