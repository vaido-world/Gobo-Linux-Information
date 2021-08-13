curl -L "https://github.com/vaido-world/gobo/raw/main/xfce.tar.gz" -O
tar -xzvf xfce.tar.gz
cd xfce
tr -d '\15\32' < install.bash > install-file-with-unix-line-endings.bash
bash install-file-with-unix-line-endings.bash
startxfce4
