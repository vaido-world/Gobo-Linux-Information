InstallPackage https://gobolinux.org/packages/017/Fuse--2.9.7--x86_64.tar.bz2
InstallPackage https://gobolinux.org/packages/017/UnionFS-Fuse--2.1--x86_64.tar.bz2


sed -i '/delegatePublic/c\' /Data/Variable/lib/xml/catalog  
sed -i '/delegateSystem/c\' /Data/Variable/lib/xml/catalog  
sed -i '/delegateURI/c\' /Data/Variable/lib/xml/catalog
Compile Docbook-xml-dtd --no-dependencies --batch


Compile PCRE2  
Compile util-linux


Compile LibXFCE4Util 4.14.0
Compile XFConf 4.14.4
Compile LibXFCE4UI 4.14.1
Compile EXO 0.12.11
Compile Garcon 0.6.4
Compile GTK-Doc 1.33.0
Compile LibGUdev 234
Compile LibWNCK 3.36.0
Compile XFCE4-Panel 4.14.4
Compile LibExif 0.6.21
Compile Thunar 1.8.15
Compile Thunar-Volman 0.9.5
Compile XFCE4-AppFinder 4.14.1
Compile UPower 0.99.11
Compile XFCE4-Power-Manager 1.7.0
Compile HwData 0.315
Compile LibWacom 1.10
Compile Check 0.15.2
Compile LibInput 1.16.3
Compile ISO-Codes 3.69
Compile LibXKlavier 5.3
Compile XFCE4-Settings 4.14.3
Compile XFCE4-Session 4.14.2
Compile VTE 0.60.3
Compile XFCE4-Terminal 0.8.9
Compile XFDesktop 4.14.4
Compile XFWM4 4.14.6
Compile XFWM4-Themes 4.10.0
Compile XFCE 4.14
