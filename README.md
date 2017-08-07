# Sporran

## Motivation

Performing exploratory operations on a UAT environment with docker based
infrastructure can be a pain. By design, the instances to which you can
login typically don't have all the utilities you're used to using in your
dev environment.

It's like wearing a kilt and not having any pockets for your phone, wallet,
keys etc. What you need is a sporran!

## What is it?

OK maybe a bit of a tortured analogy but I had to come up with a name for
this thing that is basically just a docker image with a few key utilities
I want to bring with me when working in foreign environments. You should
probably define your own one and call it whatever you want. Probably not
much point to installing actual services though. The main reason for this
is to support writing quick ad-hoc scripts that query the services
already running on some platform.

Currently this project builds a docker image containing the following
utils...

 * docker
 * postgres command-line client
 * kafka consumer/producers
 * tmux
 * emacs/vim
 * scripting languages
     - ruby
     - python (required by docker)
     - tcl (because why not?)


## Launching

docker run --net=host -v /var/run/docker.sock:/var/run/docker.sock -it cddr/sporran bash -l
 
## Customization

Clone the repo and add your scripts to home/bin and they will be on the
PATH when you launch this container in your "foreign" environment.

## Storage

Problem: When your session ends, so does your history, and any temporary
         files you created

Solution: Create a docker volume and connect it to your home and/or /tmp
          directories



