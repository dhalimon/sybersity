import os
import sys
input = input("Name to ban?")
if sys.platform[:3] == 'win':
    with open("C:\Windows\System32\drivers\etc\hosts", "w") as fd:
        fd.write("0.0.0.0 " + input + "\n")
        print ('on Windows')
else:
    fd = open("/etc/hosts", "a")
    fd.write("0.0.0.0 " + input + "\n")
    print('on Linux')

