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

- Go doit être installé sur la machine. Le téléchargement est disponible [ici](https://golang.org/dl/).

### Étapes

1. Cloner ce dépôt sur la machine locale :
   ```bash
   git clone https://storage.googleapis.com/quelpoke/quelpoke.zip
   cd votre-repertoire
   ```

2. Lancer le serveur Go :
   ```bash
   go run main.go
   ```

3. Accéder à l'application via le navigateur à l'URL suivante :
   ```
   http://localhost:8080
   ```

4. Entrer le prénom dans le formulaire pour découvrir le Pokémon associé.

### Remarque

L'application utilise le port `8080` par défaut. S'assurer que ce port est disponible ou le modifier dans le fichier `main.go` si nécessaire.
