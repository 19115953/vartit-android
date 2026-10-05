# Muutokset / Changelog

Vain uusimmat versiot julkaistaan tässä repossa; vanhemmat on listattu
historiaksi.

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
