all:
	@{ echo '# Projet : Jeu de devinettes (guessinggame)'; \
	   echo ''; \
	   echo "- **Date et heure d'exécution de make** : $$(date '+%d/%m/%Y à %H:%M:%S')"; \
	   echo "- **Nombre de lignes de code dans guessinggame.sh** : $$(wc -l < guessinggame.sh | tr -d ' ')"; \
	} > README.md

clean:
	rm -f README.md

.PHONY: all clean
