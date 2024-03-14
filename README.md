# Solution Labs #1 and #2

## Deployment

To deploy both labs and see the complete result run

```bash
  cd swarch2024i_db/ && ./lab1.sh && cd ../swarch2024i_ms/ && ./lab2.sh && cd ..
```

## HTTP requests

Import [Lab 2.postman_collection.json](/Lab%202.postman_collection.json) to your postman as a collection to complete lab 2

## Support

Assigment document: [l2.pdf](https://drive.google.com/file/d/1v6QEZYL366_5CP0WtWVU2jOygAArlgu6/view?usp=drive_link)

<br />
<br />
<br />
<br />

***
# Laboratory #1

Development of a first database component.

**Type:** Database

**Name:** swarch2024i_db

**SGBD:** MySQL

**PORT:** 3306

## Requirements

* Docker [downloaded](https://www.docker.com/products/docker-desktop/) and installed

## Deployment Lab 1

To deploy this project run

```bash
  cd swarch2024i_db/ && ./lab1.sh && cd ..
```

<br />
<br />

***
# Laboratory #2

Development of a second component for a distributed software system.

**Type:** Logic (Microservice)

**Name:** swarch2024i_ms

**Programming Language:** Python

**Framework**: Django

**PORT:** 4000

## Requirements
* Lab 1 database deployed
* Postman [downloaded](https://www.postman.com/downloads/) and installed. Or another preferred HTTP client.

## Deployment Lab 2

To deploy this project run

```bash
  cd swarch2024i_ms/ && ./lab2.sh && cd ..
```

***
<br />
<br />

# Laboratory #3

Development of an API Gateway and a Message Queue.

### API Gateway

**Type:** Logic (API Gateway) with GraphQL

**Name:** swarch2024i

**Programming Language:** JavaScript

**Framework**: Node.JS

**PORT:** 5000

### Message Queue

**Type:** Message Queue

**Name:** swarch2024i_mq

**Programming Language:** Python

**Framework**: Pika (RabbitMQ)

**PORT:** 5672

## Requirements
* Lab 1 database deployed
* Lab 2 API deployed
* Python [installed](https://www.python.org/downloads/)

## Deployment Lab 3

To deploy this project run

```bash
  cd swarch2024i/ && ./lab3.sh && cd ..
```

To deploy message queue run

```bash
  cd swarch2024i_mq/ && ./message_queue.sh 
```

Then (in another terminal), start consumer

```bash
  cd swarch2024i_mq/ && ./consumer_queue.sh 
```

Then (in another terminal), start producer program

```bash
  cd swarch2024i_mq/ && ./producer_queue.sh
```
