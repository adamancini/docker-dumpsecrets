# docker-dumpsecrets
simple container to dump secrets data from swarm


# usage

```git clone https://github.com/adamancini/docker-dumpsecrets.git && cd docker-dumpsecrets```

```docker build -t dumpsecrets .```

```./dump_all_secrets.sh```

# dump_all_secrets.sh
Iterates over every secret name returned by `docker secrets ls` and creates a dummy alpine service with each `--secret` flag populated.  
Then it simply copies the contents of the mounted secrets to `/secrets` in the container filesystem, where we have mounted a named volume.

`sudo su - && cd /var/lib/docker/volumes/dumpsecrets/_data/` and copy secrets data to destination
