# grid_testscripts

## install the test scripts & tools

```bash
#install the test scripts
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/threefoldfoundation/grid_testscripts/master/tools/install.sh)"
```

result
- crystaltools & tfweb installed
- basic requirements installed

to go into the test tools do:

```bash
cd ~/code/github/threefoldfoundation/grid_testscripts;source start.sh
```

## run webserver which has support for letsencrypt


```bash
#fill in your own domain, set it on your dns server make sure it points to required ip addr of this machine
export DOMAIN=test.ava.tf
web_run

```

- will run as proxy to simple python webserver on 3001, the 3001 webserver is std http



## how to build the crystal tools & tfweb

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/threefoldfoundation/websites/master/tools/build.sh)"
```