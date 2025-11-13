# Hide-Your-Pendrive-files-New-Method without any software
Hide your pendrice/SD card files new technique 
# Folder Locker 🔒🗂️

A simple Windows **Batch Folder Locker** script that lets you create, lock (hide), and unlock a folder using a password.  
⚠️ This is **not real encryption** — it just hides the folder using system attributes and a Control Panel CLSID trick.

---

## ✨ Features
- 🗂️ Create a protected folder (`Krishna` by default)
- 🔒 Lock (hide) the folder from File Explorer
- 🔓 Unlock it with a password (`Kaliya` by default)
- 🛠️ Works offline — no external tools needed
- 💡 Lightweight & simple (only a few lines of batch code)

---

## 📄 Script — `locker.bat`

``bat
@ECHO OFF
title Folder Locker
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Krishna goto MDLOCKER
:CONFIRM
echo Do you want to lock folder? (Y/N)
set /p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==N goto END
if %cho%==n goto END
echo Wrong choice.
goto CONFIRM
:LOCK
ren Krishna "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked 
goto End
:UNLOCK
echo Type Folder Password for unlock:
set/p "pass=>"
if NOT %pass%==Kaliya goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Krishna
echo Folder unlocked
goto End
:FAIL
echo Wrong password
goto end
:MDLOCKER
md Krishna
echo Krishna folder created
goto End
:End``


🚀 How to Use (Step-by-Step)
Create the script file

Open Notepad

Paste the above code

Save as → locker.bat

Choose Save as type: All Files

Run it

Double-click locker.bat

The first time you run it, it will create a folder called Krishna

Lock the folder

Run locker.bat again

Type Y and press Enter

The folder will disappear (hidden + renamed to a system Control Panel folder)

Unlock the folder

Run locker.bat again

It will ask for a password

Type the default password → Kaliya

The folder will reappear and become accessible again

To change password

Edit this line:

bat
Copy code
if NOT %pass%==Kaliya goto FAIL
Replace Kaliya with your new password.

🧠 How It Works (Behind the Scenes)
Step	Action	Description
1️⃣	if EXIST "Control Panel..." goto UNLOCK	Checks if the folder is already locked.
2️⃣	if NOT EXIST Krishna goto MDLOCKER	If the normal folder doesn’t exist, create it.
3️⃣	:CONFIRM	Asks whether you want to lock or not.
4️⃣	:LOCK	Renames the folder to Control Panel.{CLSID} and hides it using system attributes.
5️⃣	:UNLOCK	Prompts for password, then unhides and renames the folder back to Krishna.
6️⃣	:FAIL	Displays “Wrong password”.
7️⃣	:End	Ends the script.

💡 Notes
The CLSID {21EC2020-3AEA-1069-A2DD-08002B30309D} is a special Windows identifier for Control Panel, used here to disguise the folder.

The script uses attrib +h +s to hide and mark the folder as a system file.

The password check is case-sensitive.

⚠️ Limitations & Warnings
❌ Not secure: The password is stored as plain text in the .bat file. Anyone can read it.

⚙️ Easily bypassed: Hidden folders can be revealed by enabling Show hidden and protected operating system files in File Explorer.

💾 No encryption: It does not actually encrypt your files — only hides them.

If you need real security, use:

🔐 VeraCrypt

🔐 BitLocker

🧩 Folder Structure Example
Copy code
Folder-Locker/
├── locker.bat
├── README.md
└── LICENSE
🛠️ Troubleshooting
Folder not visible?

Go to File Explorer → View → check “Hidden items”.

Disable “Hide protected operating system files” to see it.

Password not accepted?

Make sure you type it exactly — it’s case-sensitive.

Script not working?

Right-click → “Run as Administrator”.

Make sure the folder is not open in another window when locking/unlocking.

🤝 Contributing
Feel free to fork and modify this script — just give credit.
Ideas for improving password security (e.g., hashed or external key) are welcome! 🙌

🧾 License
This project is open-source under the MIT License — use it freely and modify as you wish.

⚡ TL;DR
📝 Save as locker.bat

🗂️ Run once → creates folder

🔒 Press Y to lock

🔓 Type Kaliya to unlock

⚠️ Not encryption, just hiding.

Made with ❤️ by Krishna Rajput upx61.
