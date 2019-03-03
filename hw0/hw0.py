import os
from pathlib import Path
import time


home = str(Path.home())
os.chdir(home)

if os.path.exists("os_lab_0") == 1 & os.path.isdir("os_lab_0") == 1:
    os.chdir('os_lab_0')
else:
    os.mkdir("os_lab_0")
    os.chdir('os_lab_0')

os.system("touch ex1.txt ex2.txt ex3.py")				"""For Linux"""

"""For Windows
os.system("copy NUL 1.txt")
os.system("copy NUL 2.txt")
os.system("copy NUL 3.py")"""

for a in range(0, len(os.listdir())):
	print(os.listdir()[a] + " Last modified date: " + time.ctime(os.path.getmtime(os.listdir()[a])))

for i in os.listdir("."):
    if os.path.splitext(i)[1] == ".txt" :
        print("Find a txt: " + i)


