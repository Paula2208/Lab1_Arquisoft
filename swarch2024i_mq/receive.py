import pika, sys, os

def main():
    # Create a connection for receiver
    connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
    channel = connection.channel()

    # Create queue
    channel.queue_declare(queue='hello')

    # Receive message callback
    def callback(ch, method, properties, body):
        print(f" [x] Received {body}")

    # Receive message form Hello queue
    channel.basic_consume(queue='hello', on_message_callback=callback, auto_ack=True)

    # Start listening to receive messages
    print(' [*] Waiting for messages. To exit press CTRL+C')
    channel.start_consuming()

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print('Interrupted')
        try:
            sys.exit(0)
        except SystemExit:
            os._exit(0)