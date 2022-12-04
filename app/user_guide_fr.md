# Lung Health Premonitions - guide de l'utilisateur

_NB: le présent guide est également disponible en anglais et en luxembourgeois. Pour selectionner le langage souhaité, utiliser les onglets de navigation ci-dessus._

## Qu'est-ce que LHP ?

Lung Health Premonitions (LHP) est un outil destiné à accompagner le personnel médical dans le diagnostic du cancer du poumon via un simple questionnaire. Grâce à une quinzaine de questions sur le mode de vie et les problèmes de santé bénins du patient, LHP est capable de fournir une prédiction qui donne une prémière idée de l'état du patient.

## Non - responsabilité

Il est clair que LHP ne remplace pas une consultation médicale avec un professionnel de santé, il permet uniquement de faciliter la prise en charge du patient et de prendre rapidement la bonne décision pour le traitement de son état. 

## Prise en main de l'application

### Lancement d'une prédiction

Dans le volet de gauche se trouve le questionnaire à remplir pour obtenir une prédiction. Il est nécessaire de remplir toutes les entrées pour obtenir un résultat pertinent. Pour toutes les question excepté l'âge, cochez la case la plus adéquate. Pour l'âge, vous pouvez soit saisir l'âge du patient dans le champ (en utilisant uniquement des chiffres), soit utiliser les flèches sur la droite du champ.

Une fois tous les champs complétés, cliquez sur `Run prediction` pour lancer la prédiction.

![Bouton `Run prediction`](run-prediction.png)

Le calcul de la prédiction est preque immédiat. Si vous ne le voyez pas apparaître sur l'écran principal, c'est certainement parce que vous n'êtes pas dans le bon onglet de navigation. Assurez-vous de sélectionner l'onglet `Prediction statement`, en haut à gauche de l'écran principal. 

![Onglet `Prediction statement`](prediction-statement.png)

### Visualisation du jeu de données

Pour visualiser le jeu de données, il suffit d'aller dans l'onglet `Patients data table`. 

## Spécifications techniques

LHP utilise une régression logistique sur les données de plus de 300 patients pour fournir les prédictions. Le modèle ajusté a une précision de 92,4 % sur la base de test. Les données, le modèle et les fonctions utiles liées à la modélisation sont regroupés dans un package R appelé **Lunglog**, accessible dans [ce répertoire GitHub](https://github.com/B-Gendron/lunglog).