#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Karma

 Script Function:
	automatisation de lightshot et teamviewer

#ce ----------------------------------------------------------------------------

; Application nécéssitant les droits d'admin
#requireadmin

; Affiche en bas à droite un message informant du début de l'installation
TrayTip("Installation TeamViewer","Début de l'installation", 1000)

; Pause de 3 secondes
Sleep(3000)

; Lance le programme d'installation
ShellExecute("TeamViewer_Setup.exe")

; Le programme attend que la fenêtre d'installation soit active
WinWaitActive("Installation de TeamViewer", "Bienvenue chez TeamViewer")

; Lancer l'installation en effectuant une suite de frappe clavier
Send ("{TAB}")
Send ("{TAB}")
Send ("{TAB}")
Send ("{SPACE}")
Send ("{TAB}")
Send ("{ENTER}")


; Affiche en bas à droite un message informant que l'installation est terminée
TrayTip("Installation TeamViewer","Fin de l'installation", 1000)

; Pause de 3 secondes
Sleep(3000)





;2ème logiciel: LIGHTSHOT

;Application nécéssitant les droits d'admin
#requireadmin

;Lancement du Second logiciel
TrayTip("Installation de lightshot","Début de l'installation", 1000)

;Pause de 3s
sleep(3000)

;lance le programme
ShellExecute("setup-lightshot.exe")

; Le programme attend que la fenêtre d'installation soit active
AutoItSetOption("WinTitleMatchMode", 4)
WinWaitActive("Langue de l'assistant d'installation", "langue")

; Lancer l'installation en effectuant une suite de frappe clavier
Send ("{ENTER}")
Send ("{TAB}")
Send ("{A}")
Send ("{ENTER}")

; Le programme attend que la fenêtre d'installation soit active
AutoItSetOption("WinTitleMatchMode", 4)
WinWaitActive("Fin de l'installation de lightshot", "terminé")

; Fermer la dernière fenêtre
Send ("{ENTER}")


; Affiche en bas à droite un message informant que l'installation est terminée
TrayTip("Installation LightShot","Fin de l'installation", 1000)

; Pause de 3 secondes
Sleep(3000)

