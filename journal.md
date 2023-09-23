# Journal de Bord

## Seance du 20 septembre

Creation du repo git pour le projet.

## [Exercices semaine 0](/semaine_0)

Exercices de création d'une arborescence pour organiser des fichiers en dossiers avec les commandes shell. Ayant déjà un peu manipulé le shell, j'ai essayé d'écrire des scripts pour automatiser chacune des actions. Cela fait donc 3 scripts : `move_to_dir.sh`, pour organiser les fichiers par type de fichier, `date_order.sh`, pour les organiser par date, et `place_order.sh` pour les organiser par lieu.

### [`move_to_dir.sh`](/semaine_0/Fichiers/scripts/move_to_dir.sh)

Pour ce premier script, j'ai essayé de me familiariser avec la commande `find`, dont je me suis deja servie quelques fois par le passé, mais de façon toujours assez sommaire. Je sais qu'utiliser `find (...) -exec (...)` me permet de faire des actions sur les fichiers que je cherche, en l'occurrence les déplacer.
Dans mon script, je commence d'abord par créer les dossiers où je vais déplacer mes fichiers, puis j'utilise la commande find pour les sélectionner en fonction de leur extension.
Je regrette de ne pas être à l'aise avec l'utilisation des variables en Shell, car je pense qu'il aurait été plus judicieux de boucler à travers toutes les extensions, et de créer automatiquement le dossier portant le nom de l'extension, pour ensuite déplacer automatiquement les fichiers à l'interieur, mais je n'ai pas réussi à le faire alors je me suis contentée de realiser cette étape manuellement, d'autant que cela aurait été rendu plus compliqué par le fait que dans le dossier `img`, je devais placer plusieurs extensions différentes. Je n'ai pas non plus reussi à utiliser `find (...) -exec (...)` avec plusieurs extensions différentes à la fois, donc j'ai écrit deux lignes pour déplacer les `.jpg` et le fichier `.bmp`

### [`date_order.sh`](/semaine_0/Fichiers/scripts/date_order.sh)

J'ai dû faire face au même problème pour ce script : ne sachant pas comment boucler, détecter automatiquement la date et déplacer le fichier dans le bon dossier, j'ai également fait cette partie à la main, ce qui peut sembler un peu fastidieux étant donné que je dois répeter toutes les étapes deux fois. 
Le script, apres avoir été lancé, m'a affiché un message d'erreur, en me précisant que je ne peux pas déplacer le dossier `2016`(par exemple, mais c'était la même chose pour toutes les années) dans un sous-dossier de lui-même. Je n'avais pas prévu cette erreur, mais elle est plutôt logique étant donné qu'avec `grep`, je sélectionne tous les fichiers qui comportent `2016` dans leur nom, incluant le dossier lui-même. J'aurais surement pu prevoir cette erreur dans le script, mais en l'occurrence, cela n'a pas posé probleme car je cherchais simplement à déplacer les fichiers. J'ai donc choisi de laisser mon script tel quel.

### [`place_order.sh`](/semaine_0/Fichiers/scripts/place_order.sh)

Mon dernier script ressemble beaucoup au précédent. Le problème ici était que toutes les images du Japon ne contenaient pas "Japon" dans leur nom : pour contourner cela, je suis partie du principe que les images étaient soit de Paris, soit du Japon. J'ai donc d'abord trié toutes les photos de Paris, puis placé tout le reste dans le dossier Japon. J'ai fait une erreur dans un premier temps, j'avais écrit `mv .`, en pensant que, comme pour `cp`, si je ne précise pas `-r`, la commande ne s'exécuterait pas sur les dossiers, mais c'est pourtant ce qu'il s'est passé. J'ai donc corrigé mon script, car j'aurais dû écrire `mv *.*` pour ne sélectionner que les fichiers. 
