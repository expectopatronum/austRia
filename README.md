For the German version see **README_GERMAN.md**.

# austRia
R data package for Austria.

## Data description

Currently there is data about the first two rounds of the Austrian presidential election 2016. I plan two add other datasets that are interesting. Do you have suggestions or feedback? Feel free to [create an issue](https://github.com/expectopatronum/austRia/issues) or [contact me](mailto:verena@haunschmid.name).

### Austrian presidential election (Bundespräsidentenwahl) 2016 - bpw

* [Background information on Wikipedia](https://en.wikipedia.org/wiki/Austrian_presidential_election,_2016)
* [More about the Community Identification Number (Gemeindekennzahl - GKZ)](https://en.wikipedia.org/wiki/Community_Identification_Number#Austria)

#### Sources for the raw data

* [First round of voting](http://www.bmi.gv.at/cms/BMI_wahlen/bundespraes/bpw_2016/Ergebnis.aspx) (download link at the bottom)
* [Second round of voting](http://www.bmi.gv.at/cms/BMI_wahlen/bundespraes/bpw_2016/Ergebnis_2WG.aspx) (download link at the bottom)
* [Information about municipalities](https://www.statistik.at/web_de/klassifikationen/regionale_gliederungen/gemeinden/index.html)

## Code

I included the source code (folder `prep_data`) that I used to create the datasets so anyone can track what I did.

## Installation

```R
# install.packages("devtools")
devtools::install_github("expectopatronum/austRia")
```
