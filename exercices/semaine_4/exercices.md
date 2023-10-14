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





