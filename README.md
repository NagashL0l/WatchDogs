# WatchDogs
## Juan Blanco Martín

### Tecnología usada:
Aplicación desarrollada con el framework **Flutter** y lenguaje **Dart**. IDE **Visual Studio Code** y **Android Studio**.

### Objetivo: 
Denunciar públicamente los perros peligrosos que son paseados sin correa y/o sin bozal.

### Cómo:
Cuando se encuentre un perro con estas características la aplicación permitirá sacarle una foto. A la foto se le vinculará la ubicación y se permitirá compartir en alguna red social.

### Documentación:
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
en el **android/build.gradle**, dentro de ``allprojects`` encima de ``repositories``.

- Para implementar la funcionalidad de la cámara sigo el siguiente tutorial: https://flutter.dev/docs/cookbook/plugins/picture-using-camera .

- La información para el uso de la función *Share* fue optenida de https://pub.dev/packages/share .

- Para la localización utilizo el package __geolocator__ https://pub.dev/packages/geolocator .
