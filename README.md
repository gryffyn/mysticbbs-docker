# mysticbbs-docker

Runs [Mystic](http://www.mysticbbs.com/index.html) in a Docker container.

## Usage

`docker-compose up --build -d`    

If the container exits soon after starting, like less than a minute, delete the file `./mystic/semaphore/mis.bsy`

## Editing the configuration

`./config.sh <container name>`    

Yes i know it looks awful, set your terminal to 80x24 if you want proper graphics. The theme Shareware BBS seems to also help.


## Additional Setup

### Setting up sysop

Refer to the [Mystic wiki](http://wiki.mysticbbs.com/doku.php?id=installation#creating_sysop_account)

### Doorparty

Uncomment the section in `docker-compose.yml` regarding doorparty, and fill in your settings from `doorparty-connector.ini`.    

To connect to doorparty in Mystic, set the door code to `IR` and Data to `/ADDR=doorparty /PORT=9999 /USER=[??]@USER@ /PASS=<pass>` where `??` is your BBS code and `<pass>` is some random string.
