#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Karma

 Script Function:
	install lightshot

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

;LIGHTSHOT

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