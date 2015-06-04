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

5. Enable module rewrite to apache
To enable it the rewrite module, run "apache2 enable module rewrite":

sudo a2enmod rewrite
You need to restart the webserver to apply the changes:

sudo service apache2 restart
If you plan on using mod_rewrite in .htaccess files, you also need to enable the use of .htaccess files by changing AllowOverride None to AllowOverride FileInfo. For the default website, edit /etc/apache2/sites-available/default:

    <Directory /var/www/>
            Options Indexes FollowSymLinks MultiViews
            # changed from None to FileInfo
            AllowOverride FileInfo
            Order allow,deny
            allow from all
    </Directory>
After such a change, you need to restart Apache again.

