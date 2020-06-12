## wireless_adb_file_push
<br>
### usage
<ol>
  <li>install adb</li>
  <li>connect your Android phone to your laptop with a USB</li>
  <li>clone this in a directory and run wireless_adb_file_push.sh</li>
  <li>the script connects wirelessly to your phone, saves the phone's IP address in ip.txt for future use and copies the file/directory you enter into the Downloads folder in your phone</li>
  <li>if you want to push a new file or new changes to the file you pushes, you can run the script without connecting via USB as long as ip.txt is in the same directory. If your IP address changes, rm ip.txt, connect with USB and run the script again</li>
