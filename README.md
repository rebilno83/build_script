# build_script
Script de construction de notre réseau local.

***** DEBUT *****


Projet Tutoré Docker
Procédure d'utilisation des scripts

Etant donné que les scripts ont été ecrits sur une machine windows, les lancer directement genere une erreur.
Nous allons devoir utiliser le paquet : dos2unix, pour les convertir.

Connectez vous à votre machine en tant que superutilisateur.
Veuillez copier tout le repertoire "buil_script" dans votre repertoire de connexion.
Ou vous pouvez le recuperer sur github
  "git clone https://github.com/rebilno83/build_script.git"
  
Ensuite tapez les commandes : 
  "apt-get install dos2unix"
  "chmod +x ./build_script/user_sudo.sh"
  "dos2unix ./build_script/user_sudo.sh"
  "dos2unix ./build_script/run.sh"
  "./build_script/user_sudo.sh"
Cela vous creera un nouvel utilisateur "ptutore" ayant des droits sudo puis vous demandera de lui attribuer un mot de passe.
  Ce qui vous retournera la valeur "passwd: password updated successfully"
  Dans le cas où vous avez celle ci :
    "Les mots de passe ne correspondent pas.
    passwd: Erreur de manipulation du jeton d'authentification
    passwd: password unchanged"
      Reconnecter vous en tant que root et tapez la commande "passwd ptutore".
      Vous serez alors de nouveau invité à lui attribuer un nouveau mot de passe.

Après cela sauf si vous ne l'etes pas deja, connectez-vous en tant que ptutore.
Tapez "cd", cela devrait vous ememenez à votre rep. de connexion /home/ptutore où le rep. build_script a été copié en amont.

- Pour lancer l'installation direct de toute l'infrastructure lancez "./build_script/run.sh" après lui avoir ajouté des droits d'execution.
    !!! Cela lancera une installation en chaine.
    !!! Pensez à retirer les '#' devant certaines lignes
- Vous pouvez aussi lancer l'installation de chaque service l'un après l'autre. 
    !!! MAIS VEUILLEZ D'ABORD COMMENCER PAR "./build/docker.sh".
        Puis les ajouter des droits d'execution et enfin les convertir.

A propos du serveur mail, vous pouvez y acceder depuis un navigateur à "http://adresse_ip_de_votre_machine".
A propos du serveur ssh, vous pouvez y acceder depuis "ssh root@adresse_ip_de_votre_machine -p 2201"
A propos du serveur web, vous pouvez y acceder depuis "curl http://adresse_ip_de_votre_machine -p 8080"

Pour lancer un container deja cree : docker start nomDuConteneuOuSonId
Pour arreter un container deja cree : docker stop nomDuConteneuOuSonId
Pour supprimer un container deja cree : docker rm nomDuConteneuOuSonId
L'option rmi sert a supprimé une image


***** FIN *****
