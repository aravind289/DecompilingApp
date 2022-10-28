# DecompilingApp
### Creating an app and decompiling it using apktool and dex2jar.</br>
## Screenshot of output and application 
<img width="357" alt="image" src="https://user-images.githubusercontent.com/29579313/198747994-375095bc-ef5b-447e-b94f-a8dd38f9d107.png">

1. Created an application that save the characteristics of a person like weight , height and eye color.
2. The data is stored in firestore database.




<img width="1099" alt="image" src="https://user-images.githubusercontent.com/29579313/198748024-d1935c6a-d5b3-4fe3-8a6f-f0a56324dd9f.png">


3. On click of "retrieve user details" , all the data stored in database is retrieved.
4. Then an apk is build for the application.
5. After building the apk file , have used apktool ,dex2jar and jd-gui to decompile the apk file.

Task was to retrieve the strings (character of the person) from the decompiled code.
 Command to decompile using apktool 
 
apktool d &lt;app name.apk>

The string shown below was present in smali file.

<img width="683" alt="Screenshot 2022-10-28 at 5 21 53 PM" src="https://user-images.githubusercontent.com/29579313/198735220-88fb2e42-731d-4f11-9390-d70ba96f3931.png">

## What is smali file?

Smali is intended to serve as a basis for further analysis of Android applications and security implementation techniques.
Apktool decompiled the existing apk file into .xml and smali file.

But if you want to decompile further more and get the almost exact code , you can use dex2jar and jd-gui to extract the source code from the existing apk file.

### screenshot of the .class file .

<img width="887" alt="image" src="https://user-images.githubusercontent.com/29579313/198728071-bf66decd-7031-4c65-9e2c-d014c0e7fdf5.png">





