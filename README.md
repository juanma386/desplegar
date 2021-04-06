• Deploy

• Requirements are as follows:

* Debian/Ubuntu Linux System
* Microsoft Linux Debian/Ubuntu System
* Sudo command enabled

Automatic system deployment with php servers quickly
How to apply?
You must first install debian on a VPS terminal, home PC with win10 or linux
Then you have to write the following

From the Debian linux console on your **Windows 10 PC in my case**
$ wget https://raw.githubusercontent.com/juanma386/desplegar/master/implement && sudo chmod +x implement && sudo ./implement prepare && sudo ./implement now && start

With this you just have to make the following calls from the linux console

$ start

If you're crazy like me a real mole, you can follow me on my facebook https://www.facebook.com/juanmanuel.villalba.526

To work in production environments eh manufactured a tool called "production.sh" this serves to quickly recognize the ip of the server.

$sh production.sh

To install is simple like this:

$ sudo cp production.sh /usr/bin/prodok

After this you can enter any folder
cd /path/to/change

and write 

$ prodok && start

And you'll have the address of your production ip working ready to test anything.

with this you can already deploy from **production**

And ready you can make any deployment you want, enjoy it as much as you can, excuse the desastrous code, but as you see it works, I know that you can improve but well there I am waiting for your pull requests, from now on thank you I accept donations to you can contact me by whatsapp at **+549-376-498-2265** greetings, or you can look for me in **hexomedesarrollos.com**

If you want to change the port simply delete the file **config.ini** as simple as this or you can change parameters to your liking in manual.
IMPORTANT!: BE CAREFUL TO RUN THIS OPTION **PRODUCTION. SH** IN LOCAL MODE BECAUSE IT WILL MAKE YOU NOT WORK AND HAVE TO EXECUTE THESE COMMANDS!! If for some reason you are working locally and do not want to have problems with errors like the ones that for X reason do not want to start the system, it is simple: **IF YOU DO NOT HAVE OPEN PORT TO WORK IN PRODUCTION YOU WILL NOT BE ABLE TO START THE SYSTEM**
To resolve this issue you must do this:

And then run start twice once to install the fix and another to run it.


How to use install

Install is a tool created to perform repository downloads at a rapid speed, where productivity is prioritized
Installation mode in linux
