<p align="center">
<img src="https://user-images.githubusercontent.com/38507456/58379582-c13f6700-7fa5-11e9-8a4a-f71c46db23b6.png" alt="bash logo"/>
</p>

# <tt>#!/bin/bash</tt>


## Présentation :
Ce script fait une sauvegarde de certains dossiers de votre ordinateur de bureau local, vers une machine distante. Par défaut, ce script ne copie que les nouveaux fichiers et les fichiers qui ont été modifiés. Si vous avez supprimé des fichiers sur votre ordinateur local, ils ne sont PAS supprimés sur la machine distante. 

Notez que ce script NE SYNCHRONISE PAS votre ordinateur local avec la machine distante, car il ne copie rien de la machine distante vers votre ordinateur. Il ne copie que les fichiers de votre ordinateur vers celui distant. En d'autres termes, ce script "sauvegarde" vos fichiers sur la machine distante.



Il suffit de lancer le fichier *backup.bat*


## Technologie : 
	
	- .bash
	- .bat 

## Procedure d'execution .sh:
```./backup.sh ```

## Description des fichiers :


## Qu'est-ce qu'un fichier batch ?
> Il s'agit de simples fichiers textes contenant des lignes de commande qui sont exécutées séquentiellement, l'une après l'autre. Ces fichiers utilisent l'extension spéciale ".bat" ou ".cmd". Les fichiers de ces types sont reconnus et exécutés via une interface (parfois appelée console) fournie par le système et appelée interpréteur de commandes.

<tt>backup.bat</tt>

- changer votre repertoire : ```C:\Users\repertoire\Desktop\Scripts\ ```


| 		   	|      description     																						|
|----------	|---------------------------------------------------------------------------------------------------------	|
| exit	   	| quitter automatiquement 	   																				|
| rem      	| commentaire         																						| 
| xcopy    	| Copiez les fichiers et / ou les répertoires dans un autre dossier											|
| cls	   	| "nettoyer" la console(supprime tout ce qui est ecrit)       												|
| color A0  | affiche de la couleur dans la console        																| 
| @echo off	| permet de cacher toutes les lignes de commandes qui sont effectuées lors de l'execution				    |
| pause     | laisse ouverte la fenetre																					|
| dir		| affiche des informations sur les fichiers et les répertoires												|


# fichier rapport : 

```/* fichier save.txt */


Fichier enregistre = 14:34:55,35 ==== 	31/05/2019  ======= nom_pc ======= Geoffrey

```

# New Features!

	- zip 
	- copier
	- supprimer {en attente}
	- remplacer fichier si modifier


# Colors :


# comparaison :
```
    EQU : égal à
    NEQ : différent de
    LSS : inférieur à
    LEQ : inférieur ou égal à
    GTR : supérieur à
    GEQ : supérieur ou égal à 
```

date :
```
- Chaîne de caractères 	2 	3 	: 	1 	5 	: 	0 	0
- Position 				0 	1 	2 	3 	4 	5 	6 	7
- explication : 
    %time:~0,2% : Afficher 2 caractères à partir de la position 0
    %time:~3,2% : Afficher 2 caractères à partir de la position 3
    %time:~6,2% : Afficher 2 caractères à partir de la position 6
```
# New Features!

- [ ] zip si la date est a j-1
- [x] copier
- [ ] supprimer (en attente)
- [ ] remplacer fichier si modifier (en attente)



# liens :

- [xcopy_explication](https://ss64.com/nt/xcopy.html)
- [xcopy_repertory](https://www.tutodidacte.com/bat-copier-un-dossier-avec-xcopy)
- [developpez.com](https://windows.developpez.com/faq/batch/?page=fichiers#delete_empty_files)
- [dir_explication](https://docs.microsoft.com/fr-fr/windows-server/administration/windows-commands/dir)
- [log.txt](https://www.computerhope.com/issues/ch001679.htm)
- [move_files](https://www.computerhope.com/movehlp.htm)


## update readme : 

- 03/06/2019 