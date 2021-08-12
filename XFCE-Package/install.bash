InstallPackage https://gobolinux.org/packages/017/Fuse--2.9.7--x86_64.tar.bz2
InstallPackage https://gobolinux.org/packages/017/UnionFS-Fuse--2.1--x86_64.tar.bz2

      Compile LibXFCE4Util 4.14.0
    Compile XFConf 4.14.4
  Compile LibXFCE4UI 4.14.1
Compile EXO

InstallPackage "Garcon"



      sed -i '/delegatePublic/c\' /Data/Variable/lib/xml/catalog  
      sed -i '/delegateSystem/c\' /Data/Variable/lib/xml/catalog  
      sed -i '/delegateURI/c\' /Data/Variable/lib/xml/catalog
      Compile Docbook-xml-dtd --no-dependencies --batch

    Compile "GTK-Doc"
  Compile "LibGUdev"
    Compile "LibWNCK"
    
    Compile "glib"
  Compile "XFCE4-Panel"
Compile "Thunar"




curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFCE--4.14--x86_64.tar.bz2" -O
InstallPackage "XFCE--4.14--x86_64.tar.bz2"



curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/LibXFCE4UI--4.14.1--x86_64.tar.bz2" -O
InstallPackage "LibXFCE4UI--4.14.1--x86_64.tar.bz2"


curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFConf--4.14.4--x86_64.tar.bz2" -O
InstallPackage "XFConf--4.14.4--x86_64.tar.bz2"

curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFDesktop--4.14.4--x86_64.tar.bz2" -O
InstallPackage "XFDesktop--4.14.4--x86_64.tar.bz2"

curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFCE4-Session--4.14.2--x86_64.tar.bz2" -O
InstallPackage "XFCE4-Session--4.14.2--x86_64.tar.bz2"

curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFCE4-Settings--4.14.3--x86_64.tar.bz2" -O
InstallPackage "XFCE4-Settings--4.14.3--x86_64.tar.bz2"

curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFCE4-Terminal--0.8.9--x86_64.tar.bz2" -O
InstallPackage "XFCE4-Terminal--0.8.9--x86_64.tar.bz2"


curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFCE4-Power-Manager--1.7.0--x86_64.tar.bz2" -O
InstallPackage "XFCE4-Power-Manager--1.7.0--x86_64.tar.bz2"

curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFCE4-Panel--4.14.4--x86_64.tar.bz2" -O
InstallPackage "XFCE4-Panel--4.14.4--x86_64.tar.bz2"

curl -L "https://github.com/vaido-world/gobo/raw/main/XFCE-Package/XFCE4-AppFinder--4.14.1--x86_64.tar.bz2" -O
InstallPackage "XFCE4-AppFinder--4.14.1--x86_64.tar.bz2"


