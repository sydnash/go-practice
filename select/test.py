import os
import subprocess

for i in range(0,10000):
	print i
	process = subprocess.Popen("p.exe", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
	(out, err) = process.communicate()
	retCode = process.returncode
	if retCode == 0:
		print out, err
		raise Exception("Invalid level!")
