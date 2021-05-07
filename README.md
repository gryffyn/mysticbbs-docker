# mysticbbs-docker

Runs [Mystic](http://www.mysticbbs.com/index.html) in a Docker container.

## Usage

`docker-compose up --build -d`    

If the container exits soon after starting, like less than a minute, delete the file `./mystic/semaphore/mis.bsy`

## Editing the configuration

`./config.sh <container name>`    

Yes i know it looks awful, set your terminal to 80x24 if you want proper graphics


## Setting up sysop

Refer to the [Mystic wiki](http://wiki.mysticbbs.com/doku.php?id=installation#creating_sysop_account)
