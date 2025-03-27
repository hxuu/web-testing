#!/bin/bash

# this will test the username parameter only
ghauri -u "https://IP:PORT/api/auth/login" --data "username=*&password=password123" -p username --force-ssl

# # this will test the password parameter only
# ghauri -u "https://IP:PORT/api/auth/login" --data "username=password123&password=*" -p password --force-ssl

# # this will test the both parameters
# ghauri -u "https://IP:PORT/api/auth/login" --data "username=*&password=*" -p username,password --force-ssl
