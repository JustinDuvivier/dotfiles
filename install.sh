#!/bin/bash
# Auto-install Java 21 for all Gitpod workspaces
sdk install java 21.0.1-tem
sdk use java 21.0.1-tem
sdk default java 21.0.1-tem

# Configure VS Code to use Java 21
mkdir -p /home/gitpod/.config/Code/User
cat > /home/gitpod/.config/Code/User/settings.json << 'EOF'
{
  "java.configuration.runtimes": [
    {
      "name": "JavaSE-21",
      "path": "/home/gitpod/.sdkman/candidates/java/21.0.1-tem",
      "default": true
    }
  ],
  "java.jdt.ls.java.home": "/home/gitpod/.sdkman/candidates/java/21.0.1-tem",
  "java.home": "/home/gitpod/.sdkman/candidates/java/21.0.1-tem"
}
EOF

echo "Java 21 installed and VS Code configured!"
