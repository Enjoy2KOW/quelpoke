# Pokémon Finder QuelPoke

## Description

Pokémon Finder est une application web permettant aux utilisateurs de découvrir le Pokémon qui correspond à leur prénom. 
En entrant simplement leur prénom dans l'interface, les utilisateurs verront une image et le nom du Pokémon associé affichés sur la page.

## Fonctionnement Global

L'application est développée en Go et utilise un routeur HTTP (`http.ServeMux`) pour gérer les requêtes web. 
Lorsqu'un utilisateur soumet son prénom via le formulaire, l'application génère un identifiant de Pokémon basé sur le prénom et récupère l'image correspondante via la PokeAPI. 
L'application affiche ensuite le Pokémon associé sur la page web.

L'interface utilisateur est minimaliste et présente le résultat de manière claire avec une image officielle du Pokémon et son nom.

### Détails Techniques

- **Backend** : Codé en Go, utilisant `http.ServeMux` pour router les requêtes HTTP.
- **Frontend** : Utilise un simple template HTML pour rendre la page web.
- **API externe** : Les images des Pokémon sont récupérées depuis la PokeAPI.

## Installation et Lancement

### Prérequis

- **Go** doit être installé sur la machine. Le téléchargement est disponible [ici](https://golang.org/dl/).
- **Docker** : Assurez-vous que Docker est installé et en cours d'exécution sur votre machine. Vous pouvez le télécharger [ici](https://www.docker.com/get-started).
- **Visual Studio** : Visual Studio doit être installé. Vous pouvez le télécharger [ici](https://visualstudio.microsoft.com/fr/downloads/).
- **Git** (facultatif) : Pour cloner ce dépôt si vous ne l'avez pas encore fait.

### Étapes

1. Cloner le dépôt (si ce n'est pas déjà fait)

2. Ouvrir le projet dans Visual Studio

3. Construire l'image Docker

docker build -t mon-image:latest .

4. Exécuter le conteneur Docker

docker run -d -p 8080:80 --name mon-conteneur mon-image:latest

5. Accéder à l'application

http://localhost:8080

6. Entrer le prénom dans le formulaire pour découvrir le Pokémon associé.

### Remarque

L'application utilise le port `8080` par défaut. S'assurer que ce port est disponible ou le modifier dans le fichier `main.go` si nécessaire.
