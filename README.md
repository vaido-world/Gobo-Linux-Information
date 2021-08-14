### Release

`curl vaido.world/gobo/xfce.bash | bash`

# Old Notes and Archives of information and research

CreatePackage # Gobo-Linux-Information

`curl https://vaido.world/Gobo-Linux-Information/vbox.bash | bash`

**https://github.com/gobolinux/Documentation/wiki/Running-under-VirtualBox**

http://download.virtualbox.org/virtualbox/5.2.44/

## xfce
[https://github.com/gobolinux/Recipes/issues/136#issuecomment-892838195](https://github.com/gobolinux/Recipes/issues/136#issuecomment-892838195)


## Search for DocBook

`grep -rnw '/' -e 'DocBook'`


https://github.com/gobolinux/Recipes/issues/136#issuecomment-892838195



`find / catalog`

```
find / catalog -not -path "/System/Kernel/*"  -not -path "/Programs/Python*" -not -path "/Programs/OpenSSL*"
```


```
find / -name "catalog"
/Data/Variable/lib/xml/catalog
/Data/Variable/run/rootfsbase/Data/Variable/lib/xml/catalog

```

```
nano /Data/Variable/lib/xml/catalog
```

```
root@LiveCD ~]     
find / -name "catalog.xml"
/Data/Variable/run/rootfsbase/Programs/DocBook-XSL-Stylesheets/1.79.1/share/xml/docbook/stylesheet/docbook-xsl/catalog.xml
/Programs/DocBook-XSL-Stylesheets/1.79.1/share/xml/docbook/stylesheet/docbook-xsl/catalog.xml

```

### Example
```
file:///Users/root/Desktop/file.txt
```

### Finished

#### This resolves only `could not find DocBook XSL Stylesheets in XML catalog`

```
<nextCatalog catalog="file:///Programs/DocBook-XSL-Stylesheets/1.79.1/share/xml/docbook/stylesheet/docbook-xsl/catalog.xml"/>
```


### Google Search Query

```
gtk-doc DocBook catalog.xml configure: error: could not find DocBook XML DTD V4.3 in XML catalog
```


Worth A try: https://trac.macports.org/ticket/17662

try to `nano /Data/Variable/run/rootfsbase/Data/Variable/lib/xml/catalog`

### New Google Query

`gtk-doc could not find DocBook XML DTD  in XML catalog -Stylesheets`

https://trac.macports.org/ticket/17560

https://lists.macports.org/pipermail/macports-tickets/2009-September/039793.html

## Removing locally the whole gtk-doc from configure script
https://mail.gnome.org/archives/gtk-osx-users-list/2015-January/msg00000.html


## `/opt` equals `/Programs`?
https://unix.stackexchange.com/questions/210770/which-linux-distribution-places-all-applications-in-opt/215734#215734


https://github.com/vaido-world/Gobo-Linux-Information/blob/0849f65ab180fa0e12c5a78935ac6624d1682a2b/config.log#L413


```
checking for pkg-config... /usr/bin/pkg-config
checking pkg-config is at least version 0.19... yes
checking for a Python interpreter with version >= 3.2... python3
checking for python3... /usr/bin/python3
checking for python3 version... 3.8
checking for python3 platform... linux
checking for python3 script directory... ${prefix}/lib/python3.8/site-packages
checking for python3 extension module directory... ${exec_prefix}/lib/python3.8/site-packages
checking for xsltproc... /usr/bin/xsltproc
checking for dblatex... no
checking for fop... no
configure: WARNING: neither dblatex nor fop found, so no pdf output from xml
checking for XML catalog... /Data/Variable/lib/xml/catalog
checking for xmlcatalog... /usr/bin/xmlcatalog
checking for DocBook XML DTD V4.3 in XML catalog... not found
configure: error: could not find DocBook XML DTD V4.3 in XML catalog
PrepareProgram: configure failed.
Compile: GTK-Doc 1.33.0 - Configuration failed.
```

https://raw.githubusercontent.com/gobolinux/Recipes/master/Git/2.29.2/Recipe


```
root@LiveCD ~]echo $goboShared
/usr/share
root@LiveCD ~]echo $XML_CATALOG_FILES
/Data/Variable/lib/xml/catalog
root@LiveCD ~]



```

It is possible to run Thunar File Manager by denying all the dependencies at first.  
Thunar also depends on DocBook, so it has the same issue as xfce.
`Compile thunar` 


## Removing this catalog xfce .configure seems to give some clues that it takes the catalog information from here.

`rm  /Data/Variable/lib/xml/catalog`


## Some Catalog tutorial
http://www.sagehill.net/docbookxsl/WriteCatalog.html


## Catalog example Working

```
<?xml version="1.0"?>
<!DOCTYPE catalog PUBLIC "-//OASIS//DTD Entity Resolution XML Catalog V1.0//EN" "http://www.oasis-open.org/committees/entity/release/1.0/catalog.dtd">
<catalog xmlns="urn:oasis:names:tc:entity:xmlns:xml:catalog">
  <rewriteSystem systemIdStartString="http://docbook.sourceforge.net/release/xsl/current/" rewritePrefix="file:///Programs/DocBook-XSL-Stylesheets/1.79.1/share/xml/docbook/stylesheet/docbook-xsl/"/>
  <rewriteURI uriStartString="http://docbook.sourceforge.net/release/xsl/current/" rewritePrefix="file:///Programs/DocBook-XSL-Stylesheets/1.79.1/share/xml/docbook/stylesheet/docbook-xsl/"/>
  <rewriteSystem systemIdStartString="http://docbook.sourceforge.net/release/xsl/1.79.1/" rewritePrefix="file:///Programs/DocBook-XSL-Stylesheets/1.79.1/share/xml/docbook/stylesheet/docbook-xsl/"/>
  <rewriteURI uriStartString="http://docbook.sourceforge.net/release/xsl/1.79.1/" rewritePrefix="file:///Programs/DocBook-XSL-Stylesheets/1.79.1/share/xml/docbook/stylesheet/docbook-xsl/"/>
  <delegatePublic publicIdStartString="-//OASIS//ENTITIES DocBook XML" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegatePublic publicIdStartString="-//OASIS//DTD DocBook XML" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateSystem systemIdStartString="http://www.oasis-open.org/docbook/" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateURI uriStartString="http://www.oasis-open.org/docbook/" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateSystem systemIdStartString="http://www.oasis-open.org/docbook/xml/4.1.2" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateSystem systemIdStartString="http://www.oasis-open.org/docbook/xml/4.2" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateSystem systemIdStartString="http://www.oasis-open.org/docbook/xml/4.3" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateSystem systemIdStartString="http://www.oasis-open.org/docbook/xml/4.4" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateURI uriStartString="http://www.oasis-open.org/docbook/xml/4.1.2" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateURI uriStartString="http://www.oasis-open.org/docbook/xml/4.2" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateURI uriStartString="http://www.oasis-open.org/docbook/xml/4.3" catalog="file:///Data/Variable/lib/xml/docbook"/>
  <delegateURI uriStartString="http://www.oasis-open.org/docbook/xml/4.4" catalog="file:///Data/Variable/lib/xml/docbook"/>
</catalog>

```


Before that: 
```
InstallPackage https://gobolinux.org/packages/017/Fuse--2.9.7--x86_64.tar.bz2
InstallPackage https://gobolinux.org/packages/017/UnionFS-Fuse--2.1--x86_64.tar.bz2
```
Removing all the Delegates in the `nano /Data/Variable/lib/xml/catalog`  
And   `Compile Docbook-xml-dtd` with skipping Compilation of existing packages.  
Also Confirming to overwrite the `/Data/Variable/lib/xml/catalog` (Seems to have scripts that add new Delegate entries)  


Source: https://lists.macports.org/pipermail/macports-tickets/2009-September/039793.html

## Starting startx with xfce
Quit the AwesomeWM  

`startxfce4`

https://www.google.com/search?client=firefox-b-d&q=how+to+launch+xfce

Incomplete Compilation and takes around 40 minutes  
However it is possible to get the cursor after opening Firefox Browser.  
https://github.com/vaido-world/Gobo-Linux-Information/blob/main/Successfull-docbook.log

## make startx launch xfce
https://forum.xfce.org/viewtopic.php?id=8261




https://wiki.xfce.org/faq#starting_xfce


### Resolve last build?

https://packages.debian.org/stretch/libpcre2-8-0

 

`configure: error: could not find DocBook XML DTD V4.3 in XML catalog`

This error does NOT happen due to version mismatch.    

This Error happens when the paths in the `/Data/Variable/lib/xml/catalog` are incorrectly pointed.  
To resolve this error, we have to remove the lines with incorrect paths and   
let the Docbook-xml-dtd scripts autogenerate them on Compilation.  

### How I found the affected file.
Before this error happens the XML catalog location is printed out like this:   

```
checking for XML catalog... /Data/Variable/lib/xml/catalog
```

Removing this file with the command `rm /Data/Variable/lib/xml/catalog`   

and re-running `Compile xfce` will let you see that this line changes to something like:  
```
checking for XML catalog... not found
```

That's how I suspected that `/Data/Variable/lib/xml/catalog` is actually the affected file to look up.  
The end.  


### Automating the problem resolvance
This script removes every line that contains strings `delegatePublic` `delegateSystem` `delegateURI`.  
And `Docbook-xml-dtd` autogenerates them again on Compilation.
```
#!/bin/bash
sed -i '/delegatePublic/c\' /Data/Variable/lib/xml/catalog  
sed -i '/delegateSystem/c\' /Data/Variable/lib/xml/catalog  
sed -i '/delegateURI/c\' /Data/Variable/lib/xml/catalog  
Compile Docbook-xml-dtd
```

### Manually removing the lines.
Open `/Data/Variable/lib/xml/catalog` File.  
Remove every single line that contains:   
* delegatePublic  
* delegateSystem  
* delegateURI  

Save the file.  
`Compile Docbook-xml-dtd` and let it autogenerate these fields with correct paths.  

### Manually removing lines using Nano Editor (Example)

![image](https://user-images.githubusercontent.com/21064622/128975155-9229e00f-45e9-4487-9d85-4f47bc20444e.png)  
`nano  /Data/Variable/lib/xml/catalog`  
`Use shift and keyboard arrow down button to select.`  
1. `CTRL + K`  - Remove selected text.
2. `CTRL + X`  - Close and Save
3. `y`         - Confirm Overwrite
4. `Enter`     - Confirm File Name




https://www.linuxfromscratch.org/blfs/view/10.0/gnome/vte.html  

Dependency: libpcre2  


#### libpcre2 Installation instructions
https://www.linuxfromscratch.org/blfs/view/10.0/general/pcre2.html   

https://github.com/gobolinux/Recipes/tree/master/PCRE

`Compile PCRE`



### Shutdown on AwesomeWM
`shutdown -h 0`



https://www.google.com/search?client=firefox-b-d&q=gobolinux+libblkid


Compile XFSProgs   
Compile utils-linux   


### Maybe resolves Screenshooter
: 
https://github.com/gobolinux/Recipes/blob/effe66610cad8f33b66634a9e3656a278a567e0b/XFCE/4.4.1/Resources/Dependencies#L19



### Create package out of Compiled source
https://gobolinux.org/scripts.html
https://github-wiki-see.page/m/gobolinux/Documentation/wiki/CreatePackage

### Precompiled packages in GoboLinux
http://gobolinux.org/packages/016/

### Text Editor
`Compile gedit` Did not workout

`Compile emacs`


### Create GoboLinux Package

```
#!/bin/bash

cd /Programs/
for d in */ ; do

    if [[ $d == *"XFCE"* ]]; then

    CreatePackage "$d"
	
    echo "$d"
fi

    
    
done

```

```
CreatePackage Programs/XFDesktop
CreatePackage Programs/XFConf
```


### Try to install `Compile gtk+ 2.0`
For `Compile xfce-utils`

https://github.com/gobolinux/Recipes/tree/master/GTK%2B


### Next time on XFCE Compilation
Remember to Copy the output of the errors and whole log  
Also Research what kind of packages are required in the XFCE.



### How to make dependency out of packages?
How will the packages be installed in a right order if the order is resolved by dependencie...   
And the Dependencies do not search for Packages in the Current Packages Location.   

I'll probably just copy to the packages location of the gobolinux and let dependency versioning sort out the things.


Make a package for each compiled dependency

### Scanning the log file and packing each dependency 
Generating the InstallPackage script that would resolve dependencies and install the software.



### List Programs by last modification `ls -ltr`



```
drwxr-xr-x 1 root root 100 Aug 13 08:26 Fuse
drwxr-xr-x 3 root root  80 Aug 13 08:26 UnionFS-Fuse
drwxr-xr-x 1 root root  60 Aug 13 08:28 DocBook-XML-DTD
drwxr-xr-x 3 root root  80 Aug 13 08:34 PCRE2
drwxr-xr-x 1 root root  60 Aug 13 08:43 Util-Linux
drwxr-xr-x 3 root root  80 Aug 13 08:45 LibXFCE4Util
drwxr-xr-x 3 root root  80 Aug 13 08:47 XFConf
drwxr-xr-x 4 root root 100 Aug 13 08:48 LibXFCE4UI
drwxr-xr-x 4 root root 100 Aug 13 08:51 EXO
drwxr-xr-x 4 root root 100 Aug 13 08:53 Garcon
drwxr-xr-x 3 root root  80 Aug 13 08:54 GTK-Doc
drwxr-xr-x 3 root root  80 Aug 13 08:55 LibGUdev
drwxr-xr-x 3 root root  80 Aug 13 08:56 LibWNCK
drwxr-xr-x 4 root root 100 Aug 13 08:59 XFCE4-Panel
drwxr-xr-x 3 root root  80 Aug 13 09:01 LibExif
drwxr-xr-x 4 root root 100 Aug 13 09:06 Thunar
drwxr-xr-x 3 root root  80 Aug 13 09:08 Thunar-Volman
drwxr-xr-x 3 root root  80 Aug 13 09:09 XFCE4-AppFinder
drwxr-xr-x 4 root root 100 Aug 13 09:10 UPower
drwxr-xr-x 4 root root 100 Aug 13 09:12 XFCE4-Power-Manager
drwxr-xr-x 3 root root  80 Aug 13 09:13 HwData
drwxr-xr-x 3 root root  80 Aug 13 09:14 LibWacom
drwxr-xr-x 3 root root  80 Aug 13 09:15 Check
drwxr-xr-x 3 root root  80 Aug 13 09:16 LibInput
drwxr-xr-x 3 root root  80 Aug 13 09:18 ISO-Codes
drwxr-xr-x 3 root root  80 Aug 13 09:19 LibXKlavier
drwxr-xr-x 4 root root 100 Aug 13 09:20 XFCE4-Settings
drwxr-xr-x 4 root root 100 Aug 13 09:22 XFCE4-Session
drwxr-xr-x 4 root root 100 Aug 13 09:24 VTE
drwxr-xr-x 3 root root  80 Aug 13 09:25 XFCE4-Terminal
drwxr-xr-x 3 root root  80 Aug 13 09:27 XFDesktop
drwxr-xr-x 3 root root  80 Aug 13 09:29 XFWM4
drwxr-xr-x 3 root root  80 Aug 13 09:30 XFWM4-Themes
drwxr-xr-x 3 root root  80 Aug 13 09:30 XFCE

```

CTRL + ALT + shift and select for Column mode selection using AwesomeWM in GitHub

```
CreatePackage Fuse
CreatePackage UnionFS-Fuse
CreatePackage DocBook-XML-DTD
CreatePackage PCRE2
CreatePackage Util-Linux
CreatePackage LibXFCE4Util
CreatePackage XFConf
CreatePackage LibXFCE4UI
CreatePackage EXO
CreatePackage Garcon
CreatePackage GTK-Doc
CreatePackage LibGUdev
CreatePackage LibWNCK
CreatePackage XFCE4-Panel
CreatePackage LibExif
CreatePackage Thunar
CreatePackage Thunar-Volman
CreatePackage XFCE4-AppFinder
CreatePackage UPower
CreatePackage XFCE4-Power-Manager
CreatePackage HwData
CreatePackage LibWacom
CreatePackage Check
CreatePackage LibInput
CreatePackage ISO-Codes
CreatePackage LibXKlavier
CreatePackage XFCE4-Settings
CreatePackage XFCE4-Session
CreatePackage VTE
CreatePackage XFCE4-Terminal
CreatePackage XFDesktop
CreatePackage XFWM4
CreatePackage XFWM4-Themes
CreatePackage XFCE

```

```
InstallPackage Fuse-*
InstallPackage UnionFS-Fuse-*
InstallPackage DocBook-XML-DTD-*
InstallPackage PCRE2-*
InstallPackage Util-Linux-*
InstallPackage LibXFCE4Util-*
InstallPackage XFConf-*
InstallPackage LibXFCE4UI-*
InstallPackage EXO-*
InstallPackage Garcon-*
InstallPackage GTK-Doc-*
InstallPackage LibGUdev-*
InstallPackage LibWNCK-*
InstallPackage XFCE4-Panel-*
InstallPackage LibExif-*
InstallPackage Thunar-*
InstallPackage Thunar-Volman-*
InstallPackage XFCE4-AppFinder-*
InstallPackage UPower-*
InstallPackage XFCE4-Power-Manager-*
InstallPackage HwData-*
InstallPackage LibWacom-*
InstallPackage Check-*
InstallPackage LibInput-*
InstallPackage ISO-Codes-*
InstallPackage LibXKlavier-*
InstallPackage XFCE4-Settings-*
InstallPackage XFCE4-Session-*
InstallPackage VTE-*
InstallPackage XFCE4-Terminal-*
InstallPackage XFDesktop-*
InstallPackage XFWM4-*
InstallPackage XFWM4-Themes-*
InstallPackage XFCE-*
ECHO Completed XFCE Installation.
ECHO Exit AwesomeWM and Type into terminal:   startxfce4
```


## XFCE Utils
`  Compile LibXFCEGUI4` https://askubuntu.com/questions/210210/pkg-config-path-environment-variable  
`Compile xfce-utils`  




## Convert Text File to Unix From Dos
https://stackoverflow.com/questions/16768776/convert-line-endings#comment52681661_16768848  
`tr -d '\15\32' < install.bash > install-file-with-unix-line-endings.bash`   


## No audio in xfce
https://forum.xfce.org/viewtopic.php?id=7499


I think installing xfce-mixer and toggling unmute might work.

The reason why compiling xfce from AwesomeWm the sound works is because AwesomeWM unmutes by default by setting volume
And this setting is transferred to the startxfce session.


This can be tested by starting AwesomeWM after XFCE installation and try to up the volume.

`Compile XFCE4-Mixer`

https://github.com/gobolinux/Recipes/tree/master/XFCE4-Mixer

### CD-ROM is not working
Unknown how to resolve for now.

### XFCE Version Installed.

```
root@LiveCD ~]xfce4-about -V
xfce4-about 4.14.1 (Xfce 4.14)

Copyright (c) 2008-2019
	The Xfce development team. All rights reserved.

Please report bugs to <https://bugzilla.xfce.org/>.

```

### XFCE Visual Reference
https://www.youtube.com/watch?v=9ABYlcmqQ-Q


### This is where the chrome gets installed.
```
cd /Programs/Google-Chrome-Stable/92.0.4515.131_1/chrome
```

### I tried chmod the google chrome, but that didn't help
root@LiveCD /Programs/Google-Chrome-Stable/92.0.4515.131_1/bin]chmod u+s google-chrome-stable 



### XFCE Extras 
Contains:  Xarchiver 
https://github.com/gobolinux/Recipes/blob/effe66610cad8f33b66634a9e3656a278a567e0b/XFCE-Extras/4.6.1/Resources/Dependencies
`Compile XFCE-Extras`

### How to run Chrome as Root


### xfce from source code
https://archive.xfce.org/xfce/4.14/src/

https://docs.xfce.org/xfce/building#choosing_your_xfce_version

https://docs.xfce.org/apps/start


https://docs.xfce.org/xfce/display_managers

https://www.xfce.org/about/tour46

https://docs.xfce.org/xfce/xfdesktop/advanced


### Updated XFCE Recipe (untested)
[![image](https://user-images.githubusercontent.com/21064622/129437893-acf7631f-c265-4610-a923-77f51826241b.png)
XFCE.zip](https://github.com/vaido-world/gobo/files/6986040/XFCE.zip)


```
# Recipe for version 4.12.0.0 by Hugo Barrocas <barrocas75@gmail.com>, on Qui Out 20 15:07:49 UTC 2016
# Based on recipe for version 4.6.1 by Jonas Karlsson <jonka750@student.liu.se>, on Mon Apr 20 10:08:56 CEST 2009
# Recipe (MakeRecipe) for XFCE by Jonas Karlsson <jonka750@student.liu.se>, on Fri Jun 2 23:48:33 CEST 2006
compile_version=2.0

# It's not a Meta recipe. All XFCE parts will be compiled separately, and can be updated individually. 
recipe_type=manifest       

# This url is just a dummy -- the Compile tool would not allow to make the recipe without it.
url="http://archive.xfce.org/xfce/4.12/src/xfce4-appfinder-4.12.0.tar.bz2" 

# Required to verify the integrity of the file after download.
file_size=459338
file_md5=0b238b30686388c507c119b12664f1a1



# Note: This is only a way of compiling all XFCE4 parts with one single command.
# What really matters in this recipe is its Dependencies list, 
# that includes all recipes needed to have a full XFCE build. (Hugo Barrocas)
```


### Text Editor

```
InstallPackage https://gobolinux.org/packages/017/Fuse--2.9.7--x86_64.tar.bz2
InstallPackage https://gobolinux.org/packages/017/UnionFS-Fuse--2.1--x86_64.tar.bz2
Compile GEdit
```

```
checking for DEP... configure: error: Package requirements (atk >= 1.13.0 	gtk+-2.0 >= 2.9.4) were not met:

No package 'gtk+-2.0' found

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables DEP_CFLAGS
and DEP_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.

PrepareProgram: configure failed.
Compile: Gail 1.22.3 - Configuration failed.

```




### Creating new Recipes
```
MakeRecipe XFCERecipe http://4.14

root@LiveCD master /Data/Compile/Recipes/XFCERecipe/4.14]ls
Recipe  Resources


root@LiveCD ~]Compile XFCERecipe
Already up to date.
Compile: Checking dependencies...
Compile: Compiling XFCERecipe version 4.14.
Compile: Running without dependency-based namespace (Runner not available).
--2021-08-14 10:17:05--  http://4.14/
Resolving 4.14 (4.14)... 4.0.0.14
Connecting to 4.14 (4.14)|4.0.0.14|:80... 
^CCompile: XFCERecipe 4.14 - Caught signal. Exiting...


```




# A working Google Chrome under Root using no sandbox
Maybe installing fuse packages helped the AwesomeWM to launch Chrome

```
InstallPackage ThirdPartyInstallers
InstallPackage: Locating a binary package for ThirdPartyInstallers ...
InstallPackage: Installing http://gobolinux.org/packages/016/ThirdPartyInstallers--2.1--x86_64.tar.bz2
InstallPackage: Press Enter to continue or Ctrl-C to cancel.

InstallPackage: Downloading package to /Data/Variable/tmp/ThirdPartyInstallers--2.1--x86_64.tar.bz2.
--2021-08-14 11:09:27--  http://gobolinux.org/packages/016/ThirdPartyInstallers--2.1--x86_64.tar.bz2
Resolving gobolinux.org (gobolinux.org)... 69.163.217.231
Connecting to gobolinux.org (gobolinux.org)|69.163.217.231|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 21023 (21K) [application/x-tar]
Saving to: ‘/Data/Variable/tmp/ThirdPartyInstallers--2.1--x86_64.tar.bz2’

/Data/Variable/tmp/ 100%[=================>]  20.53K   122KB/s    in 0.2s    

2021-08-14 11:09:27 (122 KB/s) - ‘/Data/Variable/tmp/ThirdPartyInstallers--2.1--x86_64.tar.bz2’ saved [21023/21023]

InstallPackage: Installing ThirdPartyInstallers, version 2.1.
InstallPackage: Uncompressing to /Programs...
UpdateSettings: No settings exist
SymlinkProgram: Symlinking ThirdPartyInstallers 2.1.
SymlinkProgram: Symlinking global settings...
SymlinkProgram: Symlinking tasks...
SymlinkProgram: Storing variable files...
SymlinkProgram: Symlinking libraries...
SymlinkProgram: Symlinking headers...
SymlinkProgram: Symlinking info...
SymlinkProgram: Updating info dir...
SymlinkProgram: Symlinking manuals...
SymlinkProgram: Symlinking executables...
SymlinkProgram: Processed 3 files.
SymlinkProgram: Symlinking wrappers...
SymlinkProgram: Symlinking libexec..
SymlinkProgram: Symlinking shared...
SymlinkProgram: Removing unused directories...
SymlinkProgram: Done.
InstallPackage: Checking dependencies...

CheckDependencies: Cpio is not installed.
CheckDependencies: Install official_package for Cpio 2.12 or skip this dependency? [I]Install/[S]Skip/[IA]Install All/[SA]Skip AllCA

CheckDependencies: Cpio is not installed.
CheckDependencies: Install official_package for Cpio 2.12 or skip this dependency? [I]Install/[S]Skip/[IA]Install All/[SA]Skip AllIA

CheckDependencies: Dpkg is not installed.
CheckDependencies: Dpkg 1.18.18 (official_package) will be Installed
CheckDependencies: RPM is not installed.
CheckDependencies: RPM 5.3.5 (official_package) will be InstalledInstallPackage: Downloading package to /Data/Variable/tmp/Cpio--2.12-r1--x86_64.tar.bz2.
--2021-08-14 11:09:46--  http://gobolinux.org/packages/016/Cpio--2.12-r1--x86_64.tar.bz2
Resolving gobolinux.org (gobolinux.org)... 69.163.217.231
Connecting to gobolinux.org (gobolinux.org)|69.163.217.231|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1573283 (1.5M) [application/x-tar]
Saving to: ‘/Data/Variable/tmp/Cpio--2.12-r1--x86_64.tar.bz2’

/Data/Variable/tmp/ 100%[=================>]   1.50M  1.18MB/s    in 1.3s    

2021-08-14 11:09:47 (1.18 MB/s) - ‘/Data/Variable/tmp/Cpio--2.12-r1--x86_64.tar.bz2’ saved [1573283/1573283]

InstallPackage: Installing Cpio, version 2.12.
InstallPackage: Uncompressing to /Programs...
UpdateSettings: No settings exist
SymlinkProgram: Symlinking Cpio 2.12.
SymlinkProgram: Symlinking global settings...
SymlinkProgram: Symlinking tasks...
SymlinkProgram: Storing variable files...
SymlinkProgram: Symlinking libraries...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Updating library database (ldconfig)...
SymlinkProgram: Symlinking headers...
SymlinkProgram: Symlinking info...
SymlinkProgram: Updating info dir...
SymlinkProgram: Symlinking manuals...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Conflict: /Programs/Tar/1.32/share/man/man8/rmt.8
SymlinkProgram: Processed 0 files.
SymlinkProgram: Symlinking executables...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Symlinking wrappers...
SymlinkProgram: Symlinking libexec..
SymlinkProgram: Symlinking shared...
SymlinkProgram: Conflict: /Programs/Tar/1.32/share/man/man8/rmt.8
SymlinkProgram: Processed 27 files.
SymlinkProgram: Removing unused directories...
SymlinkProgram: Done.
InstallPackage: Checking dependencies...
InstallPackage: Removing downloaded package /Data/Variable/tmp/Cpio--2.12-r1--x86_64.tar.bz2.
InstallPackage: Downloading package to /Data/Variable/tmp/Dpkg--1.18.18--x86_64.tar.bz2.
--2021-08-14 11:09:57--  http://gobolinux.org/packages/016/Dpkg--1.18.18--x86_64.tar.bz2
Resolving gobolinux.org (gobolinux.org)... 69.163.217.231
Connecting to gobolinux.org (gobolinux.org)|69.163.217.231|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2105680 (2.0M) [application/x-tar]
Saving to: ‘/Data/Variable/tmp/Dpkg--1.18.18--x86_64.tar.bz2’

/Data/Variable/tmp/ 100%[=================>]   2.01M  1.61MB/s    in 1.2s    

2021-08-14 11:09:59 (1.61 MB/s) - ‘/Data/Variable/tmp/Dpkg--1.18.18--x86_64.tar.bz2’ saved [2105680/2105680]

InstallPackage: Installing Dpkg, version 1.18.18.
InstallPackage: Uncompressing to /Programs...
UpdateSettings: No settings exist
SymlinkProgram: Symlinking Dpkg 1.18.18.
SymlinkProgram: Symlinking global settings...
SymlinkProgram: Symlinking tasks...
SymlinkProgram: Storing variable files...
SymlinkProgram: Symlinking libraries...
SymlinkProgram: Processed 6 files.
SymlinkProgram: Updating library database (ldconfig)...
SymlinkProgram: Correcting directory references...
SymlinkProgram: Symlinking headers...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Symlinking info...
SymlinkProgram: Updating info dir...
SymlinkProgram: Symlinking manuals...
SymlinkProgram: Processed 25 files.
SymlinkProgram: Processed 42 files.
SymlinkProgram: Processed 25 files.
SymlinkProgram: Symlinking executables...
SymlinkProgram: Processed 25 files.
SymlinkProgram: Symlinking wrappers...
SymlinkProgram: Symlinking libexec..
SymlinkProgram: Symlinking shared...
SymlinkProgram: Creating expanded directory 'tl'...
SymlinkProgram: Creating expanded directory 'LC_MESSAGES'...
SymlinkProgram: Processed 143 files.
SymlinkProgram: Removing unused directories...
SymlinkProgram: Done.
InstallPackage: Checking dependencies...
InstallPackage: Removing downloaded package /Data/Variable/tmp/Dpkg--1.18.18--x86_64.tar.bz2.
InstallPackage: Downloading package to /Data/Variable/tmp/RPM--5.3.5--x86_64.tar.bz2.
--2021-08-14 11:10:10--  http://gobolinux.org/packages/016/RPM--5.3.5--x86_64.tar.bz2
Resolving gobolinux.org (gobolinux.org)... 69.163.217.231
Connecting to gobolinux.org (gobolinux.org)|69.163.217.231|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 32142765 (31M) [application/x-tar]
Saving to: ‘/Data/Variable/tmp/RPM--5.3.5--x86_64.tar.bz2’

/Data/Variable/tmp/ 100%[=================>]  30.65M  3.23MB/s    in 10s     

2021-08-14 11:10:21 (2.94 MB/s) - ‘/Data/Variable/tmp/RPM--5.3.5--x86_64.tar.bz2’ saved [32142765/32142765]

InstallPackage: Installing RPM, version 5.3.5.
InstallPackage: Uncompressing to /Programs...
UpdateSettings: No settings exist
SymlinkProgram: Symlinking RPM 5.3.5.
SymlinkProgram: Symlinking global settings...
SymlinkProgram: Symlinking tasks...
SymlinkProgram: Storing variable files...
SymlinkProgram: Symlinking libraries...
SymlinkProgram: Processed 26 files.
SymlinkProgram: Updating library database (ldconfig)...
SymlinkProgram: Correcting directory references...
SymlinkProgram: Symlinking headers...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Symlinking info...
SymlinkProgram: Updating info dir...
SymlinkProgram: Symlinking manuals...
SymlinkProgram: Processed 2 files.
SymlinkProgram: Processed 7 files.
SymlinkProgram: Symlinking executables...
SymlinkProgram: Processed 5 files.
SymlinkProgram: Symlinking wrappers...
SymlinkProgram: Symlinking libexec..
SymlinkProgram: Symlinking shared...
SymlinkProgram: Creating expanded directory 'man8'...
SymlinkProgram: Processed 43 files.
SymlinkProgram: The program wishes to install files to these unmanaged locations:
/Data/Variable/lib/rpm
SymlinkProgram: Do you want to install the unmanaged files? [Y/n]
Y
SymlinkProgram: Installing unmanaged files...
SymlinkProgram: Removing unused directories...
SymlinkProgram: Done.
InstallPackage: Checking dependencies...

CheckDependencies: BeeCrypt is not installed.
CheckDependencies: Install official_package for BeeCrypt 4.2.1 or skip this dependency? [I]Install/[S]Skip/[IA]Install All/[SA]Skip AllIA

CheckDependencies: Neon is not installed.
CheckDependencies: Neon 0.30.0 (official_package) will be InstalledInstallPackage: Downloading package to /Data/Variable/tmp/BeeCrypt--4.2.1--x86_64.tar.bz2.
--2021-08-14 11:10:43--  http://gobolinux.org/packages/016/BeeCrypt--4.2.1--x86_64.tar.bz2
Resolving gobolinux.org (gobolinux.org)... 69.163.217.231
Connecting to gobolinux.org (gobolinux.org)|69.163.217.231|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 5624580 (5.4M) [application/x-tar]
Saving to: ‘/Data/Variable/tmp/BeeCrypt--4.2.1--x86_64.tar.bz2’

/Data/Variable/tmp/ 100%[=================>]   5.36M  2.13MB/s    in 2.5s    

2021-08-14 11:10:45 (2.13 MB/s) - ‘/Data/Variable/tmp/BeeCrypt--4.2.1--x86_64.tar.bz2’ saved [5624580/5624580]

InstallPackage: Installing BeeCrypt, version 4.2.1.
InstallPackage: Uncompressing to /Programs...
UpdateSettings: No settings exist
SymlinkProgram: Symlinking BeeCrypt 4.2.1.
SymlinkProgram: Symlinking global settings...
SymlinkProgram: Symlinking tasks...
SymlinkProgram: Storing variable files...
SymlinkProgram: Symlinking libraries...
SymlinkProgram: Processed 11 files.
SymlinkProgram: Updating library database (ldconfig)...
SymlinkProgram: Correcting directory references...
SymlinkProgram: Symlinking headers...
SymlinkProgram: Conflict: /Programs/LibMD/1.0.1/include/md4.h
SymlinkProgram: Conflict: /Programs/LibMD/1.0.1/include/sha1.h
SymlinkProgram: Conflict: /Programs/LibMD/1.0.1/include/sha256.h
SymlinkProgram: Conflict: /Programs/LibMD/1.0.1/include/md5.h
SymlinkProgram: Conflict: /Programs/LibMD/1.0.1/include/sha512.h
SymlinkProgram: Creating expanded directory 'c++'...
SymlinkProgram: Processed 62 files.
SymlinkProgram: Symlinking info...
SymlinkProgram: Updating info dir...
SymlinkProgram: Symlinking manuals...
SymlinkProgram: Symlinking executables...
SymlinkProgram: Symlinking wrappers...
SymlinkProgram: Symlinking libexec..
SymlinkProgram: Symlinking shared...
SymlinkProgram: Removing unused directories...
SymlinkProgram: Done.
InstallPackage: Checking dependencies...
InstallPackage: Removing downloaded package /Data/Variable/tmp/BeeCrypt--4.2.1--x86_64.tar.bz2.
InstallPackage: Downloading package to /Data/Variable/tmp/Neon--0.30.0-r1--x86_64.tar.bz2.
--2021-08-14 11:10:57--  http://gobolinux.org/packages/016/Neon--0.30.0-r1--x86_64.tar.bz2
Resolving gobolinux.org (gobolinux.org)... 69.163.217.231
Connecting to gobolinux.org (gobolinux.org)|69.163.217.231|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2208745 (2.1M) [application/x-tar]
Saving to: ‘/Data/Variable/tmp/Neon--0.30.0-r1--x86_64.tar.bz2’

/Data/Variable/tmp/ 100%[=================>]   2.11M  1.46MB/s    in 1.4s    

2021-08-14 11:10:59 (1.46 MB/s) - ‘/Data/Variable/tmp/Neon--0.30.0-r1--x86_64.tar.bz2’ saved [2208745/2208745]

InstallPackage: Installing Neon, version 0.30.0.
InstallPackage: Uncompressing to /Programs...
UpdateSettings: No settings exist
SymlinkProgram: Symlinking Neon 0.30.0.
SymlinkProgram: Symlinking global settings...
SymlinkProgram: Symlinking tasks...
SymlinkProgram: Storing variable files...
SymlinkProgram: Symlinking libraries...
SymlinkProgram: Processed 6 files.
SymlinkProgram: Updating library database (ldconfig)...
SymlinkProgram: Correcting directory references...
SymlinkProgram: Symlinking headers...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Symlinking info...
SymlinkProgram: Updating info dir...
SymlinkProgram: Symlinking manuals...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Processed 97 files.
SymlinkProgram: Symlinking executables...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Symlinking wrappers...
SymlinkProgram: Symlinking libexec..
SymlinkProgram: Symlinking shared...
SymlinkProgram: Processed 108 files.
SymlinkProgram: Removing unused directories...
SymlinkProgram: Done.
InstallPackage: Checking dependencies...
InstallPackage: Removing downloaded package /Data/Variable/tmp/Neon--0.30.0-r1--x86_64.tar.bz2.
InstallPackage: Removing downloaded package /Data/Variable/tmp/RPM--5.3.5--x86_64.tar.bz2.
InstallPackage: Removing downloaded package /Data/Variable/tmp/ThirdPartyInstallers--2.1--x86_64.tar.bz2.
root@LiveCD ~]cd Downloads
root@LiveCD ~/Downloads]ThirdPartyInstaller google-chrome-stable_current_amd64.deb 
ThirdPartyInstaller: Processing google-chrome-stable_current_amd64.deb
ThirdPartyInstaller: Program name is Google-Chrome-Stable
ThirdPartyInstaller: Extracting DEB payload.
ThirdPartyInstaller: Flattening directory structure.
ThirdPartyInstaller: Populating Resources.
ThirdPartyInstaller: Processing dependencies.
ThirdPartyInstaller: Searching the remote DEB database for the package providing fonts-liberation
ThirdPartyInstaller: Searching the remote DEB database for the package providing libasound2 >= 1.0.16
ThirdPartyInstaller: Searching the remote DEB database for the package providing libatk-bridge2.0-0 >= 2.5.3
ThirdPartyInstaller: Searching the remote DEB database for the package providing libatk1.0-0 >= 2.2.0
ThirdPartyInstaller: Searching the remote DEB database for the package providing libatspi2.0-0 >= 2.9.90
ThirdPartyInstaller: Searching the remote DEB database for the package providing libc6 >= 2.17
ThirdPartyInstaller: Searching the remote DEB database for the package providing libcairo2 >= 1.6.0
ThirdPartyInstaller: Searching the remote DEB database for the package providing libcups2 >= 1.4.0
ThirdPartyInstaller: Searching the remote DEB database for the package providing libcurl3-gnutls | libcurl3-nss | libcurl4 | libcurl3
ThirdPartyInstaller: Searching the remote DEB database for the package providing libdbus-1-3 >= 1.5.12
ThirdPartyInstaller: Searching the remote DEB database for the package providing libdrm2 >= 2.4.38
ThirdPartyInstaller: Searching the remote DEB database for the package providing libexpat1 >= 2.0.1
ThirdPartyInstaller: Searching the remote DEB database for the package providing libgbm1 >= 8.1~0
ThirdPartyInstaller: Searching the remote DEB database for the package providing libgcc1 >= 1:3.0
ThirdPartyInstaller: Searching the remote DEB database for the package providing libglib2.0-0 >= 2.39.4
ThirdPartyInstaller: Searching the remote DEB database for the package providing libgtk-3-0 >= 3.9.10 | libgtk-4-1
ThirdPartyInstaller: Searching the remote DEB database for the package providing libnspr4 >= 2:4.9-2~
ThirdPartyInstaller: Searching the remote DEB database for the package providing libnss3 >= 2:3.22
ThirdPartyInstaller: Searching the remote DEB database for the package providing libpango-1.0-0 >= 1.14.0
ThirdPartyInstaller: Searching the remote DEB database for the package providing libx11-6 >= 2:1.4.99.1
ThirdPartyInstaller: Searching the remote DEB database for the package providing libxcb1 >= 1.9.2
ThirdPartyInstaller: Searching the remote DEB database for the package providing libxcomposite1 >= 1:0.4.4-1
ThirdPartyInstaller: Searching the remote DEB database for the package providing libxdamage1 >= 1:1.1
ThirdPartyInstaller: Searching the remote DEB database for the package providing libxext6
ThirdPartyInstaller: Searching the remote DEB database for the package providing libxfixes3
ThirdPartyInstaller: Searching the remote DEB database for the package providing libxkbcommon0 >= 0.4.1
ThirdPartyInstaller: Searching the remote DEB database for the package providing libxrandr2
ThirdPartyInstaller: Searching the remote DEB database for the package providing libxshmfence1
ThirdPartyInstaller: Searching the remote DEB database for the package providing xdg-utils >= 1.0.2
ThirdPartyInstaller: Done.
root@LiveCD ~/Downloads]SymlinkProgram Google-Chrome-Stable
SymlinkProgram: Symlinking Google-Chrome-Stable 92.0.4515.131_1.
SymlinkProgram: Symlinking global settings...
SymlinkProgram: Symlinking tasks...
SymlinkProgram: Storing variable files...
SymlinkProgram: Symlinking libraries...
SymlinkProgram: Symlinking headers...
SymlinkProgram: Symlinking info...
SymlinkProgram: Updating info dir...
SymlinkProgram: Symlinking manuals...
SymlinkProgram: Processed 2 files.
SymlinkProgram: Symlinking executables...
SymlinkProgram: Processed 1 file.
SymlinkProgram: Symlinking wrappers...
SymlinkProgram: Symlinking libexec..
SymlinkProgram: Symlinking shared...
SymlinkProgram: Processed 7 files.
SymlinkProgram: The program wishes to install files to these unmanaged locations:
/opt/google
SymlinkProgram: Do you want to install the unmanaged files? [Y/n]
Y
SymlinkProgram: Installing unmanaged files...
SymlinkProgram: Removing unused directories...
SymlinkProgram: Done.
root@LiveCD ~/Downloads]google-chrome-stable
[25954:25954:0814/111256.609684:ERROR:zygote_host_impl_linux.cc(90)] Running as root without --no-sandbox is not supported. See https://crbug.com/638180.
root@LiveCD ~/Downloads]google-chrome-stable --no-sandbox
[26033:26033:0814/111304.136281:ERROR:browser_dm_token_storage_linux.cc(94)] Error: /etc/machine-id contains 0 characters (32 were expected).
[26033:26128:0814/111304.254036:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111304.254224:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26148:0814/111304.317417:ERROR:object_proxy.cc(622)] Failed to call method: org.freedesktop.DBus.Properties.Get: object_path= /org/freedesktop/UPower: org.freedesktop.DBus.Error.ServiceUnknown: The name org.freedesktop.UPower was not provided by any .service files
[26033:26148:0814/111304.317610:ERROR:object_proxy.cc(622)] Failed to call method: org.freedesktop.UPower.GetDisplayDevice: object_path= /org/freedesktop/UPower: org.freedesktop.DBus.Error.ServiceUnknown: The name org.freedesktop.UPower was not provided by any .service files
[26033:26148:0814/111304.317763:ERROR:object_proxy.cc(622)] Failed to call method: org.freedesktop.UPower.EnumerateDevices: object_path= /org/freedesktop/UPower: org.freedesktop.DBus.Error.ServiceUnknown: The name org.freedesktop.UPower was not provided by any .service files
mesa: for the   --simplifycfg-sink-common option: may only occur zero or one times!
mesa: for the   --global-isel-abort option: may only occur zero or one times!
[26126:26126:0814/111304.664286:ERROR:sandbox_linux.cc(374)] InitializeSandbox() called with multiple threads in process gpu-process.
[26033:26128:0814/111314.340478:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111314.340566:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673237:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673278:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673293:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673824:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673860:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673885:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673925:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673949:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673972:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.673996:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.674021:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.674044:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.674068:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.674092:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.674116:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.674141:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.674164:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.757632:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111351.757730:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111405.950230:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111405.950288:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111405.950316:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111407.590734:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111407.590851:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")
[26033:26128:0814/111407.590911:ERROR:bus.cc(393)] Failed to connect to the bus: Could not parse server address: Unknown address type (examples of valid types are "tcp" and on UNIX "unix")

```




#### Animations for XFCE 
https://www.xfce-look.org/p/1267839/


#### Possible Iso file name

xfce-gobolinux-gnu-linux-x86-x32.iso


##### Screen recorder for xfce
Needs to support keyboard bindingm

Obs 

Ffmpeg attached to keyboard binding


#### Sudo and su alternatives
https://superuser.com/questions/629819/alternative-for-sudo


### XFCE 4.16 review
https://www.debugpoint.com/2021/02/xfce-4-16-review/
