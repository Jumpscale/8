from js9 import j


def main():
    """
    @param: flistName name of the flist to be created
    """
    prefab = j.tools.prefab.local
    print("Copying jumpscale bins")
    prefab.core.file_copy('/usr/local/bin/js9', '$BINDIR')
    prefab.core.file_copy('/usr/local/bin/ays', '$BINDIR')
    paths = ["/usr/lib/python3/dist-packages", "/usr/lib/python3.5/", "/usr/local/lib/python3.5/dist-packages"]
    excludeFileRegex = ["-tk/", "/lib2to3", "-34m-", "lsb_release"]
    excludeDirRegex = ["/JumpScale", "config-x86_64-linux-gnu", "pygtk"]
    dest = j.sal.fs.joinPaths(prefab.core.dir_paths['BASEDIR'], 'lib')
    print("Copying python libs")
    for path in paths:
        j.tools.sandboxer.copyTo(path, dest, excludeFileRegex=excludeFileRegex, excludeDirRegex=excludeDirRegex)
    base = prefab.core.dir_paths['BASEDIR']
    prefab.core.file_copy('/usr/bin/python3.5', '$BINDIR')
    j.sal.fs.symlink("%s/bin/python3.5" % base, "%s/bin/python3" % base)
    print("Sandboxing python")
    j.tools.sandboxer.sandboxLibs("%s/lib" % base, recursive=True)
    j.tools.sandboxer.sandboxLibs("%s/bin" % base, recursive=True)
    cmd = "cd /; tar -czf /tmp/js9.tar.gz opt"
    prefab.core.run(cmd)


if __name__ == '__main__':
    main()
