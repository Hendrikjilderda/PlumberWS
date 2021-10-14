# Plumber API Workshop

![CJIB logo](https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Flirp.cdn-website.com%2Ffacce8ee%2Fdms3rep%2Fmulti%2Fopt%2Fcjib-fdc2d6ea-e2d6e3a5-640w.png&sp=1634200661T45270be02ae2d3d01bd87cc5caf2d46572c3625b15c30c3da8d2ad405b6a888e)

## Inhoudsopgave
* [Basis informatie](#Basis-Informatie)

* [Setup](#Setup)
		* [Packages](#Packages)
		* [API file](#API-file)
		* [Aanpassingen voor starten](#Aanpassingen-voor-starten)
		* [API draaien](#API-draaien)
	
* [Swagger](#Swagger)

* [Context](#Context)

## Basis-Informatie
Dit bestand bestaat uit de volgende indeling:
* Opdrachten.md - Opdrachten betreffend Plumber
* antwoorden.Rmd - Antwoorden van opdracht.md
* meuk - folder met troep


## Setup
### Packages
Om de opdrachten te kunnen maken wordt er gebruik gemaakt van de volgende packages:
* plumber

Deze packages kunnen worden geinstalleerd in de Rconsole met het volgende command:
```
> install.packages("{packageName}")
```

### API-file
Na het installeren van de plumber package komt er een extra file mogelijkheid vrij wanneer er een nieuwe file aangemaakt kan worden, File > New File > Plumber API...

Vervolgens moet er een naam voor de API bedacht worden. Wij kiezen voor "workshop".
Door op create te klikken wordt er een map gemaakt met een plumber.R file. Dit is je eerste API!

#### Aanpassingen-voor-starten
In het net aangemaakte bestand halen we alles onder regel 12 weg. Dit zijn voorbeeld API functies die wij niet nodig hebben.

Vervolgens veranderen we ```#* @apiTitle Plumber Example API``` (regel 12) naar ```#* @apiTitle Plumber workshop```

Nu kunnen we starten met de opdracht, deze staan in [opdrachten.md](https://github.com/Victinyx/PlumberWS/blob/main/opdrachten.md)


### API-draaien 
FIXME betere titel nodig

Na het maken van de API kan deze gemakkelijk getest worden door op de 'Run API' knop te drukken rechts boven. Als er wijzigingen zijn gemaakt vraagt Rstudio eerst om deze wijzigingen om te slaan voordat de API bruikbaar wordt. 

Na het opslaan wordt er een pop-up window van Microsoft Edge geopend waarin een [Swagger](#Swagger) dashboard zichtbaar wordt. In dit dashboard kunnen de functie(s) van jouw API makkelijk getest worden.


## Swagger
FIXME


## Context
Deze repository wordt gebruikt als ontwikkel opgeving voor de ontwikkeling van opdrachten voor de workshop Plumber API. Deze workshop heeft als doel kennis van de Plumber package in R de testen en ontwikkelen.

