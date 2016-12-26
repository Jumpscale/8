# Jumpscale 8 Home Page

This home repository serves a starting point for people to find their way in all other repos in the JumpScale product organization.

- owner of these repos = Reem and Kristof (product owners)
- [Kanban](https://waffle.io/Jumpscale/home)
- [Telegram](https://telegram.me/joinchat/Bb0WhAmxj5ZMhK2MZ7m2OQ)


## Repos:
**Code Repos**:
- [JumpScale8 Core](https://github.com/Jumpscale/jumpscale_core8)
- [Jumpscale8 Portal](https://github.com/Jumpscale/jumpscale_portal8)
- [AYS8](https://github.com/Jumpscale/ays_jumpscale8)
- [JSCockpit](https://github.com/Jumpscale/jscockpit)

**Tools Repos**:
- [AYS Build](https://github.com/Jumpscale/ays_build)
- [Dev Process Robot](https://github.com/Jumpscale/ays_gig_github_dev_process)
- [Telegram Buisness Tool](https://github.com/Jumpscale/telegram_biztool)
- [go-raml](https://github.com/Jumpscale/go-raml)

**Example Repos**:
- [AYS8 test env](https://github.com/Jumpscale/jumpscale_ays8_testenv)

**Miscellaneous**:
- [Dockers](https://github.com/Jumpscale/dockers)
- [Atom plugins](https://github.com/Jumpscale/atom_plugins)


## Features of JumpScale 8
- Core structure is clean & modular & properly organized under j.clients, j.sal, ...
- Documentation generated for all classes in js8 (there is a tool for that)
- AYS fully working (At Your Service)
  - the core using nothing but ssh & git repo
  - ays robot with telegram support
- logging & stats to redis aggregator
  - example code how to send captured info to mongodb & influxdb (called reality db)
- agent controller 8 (with agent ofcourse)
- jsportal based on mongodb (no more osis)
  - jsportal support markdown as complete as confluence format
  - jsportal actor works server/client side (client generates doc automatically & client from other js8)
- JSCuisine support
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

## Milestones:
- [8.1.0](https://waffle.io/Jumpscale/home?milestone=8.1.0)
- [8.2.0](https://waffle.io/Jumpscale/home?milestone=8.2.0)
- [8.2.1](https://waffle.io/Jumpscale/home?milestone=8.2.1)


## Documentation:

- [JumpScale8 Core](https://gig.gitbooks.io/jumpscale-core8/content/)
- [JumpScale8 Portal](https://gig.gitbooks.io/jumpscale-portal8/content/)
- [Cockpit](https://gig.gitbooks.io/cockpit/content/)
