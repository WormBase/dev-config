# WormBase Developer configuration

This repository is the place to share coding environment settings for
the WormBase project.

In general, we will strive to adhere to the most popular coding style
of a language we use to avoid having to create and maintain our own
per-language coding style guide(s).

## Prerequisites

 * [GNU stow][3]
   A Makefile is provided for convenience to setup and maintain
   configuration files from this repository.  
   By default, this will create symbolic links from this repository
   into in your $HOME directory, meaning that the settings will apply
   to all projects. This behaviour can be changed by setting the
   follow environment variable: `$WB_DEV_CONFIG_HOME` to a different
   path if you so wish (e.g On a per project basis).
   GNU stow is known by the package Name "stow" in most O/S package managers.

 * [editorconfig][1] 
   Once you've [added editorconfig support][2] to your editor, you can use the
   files in this repository.

 
## Install

## Quick-start

```bash

# show what "make install" will do.
make preview-install
make install
```

Type `make help` to see the available commands.

   
[1]: http://editorconfig.org/
[2]: http://editorconfig.org/#file-format-details
[3]: https://www.gnu.org/software/stow/manual/stow.html

 
 







