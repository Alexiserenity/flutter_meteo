# Projet d'Application Météo

## Description
Le projet d'Application Météo est une application mobile développée en utilisant le framework Flutter. Elle permet aux utilisateurs de rechercher des villes et de consulter les prévisions météorologiques correspondantes. L'application utilise l'API Open-Meteo pour récupérer les données météorologiques en temps réel.

## Fonctionnalités principales
L'application comprend les fonctionnalités suivantes :

1. **Saisie d'une ville** : Les utilisateurs peuvent entrer le nom d'une ville dans un champ de texte et rechercher les prévisions météorologiques correspondantes.

2. **Liste de villes** : L'application affiche une liste de villes avec les prévisions météorologiques actuelles. Chaque élément de la liste affiche le nom de la ville, la température et la description du temps.

3. **Détail de la météo** : Lorsque les utilisateurs cliquent sur une ville de la liste, l'application affiche une page de détail avec des informations détaillées sur la météo de la ville, y compris la température, la vitesse du vent, l'humidité, etc.

## Technologies utilisées
Le projet utilise les technologies suivantes :

- **Flutter** : Un framework de développement d'applications multiplateformes basé sur le langage Dart.
- **BLoC** : Un modèle d'architecture de gestion d'état basé sur les streams, utilisé pour gérer l'état de l'application.
- **Requêtes réseau** : L'application effectue des requêtes HTTP pour récupérer les données météorologiques à partir de l'API Open-Meteo.
- **API Open-Meteo** : Une API qui fournit des données météorologiques en temps réel.

## Structure du projet
Le projet est organisé en plusieurs fichiers et dossiers :

- **lib** : Le dossier principal du projet contenant les fichiers sources.
    - **models** : Le dossier contenant les modèles de données, tels que `City.dart` et `WeatherData.dart`.
    - **bloc** : Le dossier contenant les fichiers liés au modèle BLoC, tels que `CityBloc.dart` et `CityEvent.dart`.
    - **screens** : Le dossier contenant les écrans de l'application, tels que `CityListScreen.dart` et `WeatherDetailScreen.dart`.
    - **services** : Le dossier contenant les fichiers de services, tels que `WeatherService.dart`, utilisés pour effectuer les requêtes HTTP.
    - **utils** : Le dossier contenant des fichiers utilitaires, tels que des fonctions d'analyse JSON ou des constantes.

## Installation
Pour exécuter le projet localement, suivez les étapes suivantes :

1. Assurez-vous d'avoir Flutter installé sur votre système. Vous pouvez le télécharger depuis le site officiel de Flutter.

2. Clonez le dépôt du projet :
   git clone https://github.com/votre-utilisateur/finalproject.git

3. Ouvrez le projet dans votre éditeur de code préféré.

4. Exécutez la commande suivante pour installer les dépendances :
   flutter pub get


5. Connectez votre appareil mobile ou lancez un émulateur.

6. Lancez l'application en utilisant la commande suivante :
flutter run

L'application devrait maintenant se lancer sur votre appareil ou votre émulateur.

## Conclusion
Le projet d'Application Météo est un exemple d'application mobile développée avec Flutter, utilisant l'API Open-Meteo pour obtenir les prévisions météorologiques en temps réel. Vous pouvez l'utiliser comme point de départ pour créer votre propre application météo personnalisée ou comme moyen d'apprentissage pour comprendre les concepts de Flutter et du modèle BLoC.
