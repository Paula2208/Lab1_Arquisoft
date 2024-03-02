## run ./lab1.sh inside swarch2024i_db/ in cmd

# Crear la imagen de docker
echo "Step 1: Creating docker image..."
docker build -t swarch2024i_db .

if [ $? -eq 0 ];
then
    echo "Step 1 Completed"
    echo ""
    echo ""

    # Desplegar la base de datos
    echo "Step 2: Deploying database..."
    docker run -d -t -i -p 3306:3306 --name swarch2024i_db swarch2024i_db

fi

if [ $? -eq 0 ];
then
    echo "Step 2 Completed"
    echo ""
    echo ""

    # Desplegar el cliente web de MySQL PHPMyAdmin
    echo "Step 3: Deploying web client..."
    docker run --name db_client -d --link swarch2024i_db:db -p 8081:80 phpmyadmin
fi


if [ $? -eq 0 ];
then
    echo "Step 3 Completed"
    echo ""
    echo ""

    # Acceder a la base datos
    echo "Step 4: Starting browser"
    start http://localhost:8081
    echo "Please, check your browser to login"
    echo ""
    echo ""
fi
