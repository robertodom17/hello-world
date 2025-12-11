# Tarea 7
# Roberto Dominguez Vázquez

## Introducción
He optado por desarrollar la tarea en 4 fases o iteraciones.

- Iteración 1: Resuelvo el problema sin usar tags, vault ni roles.
- Iteración 2: Resuelvo el problema partiendo de la Iteración 1 e incorporo tags a la solución.
- Iteración 3: Resuelvo el problema partiendo de la Iteración 2 e incorporo vault a la solución.
- Iteración 4: Resuelvo el problema partiendo de la Iteración 3 e incorporo roles a la solución.

Adjunto un fichero comprimido que incluye 4 carpetas con cada una de las iteraciones.
## Versión 1: Estructura de carpetas con templates y host\_vars
He realizado la tarea en varias fases. En una primera fase no he trabajado con tags, vault ni roles. Sin embargo si he realizado las tareas fundamentales que se deben implementar.

En primer lugar he creado la estructura de carpetas siguiente:

![Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.001.png)

Ahora ejecuto el playbook (que hace el despliegue en srv1) y el resultado es el siguiente….

![Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.002.png)

Tras ejecutar el playbook (he verificado cada tarea por separado) muestro el resultado final en el navegador del host anfitrión…

![Interfaz de usuario gráfica, Aplicación, Tabla&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.003.png)

## Versión 2: Estructura de carpetas con templates y host\_vars. Además incorporamos tags.
Iteramos la Versión 1 incorporando tags.

En primer lugar he creado la estructura de carpetas siguiente:

![Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.004.png)

He incluido un fichero como\_usar\_tags.txt en el que propongo ejemplos de uso de los tags que he configurado en lamp\_v2.tml.

Ejemplo 1 de uso de tags en el que usamos un tag que permite configuraciones de la BBDD.

![Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.005.png)

Ejemplo 2 de uso de tags en el que usamos un tag que se ocupa de la lógica del despliegue del código de la aplicación.

![Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.006.png)

Por supuesto en cualquier caso el despliegue de la plantilla muestra que estamos trabajando con la versión 2 tal como se ve en index.php

![Interfaz de usuario gráfica, Tabla&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.007.png)
## Versión 3: Estructura de carpetas con templates y host\_vars. Además incorporamos tags y ficheros vault.

Iteramos la Versión 3 incorporando ficheros vault.

En primer lugar he creado la estructura de carpetas siguiente:

![Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.008.png)

Creo el fichero vars/secrets.yaml y lo ciframos con vault. Para ello uso el comando ansible-vault create vars/secrets.yml y dentro incluyo db\_pass con la clave del usuario de la BBDD. Al ejecutar este comando se cifra la clave con AES.

Tras modificar el fichero playbook para incluir una referencia al fichero vault lo utilizamos con el comando siguiente que nos pide la clave que hemos puesto antes (en mi caso esa clave es ansible): 

ansible-playbook lamp\_v3.yml --ask-vault-pass

![Imagen que contiene Aplicación&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.009.png)

Por supuesto en cualquier caso el despliegue de la plantilla muestra que estamos trabajando con la versión 3 tal como se ve en index.php

![Interfaz de usuario gráfica, Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.010.png)

## Versión 4: Estructura de carpetas con templates y host\_vars. Además incorporamos tags, ficheros vault y roles.

Iteramos la Versión 4 incorporando roles.

En primer lugar he creado la estructura de carpetas siguiente:

![Imagen que contiene Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.011.png)

Ahora restruturo el playbook en una estructura mas compleja en la carpeta roles. Ahora ejecuto el playbook que también incluye un fichero vault del mismo modo que la iteración anterior.

ansible-playbook lamp\_v4.yml --ask-vault-pass

![Texto&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.012.png)

Por supuesto en cualquier caso el despliegue de la plantilla muestra que estamos trabajando con la versión 4 tal como se ve en index.php

![Interfaz de usuario gráfica, Texto, Aplicación&#x0A;&#x0A;El contenido generado por IA puede ser incorrecto.](/images/Aspose.Words.3425e34c-12dd-47a1-b11a-2f13e3316870.013.png)

