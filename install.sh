#!/bin/bash
# Auto-install Java 21 for all Gitpod workspaces
sdk install java 21.0.1-tem
sdk use java 21.0.1-tem
sdk default java 21.0.1-tem
echo "Java 21 installed successfully!"
