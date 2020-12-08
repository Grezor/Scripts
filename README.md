<p align="center">
<img src="https://user-images.githubusercontent.com/38507456/58379582-c13f6700-7fa5-11e9-8a4a-f71c46db23b6.png" alt="bash logo"/>
</p>

## !/bin/bash
[![Github Releases](https://img.shields.io/badge/Update-05.06.2019-blue.svg)]()

## Présentation :
Ce script fait une sauvegarde de certains dossiers de votre ordinateur de bureau local, vers une machine distante. Par défaut, ce script ne copie que les nouveaux fichiers et les fichiers qui ont été modifiés. Si vous avez supprimé des fichiers sur votre ordinateur local, ils ne sont PAS supprimés sur la machine distante. 

Notez que ce script NE SYNCHRONISE PAS votre ordinateur local avec la machine distante, car il ne copie rien de la machine distante vers votre ordinateur. Il ne copie que les fichiers de votre ordinateur vers celui distant. En d'autres termes, ce script "sauvegarde" vos fichiers sur la machine distante.

## Technologie : 
	
	- .bash
	- .bat 

## Procedure d'execution .sh:
J'ai également crée un script shell qui permet lui aussi de sauvegarder certain dossier de l'ordianteur.Il affiche différentes couleurs (erreur : rouge)


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


## fichier rapport : 

```Fichier enregistre = 14:34:55,35 ==== 	31/05/2019  ======= nom_pc ======= Geoffrey```


## comparaison :
```
    EQU : égal à
    NEQ : différent de
    LSS : inférieur à
    LEQ : inférieur ou égal à
    GTR : supérieur à
    GEQ : supérieur ou égal à 
```
## New Features!

- [ ] zip si la date est a j-1
- [x] copier
- [ ] supprimer (en attente)
- [ ] remplacer fichier si modifier (en attente)

## améliorations :

	- Ziper le dossier si j-1 de la sauvegarde.
	- Si le fichier ou dossier existe, lors d'une deuxieme sauvegarde. Le dezipper le dossier, puis vérifier les fichiers et ensuite permettre
		de zip de nouveau. 
	- Crée plusieurs fichiers textes qui se remplice pour afficher la date de sauvegarde ..


## liens :

- [xcopy_explication](https://ss64.com/nt/xcopy.html)
- [xcopy_repertory](https://www.tutodidacte.com/bat-copier-un-dossier-avec-xcopy)
- [developpez.com](https://windows.developpez.com/faq/batch/?page=fichiers#delete_empty_files)
- [dir_explication](https://docs.microsoft.com/fr-fr/windows-server/administration/windows-commands/dir)
- [log.txt](https://www.computerhope.com/issues/ch001679.htm)
- [move_files](https://www.computerhope.com/movehlp.htm)


