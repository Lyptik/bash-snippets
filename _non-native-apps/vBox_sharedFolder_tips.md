# to correctly mount at boot virtual box shared folder in an ubuntu guest

sudo vi /etc/modules
add : vboxvfs vboxadd
sudo vi /etc/fstab
NameOfTheSharedFolderInVirtualbox NameOfYourMountFolderInLinux vboxsf defaults 0 0
