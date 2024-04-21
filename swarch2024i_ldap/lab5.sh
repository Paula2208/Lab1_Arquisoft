docker-compose up

if [ $? -eq 0 ];
then
    echo "Starting browser"
    start http://localhost:8085
    echo "Please, check your browser to login"
    echo ""
    echo ""
fi