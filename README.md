1. package a box
command:    
  vagrant package ubuntu14 --vagrantfile Vagrantfile
link: http://docs.vagrantup.com/v2/cli/package.html



2. Import new box 
command:
  vagrant box add my-box /path/to/the/new.box
  
  vagrant init my-box
  
  vagrant up
3. Synced Folder 
 config.vm.synced_folder "src/", "/srv/website"

4. create new vhost on ubuntu
https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-14-04-lts

