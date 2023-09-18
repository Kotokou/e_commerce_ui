# E-Commerce UI App

UI E-commerce en Flutter basée sur un design Figma.

## Boilerplate Features:

- Splash
- Welcome
- Auth
- Home
- Theme
-

### Folder Structure

Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- constants/
|- utils/
|- views/
|- app.dart
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- constants - All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for `assets strings` and `local strings`.
2- util — Contains the utilities/common functions of your application.
3- views — Contains all the ui of your project, contains sub directory for each screen, and for each screen widgets folder for specific screen.
4- app.dart - All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
5- main.dart - This is the starting point of the application.
```

### Constants

```
constants/
|- asset.dart
|- local_strings.dart
```

### Utils

```
utils/
|- custom_images.dart
|- date
  |- date_time.dart
```

### VIEWS

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
views/
|- spalsh
   |- splash_screen.dart
|- auth
    |- auth_screen.dart
|- welcome
    |- welcome_screen.dart
|- theme
    |- app_theme.dart
    |- app_style.dart
|- home
    |- home_screen.dart
```
