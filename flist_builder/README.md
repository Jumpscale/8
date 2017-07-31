# Flist Builder

To be able to create js9.1 flist to be used with zero-os node container you'll need to:

#### 1. Create ubuntu tar.gz archive with basic dependencies
```bash
curl https://raw.githubusercontent.com/Jumpscale/home/master/flist_builder/ubuntu_flist_builder.sh > /tmp/ubuntu_flist_builder.sh
sudo bash /tmp/ubuntu_flist_builder.sh
``` 
A new tar archive will be created in `/tmp` called `ubuntu.tar.gz`

#### 2. Create JS9 tar.gz
a. Connect to js9 container
```bash
ssh -tA root@localhost -p 2222
```
b. inside the js9 container generate the js9 files archive
```bash
curl https://raw.githubusercontent.com/Jumpscale/home/master/flist_builder/js9_flist_builder.py > /tmp/js9_flist_builder.py
python3 /tmp/js9_flist_builder.py
```
A new tar archive will be created in `/tmp` called `js9.tar.gz`

#### 3. Create the flist
You can use the [official hub](http://hub.gig.tech) to upload both created archives to generate flists then you can merge them to have a full flist to be run 

#### 4. To be able to create a new working js9 container on zero os node you can use zero-os client:
```python
from zeroos.core0 import client

cl = client.Client(host='<0-core-host-address>')
cl.container.create("<flist_url>", storage="<flist_storage_url>", 
    env={
        "PATH": "/opt/jumpscale9/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin", 
        "PYTHONPATH": "/opt/jumpscale9/lib/:/opt/code/github/jumpscale/core9/:/opt/code/github/jumpscale/prefab9/:/opt/code/github/jumpscale/ays9:/opt/code/github/jumpscale/lib9:/opt/code/github/jumpscale/portal9", 
        "HOME": "/root", 
        "LC_ALL":"C.UTF-8", 
        "LC_LANG":"UTF-8"
    }
)
```
