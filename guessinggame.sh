#!/bin/bash
# guessinggame.sh : devinez le nombre de fichiers du répertoire actuel

# Compte les fichiers (non cachés) du répertoire actuel
compter_fichiers() {
  local nombre=0
  local element
  for element in *; do
    if [ -f "$element" ]; then
      nombre=$((nombre + 1))
    fi
  done
  echo "$nombre"
}

nombre_reel=$(compter_fichiers)
reponse=""

echo "Bienvenue dans le jeu de devinettes !"
echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"

while true; do
  read -r -p "Votre réponse : " reponse || { echo; exit 1; }
  if ! [[ "$reponse" =~ ^[0-9]+$ ]]; then
    echo "Veuillez entrer un nombre entier positif."
  elif [ "$reponse" -lt "$nombre_reel" ]; then
    echo "Trop bas ! Essayez encore."
  elif [ "$reponse" -gt "$nombre_reel" ]; then
    echo "Trop haut ! Essayez encore."
  else
    echo "Bravo ! Il y a bien $nombre_reel fichiers dans le répertoire actuel."
    break
  fi
done
