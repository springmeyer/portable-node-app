# TileMill Portable

This is a minimal version of TileMill packaged for windows.

The goal is to be able to use TileMill with the least amount of 
administrator permissions and to be able to run it from anywhere
on your system you like, including from a usb drive.

Quickstart
==========

1) Extract tilemill-win.zip

You can extract/unzip it anywhere of your choosing
but do NOT try to run it from within the zip archive.

2) Find and install the install_me_first.exe

Installing this requires administrator priveleges, but only needs to be run once.

If you do not install it you will get an error when TileMill starts like: 

    "The application has failed to start because MSVCP100.dll was not found..."

This is the C++ 2010 runtime (vcredist_x86) and can also be downloaded from:

http://www.microsoft.com/download/en/details.aspx?id=5555

3) Then run TileMill by double clicking the 'start.bat'


### Details

After TileMill starts, a blocked firewall warning will pop up.

If you have admin you can allow access for TileMill's internal process:

    "Evented I/O for V8 Javascript".

If you do not have admin, Windows XP should still allow TileMill to work
and you should be able to ignore it.

But on Windows Vista/7/8 you must have administrative access at least once
to allow giving access for TileMill to the firewall by accepting this pop-up.
