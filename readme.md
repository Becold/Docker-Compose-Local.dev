# Docker-compose

## Qu'est-ce que c'est ?

Mon environnement de développement web.  
Contient un docker-composer les containers :
 * apache et/ou nginx;
 * mysql;
 * maildev.

## Installation
1. Installez [Docker for Windows](https://docs.docker.com/engine/installation/windows/)
2. Dans les paramètres de Docker, partagez la partition où accueillera vos dossiers partagés (projets/siteweb, base de donnée mysql, ...)  

![Partage du disque E:](http://i.imgur.com/xypA89w.png?1)
3. Configurez les containers (voir partie Configuration)
4. Utilisez la commande `docker-compose up` 

## Configuration par défaut
#### docker-compose.yml
* web - Serveur Web (Apache par défaut)
  * Port: 80
  * `E:\Lab\Site` = Partage du dossier des site-web
  * `E:\Lab\Docker\web\php.ini` = Partage du fichier de config de PHP
  * `E:\Lab\Docker\web\sites` = Partage des virtualhost pour Apache
* db - Serveur Mysql
  * `E:\Lab\Docker\db_data` = Fichier brut des bases de données (permet de garder la persistance des données)
  * Mot de pass de Root : root
  * Port: 3306  (par défaut)
* maildev - Fake serveur Mail
  * Port: 1080
  
## Remerciements
 * Grafikart pour [Docker-Compose-Local.dev](https://github.com/Grafikart/Docker-Compose-Local.dev)
