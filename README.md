# WatchDogs
## Juan Blanco Martín

### Tecnología usada:
Aplicación desarrollada con el framework **Flutter** y lenguaje **Dart**. IDE **Visual Studio Code** y control de versiones con **Github**.

### Objetivo: 
Denunciar públicamente los perros peligrosos que son paseados sin correa y/o sin bozal.

### Cómo:
Cuando se encuentre un perro con estas características la aplicación permitirá sacarle una foto. A la foto se le vinculará la ubicación y se publicará automáticamente en alguna red social (aún por determinar).
Además WatchDogs contará con un sistema de ranking, guardando en una base de datos en un servidor externo el usuario y la cantidad de perros denunciados. 

### Solución de  problemas:
- Cuando VSCode no detecta los packages de Flutter escribir en consola `` flutter packages get ``.
- Para conectar con Firebase debe usarse ``androidx`` para ello ``flutter create --androidx <new-project-path>``.
