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
