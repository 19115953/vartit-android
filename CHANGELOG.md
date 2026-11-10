# Muutokset / Changelog

Vain uusimmat versiot julkaistaan tässä repossa; vanhemmat on listattu
historiaksi.

## 0.5.3 – 2026-11-10

- Korjaus versioon 0.5.2: hintarivin uloimmat yläkulmat eivät enää leikkaudu
  (esim. Samsungilla). Puhelin pyöristi widgetin sisällön kulmia widgetin
  oman reunan sijaan; nyt pyöristys osuu widgetin reunaan.

*Fix for 0.5.2: the price row's outermost top corners no longer get cut (e.g.
on Samsung). The launcher was rounding the corners of the widget's content
instead of the widget's own frame; now the rounding lands on the frame.*

## 0.5.2 – 2026-11-10

- Korkean widgetin hintarivin uloimmat kulmat eivät enää pyöristy muita
  enemmän (esim. Samsungilla). Puhelin pyöristää widgetin kulmat, joten
  widgetin sisältö on nyt hieman irti reunoista, sen verran kuin puhelimen
  kulma vaatii.

*The outermost corners of the tall widget's price row no longer get rounder than
the rest (e.g. on Samsung): the content now keeps just enough distance from the
launcher's rounded widget corners.*

## 0.5.1 – 2026-11-10

- Nykyisen vartin hintaa ei enää kirjoiteta palkkiin, koska kellon osoitin
  peitti sen. Hinta näkyy edelleen *Nyt*-ruudussa tai kellon keskellä.

*The current quarter's price is no longer printed on its bar, where the hour
hand covered it; it's still in the Now chip or the clock's centre.*

## 0.5.0 – 2026-11-10

- **Kalliit päivät:** erittäin kalliiden varttien (vähintään 30 snt/kWh) hinnat ovat
  palkeissa isommalla tekstillä ja kauempana keskeltä, joten niitä on helpompi lukea.
- **Hintarenkaat** (5, 10, 15 ja 20 snt) näkyvät nyt myös korkeiden palkkien
  kohdalla: palkkien välisissä valkoisissa raoissa on pieni tumma merkki.

*Expensive days: the price printed on very expensive (30 c or more) bars is bigger and
further out; the 5–20 c price rings now show through the gaps between tall
bars.*

## 0.4.0 – 2026-10-05

- **Korkea widget:** kun widgetin venyttää selvästi leveyttään korkeammaksi,
  kellon yläpuolelle tulee rivi, jossa nykyinen vartti (*Nyt*) ja kolme
  seuraavaa varttia isolla tekstillä, kukin hintansa värillä. Kellon keskellä
  näkyy silloin kuluvan tunnin neljä varttia kuten vartit.fi:ssä.
- Matala/neliön muotoinen widget toimii kuten ennenkin (nykyinen hinta kellon
  keskellä).

*Tall widget: resize it clearly taller than wide to get a row with the current
and next three quarter-hour prices above the clock.*

## 0.3.0 – 2026-10-05

- **Negatiiviset hinnat** näkyvät sinisinä: sininen palkki heti nollarenkaan
  sisäpuolella (koosta riippumatta) ja sininen hintapallo keskellä.
- Niin pieni negatiivinen hinta, että se pyöristyisi nollaksi, näytetään
  muodossa `<0,00`.

*Negative prices shown in blue; a tiny negative reads `<0,00`.*

## 0.2.2 – 2026-10-03

- Kellon reunan "leikkausviivan" vierestä poistettu tuntiluku.

## 0.2.1 – 2026-10-03

- Osoitin noudattaa aina Suomen aikaa, myös jos puhelin on muulla aikavyöhykkeellä.
- Widget on oletuksena koko näytön levyinen.

## 0.2.0 – 2026-10-03

- Nykyhetki näytetään tuntiosoittimella, nykyinen hinta kellon keskellä.
- Isompi oletuskoko ja selkeämpi fontti.

## 0.1.0 – 2026-10-03

- Ensimmäinen versio: hintakello aloitusnäytön widgettinä.
