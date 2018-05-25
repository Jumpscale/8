[![Stories in progress](https://badge.waffle.io/Jumpscale/home.png?label=state_inprogress&title=In%20Progress)](http://waffle.io/Jumpscale/home?label=state_inprogress)


# Jumpscale 9 Home Page

This home repository serves a starting point for people to find their way in all other repos in the JumpScale product organization.

- Product Owners: [Reem](https://github.com/rkhamis) and [Kristof](https://github.com/despiegk)
- Kanban:
  - [current work: 9.3.0](https://waffle.io/Jumpscale/home?milestone=9.3.0): Mid May 2018  
  - [unsorted work = no milestones](https://waffle.io/Jumpscale/home?milestone=none)  
- [Telegram](https://telegram.me/joinchat/Bb0WhAmxj5ZMhK2MZ7m2OQ)

# Roadmap

## 9.3.0 (is major upgrade)

- lots of bugfixes
- serious upgrade of ays
  - goal: more scalability
  - how: using tarantool as database & no longer threading model, use of out of process job manager
- much cleaner structure of the prefab modules (cleanup in namespaces)
- lots of refactoring of certain modules to follow better naming conventions
- cleaner DSL's = Domain Specific Language modules = our SAL's & Clients (they need to be all clean & easy to use & documented) : we will not be able to review all of them, but the ones we need for openvcloud will be looked at first
- further cleanup of SAL/Clients (more consistent naming & documentation)
- more consistent documentation
- zero-robot (beta) = replacement of AYS

## 9.4.0

[discussion on features on following link](https://docs.google.com/document/d/10XUccxVCZijrOuozt0S4OGkfl1zwf6UOxyQoBZTxcAY/edit)

# Table of contents
 - [Repos](#repos)
 - [Features](#features)
 - [Release Schedule](#roadmap)
 - [Documentation](#documentation)

## Repos:
**Code Repos**:
  - [bash](https://github.com/Jumpscale/bash)
  - [core9](https://github.com/Jumpscale/core9)
  - [lib9](https://github.com/Jumpscale/lib9)
  - [portal9](https://github.com/Jumpscale/portal9)  
  - [prefab9](https://github.com/Jumpscale/prefab9)
  - [portal9](https://github.com/Jumpscale/portal9)
  - [zero-robot](https://github.com/zero-os/0-robot) 
  - [recordchain](https://github.com/rivine/recordchain) : blockchain components using jumpscale as basis

**Tools Repos**:
- [AYS Build](https://github.com/Jumpscale/ays_build) . -> OUTDATED
- [Dev Process Robot](https://github.com/Jumpscale/ays_gig_github_dev_process) -> OUTDATED
- [Telegram Buisness Tool](https://github.com/Jumpscale/telegram_biztool)
- [go-raml](https://github.com/Jumpscale/go-raml)

**Miscellaneous**:
- [Dockers](https://github.com/Jumpscale/dockers)


## Features
- Restructuring code base to be more modular.
- Documentation generation
- ZeroRobot (state automation solution)
- JSPortal
- Prefab
- CI
- Built completely in docker. See how to get started [here](https://github.com/Jumpscale/developer)

## Remarks
- only support python 3.5+
- support +- any linux distro + mac osx (windows not yet)
  
## Documentation:

todo:*1 still all ok the links?

- To get started, see [bash](https://github.com/Jumpscale/bash)
- Core [docs](https://github.com/Jumpscale/core9/tree/master/docs)
- AYS [docs](https://github.com/Jumpscale/ays9/tree/master/docs)
- Prefab [docs](https://github.com/Jumpscale/prefab9/tree/master/docs)
- Portal [docs](https://github.com/Jumpscale/portal9/tree/master/docs)
