# TLC Doodlestudent 

Le README original de l'application est disponible [ici](https://github.com/francois-le-roy/doodlestudent/blob/main/README.original.md)

Le but de ce tp est de déployer l'application doodlestudent en cloud computing plus précisément sur une vm de l'istic avec chaque service dans un container.

J'ai réalisé à partir du Dockerfile.jvm fourni un premier container pour le back. Une fois celui-ci construit on se sert de son image dans le fichier docker-compose.yml (voir buildAndRun.sh).

Ensuite on a construit l'image du serveur nginx à l'aide debunkerized-nginx. A la base j'avais un docker qui faisait tourner le front sur 4200 et le nginx redirigeait vers lui. Mais au final sur les conseils avisés de mr Barais j'ai tout d'abord utilisé une étape de build avec une image node pour servir les fichiers directements sur le nginx dans /www.

Petit diagramme de la réalisation actuelle:

![](https://i.imgur.com/eUv7uyR.png)

La dernière étape consiste à utiliser l'outil compose pour correctement déployer et rediriger nos containers emsemble (au passage on modifie la configuration nginx qui s'occupe de 'router', en fonction des urls, sur les containers).

![](https://i.imgur.com/AYU7sqs.png)

- L'utilisateur demande au navigateur d'aller sur le domaine avec http ou https.
- Le navigateur redirige sur la machine virtuel via DNS et passe le firewall.
- Le nginx redirige vers 443 https si 80 http sinon il sert selon l'url les fichiers compilés (css js html), le pad, les appels à l'api.
- Le back (api) communique avec la base de donnée, celle ci est reconne via son nom de docker db.
