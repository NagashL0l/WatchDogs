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
- Si la migración a ``androidx`` falla se puede seguir esta guía: https://medium.com/comunidad-flutter/c%C3%B3mo-solucionar-la-incompatibilidad-de-androidx-en-flutter-8bce978748b9 
- Al abrir el proyecto en otro ordenador puede ser que se necesite cambiar en el **app/build.gradle** ``minSdkVersion 21``, después ``flutter clean``.
- Para solucionar problema con el **build.gradle debubMode** copiar 
```dart
configurations.all {
        resolutionStrategy.eachDependency { DependencyResolveDetails details ->
            def requested = details.requested
            if (requested.group == 'com.google.firebase') {
                details.useVersion "15.+"
            }
        }
    }
```
en el **android/build.gradle**.
