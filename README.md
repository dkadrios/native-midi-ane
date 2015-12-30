Open NativeMIDIWin project in Flash Builder and make your edits.
This is the C project which will produce the dll.  Make sure you're using the C/C++ profile in FB.
To build the dll, click on the "hammer" button (make sure it's set to 'release').
This will build the dll into the 'NativeMIDIWin\Release' folder.

To build the ane, switch to the NativeMIDI project and right click on build.xml and run as an ant script.
This will create NativeMIDI\build\NativeMIDI.ane
The ZenEdit AIR project will automatically pick up this file on the next build.


::::::::::: I THINK THE REST OF THIS IS OUT OF DATE :::::::::::

Now we need to rebuild the ANE.
Open the NativeMIDI project and make your edits. 
This will create NativeMIDI.swc in this folder.

Now we need extract the library.swf.
Copy and paste the swc file and rename extension to .zip
Open the zip and pull out the library.swf file to this folder, overwritting the one that is here.
Delete the zip file.

Now we are ready to rebuild the ANE.
Run the .bat file.
This should recreate NativeMIDI.ane

Now do a build of ZenEdit and it should have the ANE changes.  It automatically pulls the latest from this folder.