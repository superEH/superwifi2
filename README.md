
- El proceso para exportar e importar una conexión WiFi no es nada complejo, ya que bastará con hacer lo siguiente:
```
Abrir la consola de comandos CMD
Ejecutar el comando netsh wlan show profiles para ver los perfiles creados
Ejecutar el comando netsh wlan export profile Nombre-Perfil-Deseado folder=Ruta-Exportación
Aquí sustituiremos Nombre-Perfil-Deseado y Ruta-Exportación por las que deseemos. Con esto ya hemos exportado el perfil que queremos a un fichero en formato XML. De esta forma ya habremos conseguido la exportación, por lo que ahora tocaría importarlo en el mismo equipo o en cualquier otro. El proceso lo haremos así:
Abrir la consola de comandos CMD
Ejecutar el comando netsh wlan add profile filename=Ruta-XML user=all .Aquí debemos sustituir el texto Ruta-XML por la ruta de nuestro fichero XML que hemos exportado en el paso 3 del proceso anterior.
```
