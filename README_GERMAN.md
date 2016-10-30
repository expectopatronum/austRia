# austRia

R Daten Paket mit Daten aus Österreich.

## Datenbeschreibungen

### Bundespräsidentschaftswahl 2016 (bpw)

* [Hintergrundinformation auf Wikipedia](https://de.wikipedia.org/wiki/Bundespr%C3%A4sidentenwahl_in_%C3%96sterreich_2016)
* [Mehr zur Gemeindekennzahl](https://de.wikipedia.org/wiki/Amtlicher_Gemeindeschl%C3%BCssel#.C3.96sterreich)

#### Sources for the raw data

* [1. Wahlgang](http://www.bmi.gv.at/cms/BMI_wahlen/bundespraes/bpw_2016/Ergebnis.aspx) (download link at the bottom)
* [2. Wahlgang](http://www.bmi.gv.at/cms/BMI_wahlen/bundespraes/bpw_2016/Ergebnis_2WG.aspx) (download link at the bottom)
* [Gemeinden mit Gemeindekennzahlen](https://www.statistik.at/web_de/klassifikationen/regionale_gliederungen/gemeinden/index.html)

## Code

Ich habe den Code, den ich zum Vorbereiten der Daten verwendet habe zur Nachvollziehbarkeit inkludiert (`prep_data`).

## Installation

```R
# install.packages("devtools")
devtools::install_github("expectopatronum/austRia")
```