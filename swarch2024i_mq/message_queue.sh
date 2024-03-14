# latest RabbitMQ 3.13
echo "Step 1: Install RabbitMQ..."
docker run -it --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3.13-management

if [ $? -eq 0 ];
then
    echo "Step 1 Completed"
    echo ""
    echo ""
    
    echo "Step 2: Install pika for python..."
    python -m pip install pika --upgrade
    echo ""
    echo ""
    
fi

if [ $? -eq 0 ];
then
    echo "Step 2 Completed"
    echo "rabbitMQ running on http://localhost:5672"
    echo ""
    echo ""
    
fi
