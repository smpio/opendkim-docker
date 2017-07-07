# opendkim-docker

Lightweight [OpenDKIM](http://opendkim.org/) image based on Alpine.


## Usage

```
docker run -p 8891:8891 -v /path/to/keyfile:/keyfile smpio/opendkim Domain=example.com KeyFile=/keyfile Selector=mta1
```

All arguments are added to [opendkim.conf](http://opendkim.org/opendkim.conf.5.html).
