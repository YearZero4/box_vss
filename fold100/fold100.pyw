import os
user=os.getlogin()
ruta=f'C:\\Users\\{user}\\Desktop\\'
for i in range(1,101):
 nfolder=f"{ruta}folder_{i}"
 try:
  os.makedirs(nfolder)
 except OSError:
  pass
 os.system(f"icacls {nfolder} /deny \"{user}:(R)\"")
