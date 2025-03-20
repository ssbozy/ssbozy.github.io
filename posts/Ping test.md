---
title: Ping test with Google, Cloudflare and OpenDNS
date: 2018-04-01
---

# Ping test with Google, Cloudflare and OpenDNS

* Google : 8.8.8.8
* Cloudflare : 1.1.1.1
* OpenDNS : 208.67.222.222

```
[~] $ ping -c 5 8.8.8.8
PING 8.8.8.8 (8.8.8.8): 56 data bytes
64 bytes from 8.8.8.8: icmp_seq=0 ttl=59 time=11.374 ms
64 bytes from 8.8.8.8: icmp_seq=1 ttl=59 time=11.973 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=59 time=12.389 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=59 time=11.899 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=59 time=12.470 ms

--- 8.8.8.8 ping statistics ---
5 packets transmitted, 5 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 11.374/12.021/12.470/0.393 ms
[~] $ ping -c 5 1.1.1.1
PING 1.1.1.1 (1.1.1.1): 56 data bytes
64 bytes from 1.1.1.1: icmp_seq=0 ttl=57 time=16.286 ms
64 bytes from 1.1.1.1: icmp_seq=1 ttl=57 time=17.154 ms
64 bytes from 1.1.1.1: icmp_seq=2 ttl=57 time=15.848 ms
64 bytes from 1.1.1.1: icmp_seq=3 ttl=57 time=17.500 ms
64 bytes from 1.1.1.1: icmp_seq=4 ttl=57 time=16.461 ms

--- 1.1.1.1 ping statistics ---
5 packets transmitted, 5 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 15.848/16.650/17.500/0.598 ms
[~] $ ping -c 5 208.67.222.222
PING 208.67.222.222 (208.67.222.222): 56 data bytes
64 bytes from 208.67.222.222: icmp_seq=0 ttl=57 time=11.798 ms
64 bytes from 208.67.222.222: icmp_seq=1 ttl=57 time=12.642 ms
64 bytes from 208.67.222.222: icmp_seq=2 ttl=57 time=12.810 ms
64 bytes from 208.67.222.222: icmp_seq=3 ttl=57 time=11.734 ms
64 bytes from 208.67.222.222: icmp_seq=4 ttl=57 time=12.347 ms

--- 208.67.222.222 ping statistics ---
5 packets transmitted, 5 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 11.734/12.266/12.810/0.435 ms
```