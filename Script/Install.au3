#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         Tech2Tech.fr

 Script Function:
	Installation automatisée de TeamViewer (mode personnel).

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








