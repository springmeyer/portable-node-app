# TileStream Portable

This is portable app packaged for windows.

 - Works with minimal administrator permissions
 - Can be run from a usb drive

### Caveats

 - Don't try to run from within this zip archive, make sure to extract it

### Usage

1. Extract the archive to your desired location
2. Start the app by double-click the `start.bat`
3. This will open a console and your web browser
4. Stop the app by closing the console

### Troubleshooting

1. If your web browser opens but the page does not load try refreshing it

2. If the page still does not load, look at the console for errors

3. Missing C++ runtime

If you see an error like:

    The application has failed to start because MSVCP100.dll was not found...

Then double-click and install the 'vcredist_x86.exe'.

Installing this requires administrator priveleges, but only needs to be run once.

This is the C++ 2010 runtime (vcredist_x86) and can also be downloaded from:

http://www.microsoft.com/download/en/details.aspx?id=5555

4. After the app starts, a blocked firewall warning may pop up.

If you have admin you can allow access for:

    Evented I/O for V8 Javascript

If you do not have admin, Windows XP should still allow TileMill to work
and you should be able to ignore it.

But on Windows Vista/7/8 you must have administrative access at least once.
