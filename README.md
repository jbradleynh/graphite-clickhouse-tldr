# Overview
This is modified fork of lomik's excellent repo https://github.com/lomik/graphite-clickhouse-tldr

This goals here are to experiment with a clustered Clickhouse setup
# Quick Start

```sh
git clone https://github.com/jbradleynh/graphite-clickhouse-tldr
cd graphite-clickhouse-tldr
docker-compose build
docker-compose up
```
Open http://127.0.0.1:3000/ in browser

### Mapped Ports

Host | Container | Service
---- | --------- | -------------------------------------------------------------------------------------------------------------------
2003 |      2003 | [carbon receiver - plaintext](http://graphite.readthedocs.io/en/latest/feeding-carbon.html#the-plaintext-protocol)
2004 |      2004 | [carbon receiver - pickle](http://graphite.readthedocs.io/en/latest/feeding-carbon.html#the-pickle-protocol)
2006 |      2006 | [carbon receiver - prometheus remote write](https://prometheus.io/docs/prometheus/latest/configuration/configuration/#%3Cremote_write%3E)
2181 |      2181 | Zookeeper node 1
2182 |      2181 | Zookeeper node 2
2183 |      2181 | Zookeeper node 3
3000 |      3000 | Grafana Server
7070 |      7070 | carbonapi http endpoint
8001 |      8001 | clickhouse prometheus metrics endpoint
8002 |      8001 | clickhouse prometheus metrics endpoint