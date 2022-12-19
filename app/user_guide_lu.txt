# Lung Health Premonitions - Benotzer Guide

_NB: Dëse Guide gëtt et och op Franséisch a Lëtzebuergesch. Fir déi gewënscht Sprooch ze wielen, benotzt d'Navigatiounstabs uewen._

## Wat ass LHP?

Lung Health Premonitions (LHP) ass en Instrument fir medizinescht Personal bei der Diagnostik vu Lungenkrebs iwwer en einfache Questionnaire z'ënnerstëtzen. Dank ongeféier fofzéng Froen iwwer de Liewensstil vum Patient a mild Gesondheetsprobleemer ass LHP fäeg eng Prognose ze bidden déi eng éischt Iddi vum Zoustand vum Patient gëtt.

## Verzichterklärung

Et ass kloer datt d'LHP keng medizinesch Konsultatioun mat engem Gesondheetsspezialist ersetzt, et erliichtert nëmmen d'Betreiung vum Patient a séier déi richteg Entscheedung fir d'Behandlung vu sengem Zoustand ze treffen.

## Start mat der App

### Lancéiere vun enger Prognose

An der lénker Fënster ass de Questionnaire fir auszefëllen fir eng Prognose ze kréien. Et ass néideg all Entréen auszefëllen fir e relevant Resultat ze kréien. Fir all Froen ausser Alter, kontrolléiert déi passendst Këscht. Fir Alter kënnt Dir entweder den Alter vum Patient am Feld aginn (nëmmen Zuelen benotzen) oder d'Pfeile riets vum Feld benotzen.

Wann all d'Felder ofgeschloss sinn, klickt op 'Run Prediction' fir d'Prognose unzefänken.

<span style="display:block;text-align:center">
<img src="run-prediction.png" alt="run prediction" width="700"/>
</span>

D'Berechnung vun der Prognose ass bal direkt. Wann Dir se net um Haaptbildschierm gesitt, ass et wahrscheinlech well Dir an der falscher Navigatiounstab sidd. Gitt sécher de Tab "Prediction Statement" ze wielen, uewe lénks vum Haaptbildschierm.

<span style="display:block;text-align:center">
<img src="prediction-statement.png" alt="prediction statement" width="700"/>
</span>

### Dataset Visualiséierung

Fir den Dataset ze gesinn, gitt einfach op den Tab "Patientdatentabelle".

## Technesch Spezifikatioune

LHP benotzt logistesch Regressioun op Daten vun iwwer 300 Patienten fir d'Prognosen ze bidden. Den ugepasste Modell huet eng Genauegkeet vun 92,4% op der Testbasis. D'Donnéeën, Modell an nëtzlech Funktiounen am Zesummenhang mat Modelléierung sinn an engem R Package genannt **Lunglog** gruppéiert, zougänglech an [dësem GitHub Verzeichnis](https://github.com/B-Gendron/lunglog).
