# Jumpscale 8 Home Page

starting point for jumpscale 8, has the story cards &amp; wiki starting points

#@todo
- put link to doc & main repo's
- 

features of jumpscale 8
- core structure is clean & modular & properly organized under j.clients, j.sal, ...
- documentation generated for all classes in js8 (there is a tool for that)
- ays fully working (At Your Service)
  - the core using nothing but ssh & git repo 
  - ays robot with telegram support
- logging & stats to redis aggregator
  - example code how to send captured info to mongodb & influxdb (called reality db) 
- agent controller 8 (with agent ofcourse)
- jsportal based on mongodb (no more osis)
  - jsportal support markdown as complete as confluence format
  - jsportal actor works server/client side (client generates doc automatically & client from other js8)
  - macro's to get to influxdb
- cuisine2 support
  - own version of cuisine which has lots of tools to work with remote/local nodes for system mgmt
- debugging of remote node running js8 on the 2 mode of operations
- building support for 10+ apps and put these apps in sandbox to be used with js8fs
- raft support: raft to python appserver (flask? / mongoengine models) (RAFT is description language for rest interfaces)


modes of operation
- js8 golang based filesystem (sandboxed mode), no install required #@todo doc better
- in developer mode (install in existing python 3 env)

remarks
- only support python 3.5+
- support +- any linux distro + mac osx (windows not yet)
