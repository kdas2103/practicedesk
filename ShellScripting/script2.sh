#script to create user 
#!/bin/bash
# Get the username (login).
read -p 'Type your username ' USERNAME
# Get the real name (contents for the description field).
read -p 'Type your Name ' NAME
# Get the password.
read -p 'Type your password ' PASSWORD
# Create the user with the password.
useradd -m ${NAME} -c "${NAME}" -p ${PASSWORD} ${USERNAME}
# Force password change on first login.
echo ${PASSWORD} | passwd --stdin ${USERNAME}
# Display the username, password, and the host where the user was created
