# pull4me
Automatic git deployment tool for the lazy man!


## Getting Started
What is pull4me? 

DUDE! IT'S THE COOLEST DOZEN LINES OF CODE EVER!

Not very fond of the command line? Can't remember those pesky git commands? This is your one-stop-shop to automating the deployment process for your website or web application! 

## Installation

On OS X or Linux? You're in luck! BASH comes right out of the box! 

On Windows? A little trickier but you can use the `sh` command to run your bash scripts. You may or may not already have it, open up a command window and find out!

Now that you can run BASH commands, pop these two files into your project directory and let's analyze them.

First let's configure the `pull4me.sh` file:

```
#!/bin/bash
read -p "Commit description: " desc
git checkout master
git add -A && \
git commit -am "$desc" && \
git push
ssh <user>@<host> 'bash -s' < ./pull4me-scripts.sh
# replace <user> and <host> with real stuff
```

All you gotta do is replace the `<user>` and `<host>` tags with your server's username and hostname. And that's it for this file!

Next let's open up the `pull4me-scripts.sh` file:

```
#!/bin/bash                                                                                
sudo -s                                                                                    
cd <project-folder> #replace with real project folder                                      
git checkout master                                                                        
git pull                                                                                   
# npm install # for any package changes                                                    
# gulp deploy # if gulp web server isn't running, replace this with any server as you please
```

All you gotta do is replace the `<project-folder>` with, of course, your project folder on your deployment machine. Also you may want to uncomment the `npm install` and `gulp deploy` commands depending on the technology stack you are using. 

And that's it! Are you as excited as I am to run this baby?! WOOO!!

## Usage

Work on your project just as you would normally do. Everything seems to be working fine on your local machine and popping this on the server shouldn't break anything. Ohh, looks like it's time to make a commit!

Open up your command line to your working directory and...

`sh pull4me.sh` for Windows

`./pull4me.sh` for OS X or most Linux Distributions

It should now prompt you to enter a commit message. 

`fixing the broken thing`

Woahh, you're a hacker now! Commands be executing themselves!?

Ohh, you want me to put in the ssh password? Certainly!

Let's reload the web app and boom! Your changes are already there?! NO WAY!?!

No more executing several commands to do a single push/pull to the server! Just one command and you're good to go! 

Cheers friends!
