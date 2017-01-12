# Apache Exporter for Prometheus

Exports apache mod_status statistics via HTTP for Prometheus consumption.

With working golang environment it can be built with `go get`.  There is a [good article](https://machineperson.github.io/monitoring/2016/01/04/exporting-apache-metrics-to-prometheus.html) with build HOWTO and usage example.

Help on flags:

```
  -insecure
    	Ignore server certificate if using https (default false)
  -log.level value
    	Only log messages with the given severity or above. Valid levels: [debug, info, warn, error, fatal, panic]. (default info)
  -scrape_uri string
    	URI to apache stub status page (default "http://localhost/server-status/?auto")
  -node string
  -pod string
  -app string
  -branch string
```

Tested on Apache 2.2 and Apache 2.4.

