#Docker image with ubuntu 14.04 and biicode

Docker image with:

*  [ubuntu 14.04](https://registry.hub.docker.com/_/ubuntu/)
*  [bicode](https://www.biicode.com/) pre-installed
*  [C/C++ Tools](http://docs.biicode.com/c++/installation.html#install-c-c-tools) pre-installed

##Supported tags and respective `Dockerfile` links

*  [`latest` (Dockerfile)](https://github.com/davidsanfal/ubuntu14_biicode/blob/master/Dockerfile)

##What is Biicode?

biicode is a tech start-up based in Madrid, Spain. We develop a `multi-platform C and C++ dependency manager` with a hosting service (like Maven and Maven central for Java but for C and C++). We want code reuse made simple.

Our tool is based in CMake and has been integrated with Koding.org, ArchLinux or Travis CI and our articles have been featured in the [ISO C++ committee’s site](http://isocpp.org/blog/2014/09/zeromq-biicode).

> [bicode](https://www.biicode.com/)

![biicode](https://raw.githubusercontent.com/davidsanfal/ubuntu14_biicode/master/docs/biicode-logo.png)

##How to use this image

First of all, you need to have [docker installed](https://docs.docker.com/installation/#installation).

You have two options:

*  Use the Dokerhub Image.
*  Build the image manually.

###Dockerhub Image

Run the following command to download and run the docker container.

```
docker run -t -i davidsanfal/ubuntu14_biicode:latest /bin/bash

root@dc7e87dcfc2b:~#
```
Now, try the biicode installation.

```
root@dc7e87dcfc2b:~#  bii
ERROR: None or bad command. Type "bii --help" for available commands
```

###Build the Docker image

Run the following commands to clone de [github repository](https://github.com/davidsanfal/ubuntu14_biicode) and build the image.

```
git clone https://github.com/davidsanfal/ubuntu14_biicode.git
cd ubuntu14_biicode

docker build -t biicode .

docker run -t -i biicode /bin/bash

root@dc7e87dcfc2b:~#
```

Now, try the biicode installation.

```
root@dc7e87dcfc2b:~#  bii
ERROR: None or bad command. Type "bii --help" for available commands
```

##How to use biicode inside the docker container

Now, let’s make an [example with SQLite](http://docs.biicode.com/c++/examples/sqlite.html).

First, open and build the [examples/sqlite_basic](http://www.biicode.com/examples/sqlite_basic) block.

```
docker run -t -i --rm davidsanfal/ubuntu14_biicode:latest /bin/bash
biiuser@f2307c434162:~$ bii init sql
Successfully initialized biicode project sql
cbiiuser@f2307c434162:~$ cd sql
biiuser@f2307c434162:~/sql$ bii open examples/sqlite_basic
INFO: Processing changes...
Opened examples/sqlite_basic: 0
biiuser@f2307c434162:~/sql$ bii cpp:build
INFO: Processing changes...
Running: cmake  -G "Unix Makefiles" -Wno-dev  ../cmake

(...)

[100%] Built target examples_sqlite_basic_main
```

Now, run the example.

```
biiuser@f2307c434162:~/sql$ ./bin/examples_sqlite_basic_main 
Opened database successfully

SELECT, List Veggies

STORE = Veggies
NAME = Spinach
NUMBER = 3

STORE = Veggies
NAME = Onion
NUMBER = 1


SELECT, List Drinks

STORE = Drinks
NAME = Coffee
NUMBER = 7


SELECT, Updated Lists:

STORE = Drinks
NAME = Coffee
NUMBER = 2

STORE = Veggies
NAME = Onion
NUMBER = 1

Closed database successfully
```

##User Feedback

###Issues

If you have any problems with or questions about this image, please contact us on the [biicode's forum](http://forum.biicode.com/) or through a [GitHub issue](https://github.com/davidsanfal/ubuntu14_biicode/issues).


###Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans on the [biicode's forum](http://forum.biicode.com/) or through a [GitHub issue](https://github.com/davidsanfal/ubuntu14_biicode/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
