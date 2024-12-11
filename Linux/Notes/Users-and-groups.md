To add a user:
sudo useradd newuser

set a password for the user:
sudo passwd newUser

su -> substitute user

whoami -> outputs user

Add user to sudoers file:
Sudo usermod -aG sudo newuser

Delete user from sudoers file:
Sudo deluser newuser sudo

Create a group:
Sudo groupadd devops

View/list all groups -> cat /etc/group
add user to group -> sudo usermod -aG devops newuser

Remove user from a group -> sudo usermod -aG devops newuser

remove user from a group: sudo gpasswd -d newuser devops

delete a group:
sudo groupdel devops
