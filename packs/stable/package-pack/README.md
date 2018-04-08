## Package

Add the emacd package management stuff. Should probably put this pack at the beginning of the list of packs to install.

### init.el

Use the file `init.el` for your own configuration elisp. If this starts
getting unwieldy then you might want to break out the config into
separate files which you can store in the config directory.

### config

Files placed in the `config` dir may then be referenced and pulled into
your `init.el` via the fn `live-load-config-file`. For example, if you
have the file config/foo.el then you may load it in with:

    (live-load-config-file "foo.el")

### lib

NOTHING GOES HERE. The whole point of this pack is to do away with lib versions of packages that never get updated. 
