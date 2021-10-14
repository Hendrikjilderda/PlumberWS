# Workshop opdrachten

## [Opdracht 1] Simpele requests
**Maak een Plumber API met twee functies**


- Functie die de huidige tijd returnt (datum + tijd)
- Functie die de huidige datum returnt (datum)


Maak gebruik van de Sys package.

---

## [Opdracht 2] Request zelf uitvoeren
**Gebruik de API uit opdracht 1 en voer de request zelf uit in Microsoft Edge**

Hint: let op de URL

---

## [Opdracht2b] *Advanced* Request zelf uitvoeren
**Gebruik onderstaande functie en voer de request zelf uit in Microsoft Edge**

Gebruik de waarden a = 5 en b = 5

```
#* Testing basic sum function
#* @param a first value
#* @param b second value
#* @get /sum
function(a, b){
  return(as.numeric(a)+as.numeric(b))
}
```
Hint: /sum? ...

## [Opdracht3] Opvragen bestanden RESTful
### TODO: welk bestand gebruiken?
**Maak API functie(s) die op een RESTful manier te werk gaat. **

Deze functie(s) moet de mogelijkheid hebben om een csv en pdf bestand te delen.

Hint: *Een API is RESTful wanneer er geen argumenten bij de request hoeven.*
Hint: ``` # @serializer {bestandtype}```
