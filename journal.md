# Journal de Bord

## Seance du 20 septembre

Creation du repo git pour le projet.

## [Exercices semaine 0](/semaine_0)

Exercices de creation d'une arborescence pour organiser des fichiers en dossiers avec les commandes shell. Ayant deja un peu manipule le shell, j'ai essaye d'ecrire des scripts pour automatiser chacune des actions. Cela fait donc 3 scripts : `move_to_dir.sh`, pour organiser les fichiers par type de fichier, `date_order.sh`, pour les organiser par date, et `place_order.sh` pour les organiser par lieu.

### [`move_to_dir.sh`](/semaine_0/Fichiers/scripts/move_to_dir.sh)

Pour ce premier script, j'ai essaye de me familiariser avec la commande `find`, dont je me suis deja servie quelques fois par le passe, mais de facon toujours assez sommaire. Je sais qu'utiliser `find (...) -exec (...)` me permet de faire des actions sur les fichiers que je cherche, en l'occurrence les deplacer.
Dans mon script, je commence d'abord par creer les dossiers ou je vais deplacer mes fichiers, puis j'utilise la commande find pour les selectionner en fonction de leur extension.
Je regrette de ne pas etre a l'aise avec l'utilisation des variables en Shell, car je pense qu'il aurait ete plus judicieux de boucler a travers toutes les extensions, et de creer automatiquement le dossier portant le nom de l'extension, pour ensuite deplacer automatiquement les fichiers a l'interieur, mais je n'ai pas reussi a le faire alors je me suis contentee de realiser cette etape manuellement, d'autant que cela aurait ete rendu plus complique par le fait que dans le dossier `img`, je devais placer plusieurs extensions differentes. Je n'ai pas non plus reussi a utiliser `find (...) -exec (...)` avec plusieurs extensions differentes a la fois, donc j'ai ecrit deux lignes pour deplacer les `.jpg` et le fichier `.bmp`

### [`date_order.sh`](/semaine_0/Fichiers/scripts/date_order.sh)

J'ai du faire face au meme probleme pour ce script : ne sachant pas comment boucler, detecter automatiquement la date et deplacer le fichier dans le bon dossier, j'ai egalement fait cette partie a la main, ce qui peut sembler un peu fastidieux etant donner que je dois repeter toutes les etapes deux fois. 
Le script, apres avoir ete lance, m'a affiche un message d'erreur, en me precisant que je ne peux pas deplacer le dossier `2016`(par exemple, mais c'etait la meme chose pour toutes les annees) dans un sous-dossier de lui-meme. Je n'avais pas prevu cette erreur, mais elle est plutot logique etant donne qu'avec `grep`, je selectionne tous les fichiers qui comportent `2016` dans leur nom, incluant le dossier lui-meme. J'aurais surement pu prevoir cette erreur dans le script, mais en l'occurrence, cela n'a pas pose probleme car je cherchais simplement a deplacer les fichiers. J'ai donc choisi de laisser mon script tel quel.

### [`place_order.sh`](/semaine_0/Fichiers/scripts/place_order.sh)

Mon dernier script ressemble beaucoup au precedent. Le probleme ici etait que toutes les images du Japon ne contenaient pas "Japon" dans leur nom : pour contourner cela, je suis partie du principe que les images etaient soit de Paris, soit du Japon. J'ai donc d'abord trie toutes les photos de Paris, puis place tout le reste dans le dossier Japon. J'ai fait une erreur dans un premier temps, j'avais ecrit `mv .`, en pensant que, comme pour `cp`, si je ne precise pas `-r`, la commande ne s'executerait pas sur les dossiers, mais c'est pourtant ce qu'il s'est passe. J'ai donc corrige mon scrit, car j'aurais du ecrire `mv *.*` pour ne selectionner que les fichiers. 
