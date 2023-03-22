
#### ¿Qué comandos necesita usar Fritz para clonar el repositiorio y ponerse al día con los commits hechos en su ausencia?
```console
git remote add origin /home/jovyan/repos/local
git pull origin master
git log
```
<br/><br/>

# Soluciones a asignación principal:
## Solución con git checkout:
Hacer que *master* apunte al último *commit* desado:
```console
git reset --hard [SHA-1 de static/screenMSG.txt]
```
Iterar los siguientes pasos para cada *commit* que se desea incluir:
```console
git checkout [SHA-1 del commit] :/
git *commit* -a -m [mensaje del commit]
```
Publicar los cambios:
```console
git push origin master --force 
```
\*Este método restaura el contenido pero cambia la autoría de los *commits*. Sería bueno reflejar eso en los mensajes nuevos.
<br/><br/>

## Solución con git revert:
Hacer que *master* apunte al último *commit* desado:
```console
git reset --hard [SHA-1 de static/screenMSG.txt]
```
Iterar para cada *commit* que se desea incluir:
```console
git cherry-pick [SHA-1 del commit]
```
Iterar para cada *commit* que se desea incluir:
```console
git revert [SHA-1 del commit] 
```
Publicar los cambios:
```console
git push origin master --force 
```
\* Es posible usar la bandera <span style="font-family: Consolas">**--no-commit**</span> para no introducir un *commit* nuevo que deja evidencia de que se hizo un *revert*. Esto puede ser bueno o malo, depende de si se valora más el ser conciso o el ser transparente.
<br/><br/>

## Solución con git rebase -i:
Hacer que *master* apunte al último *commit* desado:
```console
git reset --hard [SHA-1 de static/screenMSG.txt]
```
Abrir una terminal desde el Launcher. (Ctrl+Shift+L)\*<br/>
Asegurarse de estar en el directorio del área de trabajo de Fritz. <br/>
Comenzar una sección interactiva de git rebase:
```console
git rebase -i
```
Por cada *commit* que se desea incluír, añadir la siguiente línea:<br/> 
```console
pick [SHA-1 del commit deseado] 
```
Esto declara explícitamente que se debe incluir los *commits*.<br/><br/>
Añadir una línea que contenga:<br/> 
```console
drop [SHA-1 del commit no deseado]
```
Para excluir el *commit* no desado explícitamente.<br/><br/>
Publicar los cambios:
```console
git push origin master --force 
```
\*Esto permite a git rebase -i abrir el editor, cosa que no se puede hacer dentro de un cuaderno.
<br/><br/>

# Solución al extra:
```console
git pull --rebase origin master
```