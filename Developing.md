
## Setup

Set up directories

```sh
git clone https://github.com/springmeyer/portable-tilemill.git
cd portable-tilemill
git clone https://github.com/mapbox/tilemill.git
```

Build TileMill.exe and the node app:

```
cd tilemill-win-launcher
vcbuild
cd ../
cd tilemill
npm install
cd ../
```

Now package it all:

Edit the `build.bat` settings and then run it:

```
build.bat
```



