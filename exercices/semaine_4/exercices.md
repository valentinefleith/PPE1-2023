# Seance du 11 octobre

## Les pipelines

### Exercices a faire en classe

- **Compter le nombre d'annotations par annee (2016, 2017, 2018)** :

`cat ann/2016/*/*.ann | wc -l`
Resultat de la commande : 9442

`cat ann/2017/*/*.ann | wc -l`
Resultat de la commande : 7179

`cat ann/2018/*/*.ann | wc -l`
Resultat de la commande : 7561

- **Limiter ce comptage aux lieux** :

`grep "Location" ann/*/*/*.ann | wc -l`
Resultat de la commande : 8720

- **Sauvegarder ces resultats dans un seul fichier :**

`cat ann/2016/*/*.ann | wc -l > results.txt`

`cat ann/2017/*/*.ann | wc -l >> results.txt`

`cat ann/2018/*/*.ann | wc -l >> results.txt`

`grep "Location" ann/*/*/*.ann | wc -l >> results.txt`

- **Etablir le classement des lieux les plus cites** :

`grep "Location" ann/*/*/*.ann | cut -f 3 | sort | uniq -c | sort -nr | head -n 20`

### Suite des exercices a faire a la maison

- **Trouver les 10 annotations les plus frequentes pour votre mois de naissance, toutes annees confondues** :

`cat ann/*/07/*.ann | cut -f 3 | sort | uniq -c | sort -nr | head -n 10`

## Introduction aux scripts

- **Ecrire un script qui donne le nombre de location par annee**

script : [`location_par_annee.sh`](location_par_annee.sh)

- **Ecrire un script qui compte les entites pour une annee et un type d'entite donnes en argument du programme**

script : [`compte_entites_args.sh`](compte_entites_args.sh)

- **Ecrire un second script qui lance le script precedent 3 fois, une fois pour chaque annee en prenant le type d'entite en argument** :

script : [`compte_entites2.sh`](compte_entites2.sh)

- **Ecrire un script pour etablir le classement des lieux les plus cites** :

Arguments : annee, mois, nombre de lieux a afficher. Accepter les * pour l'annee et le mois.

script : [`exercice2.sh`](exercice2.sh)

