# grid_testscripts

## install the test scripts & tools

```bash
#install the test scripts
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/threefoldfoundation/grid_testscripts/master/tools/install.sh)"
```

result
- crystaltools & tfweb installed
- basic requirements installed


## run letsencrypt to local webserver


```bash
#fill in your own domain, set it on your dns server make sure it points to required ip addr of this machine
export DOMAIN=test.ava.tf
web_run

```

## do reverse proxy to 2 other destinations & get ssl 

to be done
