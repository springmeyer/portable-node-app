# TileStream Portable

This is portable app to read mbtiles.

 - Can be run from a usb drive
 - No dependencies or install needed, just uncompress and run
 - Works with minimal administrator permissions

Windows build: http://cl.ly/173Q060y0J0d

Mac OS X build: http://cl.ly/2Y180k1E2e3E

### Caveats

 - Don't try to run from within this archive, make sure to extract it
 - This app runs in your web browser: Please use Chrome or Firefox not IE

### Usage

1. Open the archive and read the README.txt
2. Extract the 'app' folder somewhere
3. Open the 'app' folder in its new location
4. Double-click the 'start-tilestream' file inside the 'app' folder
5. This will open a console and your web browser
6. Add 'mbtiles' to the `app/tiles` folder to view them
7. Stop the app by closing the console

### Troubleshooting

1. Page does not load

Try reloading the page in your browser.

2. Page still does not load

Find the open app console and look for errors: report them to dane@mapbox.com

3. After the app starts, a blocked firewall warning may pop up.

If you have admin you can allow access for:

    Evented I/O for V8 Javascript

If you do not have admin, Windows XP should still allow TileMill to work
and you should be able to ignore it.

But on Windows Vista/7/8 you must have administrative access at least once.

4. Missing C++ runtime

If you see an error like:

    The application has failed to start because MSVCP100.dll was not found...

Then double-click and install the 'vcredist_x86.exe'.

Installing this requires administrator priveleges, but only needs to be run once.

This is the C++ 2010 runtime (vcredist_x86) and can also be downloaded from:

http://www.microsoft.com/download/en/details.aspx?id=5555


### Developers

If you want to re-package this app first install node.js then do:

    git clone https://github.com/springmeyer/portable-node-app.git
    cd portable-node-app
    git clone https://github.com/mapbox/tilestream.git
    cd tilestream
    npm install
    cd ../
    # on windows
    build.bat
    # on mac
    ./build.sh
