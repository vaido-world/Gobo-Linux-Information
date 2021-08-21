# Note: Was unable to launch startxfce4, startx worked well.
# Needs the log to be analyzed

InstallPackage https://gobolinux.org/packages/017/Fuse--2.9.7--x86_64.tar.bz2
InstallPackage https://gobolinux.org/packages/017/UnionFS-Fuse--2.1--x86_64.tar.bz2


sed -i '/delegatePublic/c\' /Data/Variable/lib/xml/catalog  
sed -i '/delegateSystem/c\' /Data/Variable/lib/xml/catalog  
sed -i '/delegateURI/c\' /Data/Variable/lib/xml/catalog
Compile Docbook-xml-dtd --no-dependencies --batch


Compile PCRE2  
Compile util-linux


# 4.14.1 version of XFConf does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFConf.tar.gz" -O
tar --extract --file="XFConf.tar.gz" --gzip --verbose
mv XFConf/* "/Data/Compile/Recipes/XFConf"

# 0.12.8 version of EXO does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/EXO.tar.gz" -O
tar --extract --file="EXO.tar.gz" --gzip --verbose
mv EXO/* "/Data/Compile/Recipes/EXO"

# 4.14.0 version of XFCE4-Panel does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE4-Panel.tar.gz" -O
tar --extract --file="XFCE4-Panel.tar.gz" --gzip --verbose
mv XFCE4-Panel/* "/Data/Compile/Recipes/XFCE4-Panel"


# 4.14.0 version of XFCE4-Settings does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE4-Settings.tar.gz" -O
tar --extract --file="XFCE4-Settings.tar.gz" --gzip --verbose
mv XFCE4-Settings/* "/Data/Compile/Recipes/XFCE4-Setting"

# 4.14.0 version of XFCE4-Session does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFCE4-Session.tar.gz" -O
tar --extract --file="XFCE4-Session.tar.gz" --gzip --verbose
mv XFCE4-Session/* "/Data/Compile/Recipes/XFCE4-Session"


# 4.14.1 version of XFDesktop does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFDesktop.tar.gz" -O
tar --extract --file="XFDesktop.tar.gz" --gzip --verbose
mv XFDesktop/* "/Data/Compile/Recipes/XFDesktop"

# 4.14.0 version of XFWM4 does not exist in the offical Recipes Repository. 
curl -L "https://github.com/vaido-world/GoboLinux-Recipe-XFCE/raw/main/XFWM4.tar.gz" -O
tar --extract --file="XFWM4.tar.gz" --gzip --verbose
mv XFWM4/* "/Data/Compile/Recipes/XFWM4"

Compile LibXFCE4Util 4.14.0 --no-dependencies
Compile XFConf 4.14.1 --no-dependencies
Compile LibXFCE4UI 4.14.1 --no-dependencies
Compile EXO 0.12.8 --no-dependencies
Compile Garcon 0.6.4 --no-dependencies
Compile GTK-Doc 1.33.0 --no-dependencies
Compile LibGUdev 234 --no-dependencies
Compile LibWNCK 3.36.0 --no-dependencies
Compile XFCE4-Panel 4.14.0 --no-dependencies 
Compile LibExif 0.6.21 --no-dependencies 
Compile Thunar 1.8.9 --no-dependencies 
Compile Thunar-Volman 0.9.5 --no-dependencies 
Compile XFCE4-AppFinder 4.14.0 --no-dependencies 
Compile UPower 0.99.11 --no-dependencies 
Compile XFCE4-Power-Manager 1.7.0 --no-dependencies
Compile HwData 0.315 --no-dependencies
Compile LibWacom 1.10 --no-dependencies
Compile Check 0.15.2 --no-dependencies
Compile LibInput 1.16.3 --no-dependencies
Compile ISO-Codes 3.69 --no-dependencies  
Compile LibXKlavier 5.3 --no-dependencies 
Compile XFCE4-Settings 4.14.0 --no-dependencies
Compile XFCE4-Session 4.14.0 --no-dependencies 
Compile VTE 0.60.3 --no-dependencies
Compile XFCE4-Terminal 0.8.9 --no-dependencies
Compile XFDesktop 4.14.1 --no-dependencies
Compile XFWM4 4.14.0 --no-dependencies
Compile XFWM4-Themes 1.0 --no-dependencies
Compile XFCE 4.14 --no-dependencies
# Tumbler 0.2.7 is missing
