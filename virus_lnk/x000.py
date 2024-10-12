import os, subprocess

directorio = input("RUTA DEL DIRECTORIO DONDE SE ENCUENTRAN LOS LNK -> ")
def eliminar_virus_lnk():
 for root_dir, dirs, files in os.walk(directorio):
  for file in files:
   ruta_archivo = os.path.join(root_dir, file)
   if ruta_archivo.endswith('.lnk'):
    try:
     os.remove(ruta_archivo)
    except Exception as e:
     print(f'Error al eliminar {ruta_archivo}: {e}')
   else:
    command = f'attrib -h -s "{ruta_archivo}"'
    print(ruta_archivo)
    process = subprocess.run(command, shell=True)
    if process.returncode != 0:
     print(f'Error al ejecutar el comando: {command}')
 input("FINALIZO EL SCRIPT...")
eliminar_virus_lnk()
