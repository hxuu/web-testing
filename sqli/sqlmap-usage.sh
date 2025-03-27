#!/bin/bash

# this will test the username parameter only
sqlmap -u "https://IP:PORT/api/auth/login" --data "username=*&password=password123" -p username --force-ssl --dbms

# # this will test the password parameter only
# sqlmap -u "https://IP:PORT/api/auth/login" --data "username=password123&password=*" -p password --force-ssl --dbms

# # this will test the both parameters
# sqlmap -u "https://IP:PORT/api/auth/login" --data "username=*&password=*" -p username,password --force-ssl --dbms

