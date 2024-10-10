import os, shutil
user=os.getlogin()
ruta=f'C:\\Users\\{user}\\Desktop\\'
for i in range(1,101):
 nfolder=f"{ruta}folder_{i}"
 os.system(f"icacls {nfolder} /grant \"{user}:(R)\"")
 shutil.rmtree(nfolder)