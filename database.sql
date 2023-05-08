drop database if exists webshop;
create database webshop;
use webshop;
create table category (
  id int primary key auto_increment,
  name varchar(50) not null
);
create table product (
  id int primary key auto_increment,
  name varchar(100) not null,
  price double (10, 2) not null,
  image varchar(50),
  category_id int not null,
  description varchar(500),
  index category_id(category_id),
  foreign key (category_id) references category(id) on delete restrict
);
create table order1 (
  fname varchar(255) not null,
  lname varchar(255) not null,
  address varchar(255) not null,
  pcode varchar(255) not null,
  city varchar(255) not null
);


insert into category (name) values ('Konsolit');
insert into category (name) values ('Videopelit');
insert into category (name) values ('Lautapelit');
insert into category (name) values ('Oheistuotteet');

insert into product (name, price, image, category_id, description) values ('PlayStation 5', 580, "images/ps5.png", 1, "PlayStation 5 (PS5) -pelikonsoli tarjoaa seuraavan sukupolven pelikokemuksen fotorealistista säteenseurantaa hyödyntävillä grafiikoilla, miltei välittömillä latausajoilla, sekä upealla 3D-äänellä.");
insert into product (name, price, image, category_id, description) values ('Nintendo Switch', 300, "images/switch.png", 1, "Nintendo Switch OLED -pelikonsolilla saat parhaan pelikokemuksen upouuden 7-tuumaisen OLED-näytön ansiosta, jossa on entistä ohuemmat kehykset, kirkkaammat värit ja korkeampi kontrasti.");
insert into product (name, price, image, category_id, description) values ('Xbox Series X', 520, "images/xboxseriesx.png", 1, "Xbox Series X mahdollistaa pelaamisen aidolla 4K-resoluutiolla 12 teraflopsin grafiikkatehon ja 16 GB grafiikkamuistin avulla. Voit nauttia mediasisällöstä Blu-ray-asemalla, ja konsolilla voi myös pelata neljän aikaisemman sukupolven Xbox-pelejä.");
insert into product (name, price, image, category_id, description) values ('METAL GEAR SOLID V', 25, "images/mgsv.png", 2, "Metal Gear Solid V on erinomainen ja intensiivinen toimintapeli, joka tarjoaa erinomaisen pelattavuuden, vakuuttavan tarinan ja loistavan grafiikan. Pelin pelimekaniikat ja taktinen lähestymistapa tarjoavat pelaajille runsaasti vapautta valita, miten peliä haluavat pelata.");
insert into product (name, price, image, category_id, description) values ('Lego: Harry Potter- Collection', 20, "images/legoharry.png", 2, "Lego: Harry Potter- Collection on erittäin viihdyttävä ja monipuolinen peli, joka tarjoaa hauskoja minipelejä, keräilyelementtejä ja runsaasti viihdettä niin Harry Potter -faneille kuin Lego-pelien ystävillekin.");
insert into product (name, price, image, category_id, description) values ('Crash Bandicoot - N. Sane Trilogy', 35, "images/crash.png", 2, "Crash Bandicoot - N. Sane Trilogy on kokoelma remasteroituja versioita kolmesta alkuperäisestä Crash Bandicoot -pelisarjan pelistä. Pelit tarjoavat haastavaa tasohyppelyä, värikkäitä maailmoja ja tunnistettavan sankarimme, Crashin seikkailuja.");
insert into product (name, price, image, category_id, description) values ('Super Mario Party', 55, "images/mario.png", 2, "Super Mario Party on monipuolinen ja hauska juhlapeli Nintendo Switch -konsolille, joka sisältää yli 80 erilaista minipeliä ja monipuolisia pelitiloja.");
insert into product (name, price, image, category_id, description) values ('Biomutant', 25, "images/biomutant.png", 2, "Biomutant on kaunis ja avoin toimintaseikkailu, joka tarjoaa monipuolisia pelimekaniikoita, laajan maailman tutkittavaksi ja hienostuneen taistelusysteemin. Pelin hahmojen muokkausmahdollisuudet ovat myös erittäin kattavat.");
insert into product (name, price, image, category_id, description) values ('Riders Republic', 40, "images/riders.png", 2, "Riders Republic on adrenaliinipitoista laskettelua, pyöräilyä ja muuta ekstreemilajeja yhdistelevä peli, joka tarjoaa upean pelimaailman, monipuoliset pelitilat ja nautinnollisen pelikokemuksen. Pelin grafiikka ja äänimaailma ovat myös erittäin laadukkaat.");
insert into product (name, price, image, category_id, description) values ('The Witcher III - Wild Hunt(GOTY)', 20, "images/witcher.png", 2, "The Witcher III - Wild Hunt (GOTY) on yksi parhaista roolipeleistä, joka tarjoaa upean avoimen maailman, mukaansatempaavan tarinan, monipuoliset hahmot ja erinomaisen taistelusysteemin. Pelin maailma on eläväinen ja täynnä yksityiskohtia, ja sen grafiikka ja äänimaailma ovat huippuluokkaa.");
insert into product (name, price, image, category_id, description) values ('Tales of Symphonia Remastered', 48, "images/symphony.png", 2, "Tales of Symphonia Remastered on erinomainen roolipeli, joka tarjoaa upean tarinan, monipuoliset hahmot ja erinomaisen taistelusysteemin. Pelin grafiikka on päivitetty nykyaikaisemmaksi, ja sen ääniraita on erittäin laadukas.");
insert into product (name, price, image, category_id, description) values ('Sniper Elite 5', 60, "images/sniperelite.png", 2, "Sniper Elite 5 on viihdyttävä ja intensiivinen toimintapeli, joka tarjoaa upean grafiikan, mielenkiintoisen tarinan ja monipuoliset pelimekaniikat. Pelin snipertarkkuuskiväärin käyttö on erityisen tyydyttävää, ja pelin tekoäly on parantunut edellisestä osasta.");
insert into product (name, price, image, category_id, description) values ('Pokemon Shield', 53, "images/pokemonshield.png", 2, "Pokemon Shield on viihdyttävä ja koukuttava roolipeli, joka tarjoaa runsaasti kerättävää ja tutkittavaa, monipuolisen taistelusysteemin ja upean grafiikan. Pelin uudet Pokemon-hahmot ovat mielenkiintoisia ja niiden suunnittelu on tarkkaa.");
insert into product (name, price, image, category_id, description) values ('Afrikan tähti', 15, "images/afrikantahti.png", 3, "Afrikan tähti on seikkailullinen lautapeli, jossa pelaajat matkustavat Afrikassa etsien aarretta. Heidän on navigoitava eri kaupunkien välillä ja koettava erilaisia haasteita, kuten eläinten hyökkäyksiä ja sairauksia, samalla kun he keräävät resursseja ja karttoja selviytyäkseen matkastaan ja löytääkseen aarteen.");
insert into product (name, price, image, category_id, description) values ('Smart10-visailupeli', 26, "images/smart10.png", 3, "Smart10 on nopeatempoinen ja hauskasti koukuttava visailupeli, jossa pelaajat kilpailevat vastaamalla erilaisiin kysymyksiin kymmenestä eri aihealueesta. Peli sisältää yli 2000 kysymystä ja se soveltuu niin yksin- kuin ryhmäpelaamiseen. Pelaajat voivat testata tietämyksensä esimerkiksi urheilusta, elokuvista, historiasta ja musiikista.");
insert into product (name, price, image, category_id, description) values ('Scrabble', 29, "images/scrabble.png", 3, "Scrabble on sanapeli, jossa pelaajat yrittävät muodostaa sanoja kirjainlaatoista pelilaudalla. Jokaisella kirjainlaatalla on oma arvonsa, joka määrää sanan pistemäärän. Pelaajat voivat rakentaa sanoja joko omista kirjainlaatoistaan tai käyttää jo laudalla olevia kirjaimia. Pelin tavoitteena on kerätä eniten pisteitä muodostamalla pitkiä ja monimutkaisia sanoja.");
insert into product (name, price, image, category_id, description) values ('Catan', 28, "images/catan.png", 3, "Catan on resurssipeli, jossa pelaajat rakentavat ja kehittävät omaa saartaan keräämällä erilaisia resursseja, kuten puuta, tiiltä, viljaa ja villaa. Pelaajat käyttävät näitä resursseja rakentaakseen teitä, kyliä ja kaupunkeja, joiden avulla he voivat ansaita pisteitä. Pelin tavoitteena on saavuttaa tietty pistemäärä ennen muita pelaajia. Pelissä on myös satunnaisia tapahtumia, kuten ryöstöjä ja resurssien niukkuutta, jotka vaikuttavat pelin kulkuun.");
insert into product (name, price, image, category_id, description) values ('Rummikub Classic', 18, "images/rummikub.png", 3, "Rummikub Classic on kortti- ja laattapeli, jossa pelaajat yrittävät päästä eroon kaikista korteistaan luomalla sarjoja ja ryhmiä numeroituja laattoja. Pelaajat voivat luoda sarjoja laatoilla, jotka ovat samanlaisia numeron ja värin suhteen, ja ryhmiä, jotka sisältävät kolme tai neljä saman numeron eri väreissä olevaa laattaa. Pelaajat voivat myös käyttää muiden pelaajien luomia sarjoja ja ryhmiä. Pelin voittaa ensimmäisenä kaikki korttinsa pelistä poistaneet pelaajat.");
insert into product (name, price, image, category_id, description) values ('Monopoly Classic', 33, "images/monopoly.png", 3, "Monopoly Classic on kiinteistökauppapeli, jossa pelaajat liikkuvat pelilaudalla ostaen ja myyden kiinteistöjä. Pelaajat keräävät vuokrat vastustajilta, jotka päätyvät heidän omistamilleen kiinteistöille ja ansaitsevat rahaa, kun heidän omistamiaan kiinteistöjä käytetään. Pelin tavoitteena on kerätä eniten rahaa ja omaisuutta muihin pelaajiin verrattuna. Pelissä on myös satunnaisia tapahtumia, kuten Yhteisö ja Kansa-kortteja, jotka vaikuttavat pelin kulkuun.");
insert into product (name, price, image, category_id, description) values ('Ticket to Ride Europe', 40, "images/tickettoride.png", 3, "Ticket to Ride Europe on junamatkapeli, jossa pelaajat yrittävät luoda rautatieverkostoa yhdistämällä eri kaupunkeja Euroopassa. Pelaajat keräävät junakortteja ja käyttävät niitä rakentaakseen reittejä, jotka yhdistävät kaupunkeja. Peli sisältää myös erilaisia tehtäväkortteja, joissa pelaajat saavat pisteitä tietyn reitin rakentamisesta. Pelin tavoitteena on kerätä eniten pisteitä rakentamalla pitkiä ja yhtenäisiä reittejä eri puolilla Eurooppaa.");
insert into product (name, price, image, category_id, description) values ('Terraforming Mars', 39, "images/terraformingmars.png", 3, "Terraforming Mars on tieteisfiktiivinen strategiapeli, jossa pelaajat yrittävät muokata Marsin elinkelpoiseksi ihmiskunnalle. Pelaajat keräävät resursseja, kuten rahaa ja raaka-aineita, ja käyttävät niitä rakentaakseen infrastruktuuria ja muokatakseen Marsin ilmapiiriä, lämpötilaa ja pinnanmuotoa. Pelissä on myös erilaisia projekti- ja saavutuskortteja, jotka antavat pelaajille erilaisia etuja ja pisteitä. Pelin voittaa eniten pisteitä kerännyt pelaaja.");
insert into product (name, price, image, category_id, description) values ('Nemesis', 100, "images/nemesis.png", 3, "Nemesis on seikkailullinen selviytymispeli, jossa pelaajat ovat avaruusaluksella, joka on vioittunut ja täynnä ulkoavaruuden petollisia muukalaisia. Pelaajat yrittävät selviytyä, korjata aluksen ja palata takaisin maahan ennen kuin aika loppuu tai ennen kuin heidän aluksensa tuhoutuu. Pelissä on myös salaisuuksia, jotka voivat olla joko auttavia tai haitallisia pelaajille. Pelin voittaa pelaaja, joka onnistuu saavuttamaan omat tavoitteensa ja selviytymään hengissä.");
insert into product (name, price, image, category_id, description) values ('Fortuna', 23, "images/fortuna.png", 3, "Fortuna-kuulapeli on taitopeli, jossa pelaajat yrittävät käyttäen metallisia kuulia osua erilaisiin maalitauluihin. Pelaajat keräävät pisteitä osuessaan maalitauluihin ja voivat voittaa pelin saavuttamalla eniten pisteitä. Pelissä vaaditaan tarkkuutta ja taitoa kuulien hallinnassa.");
insert into product (name, price, image, category_id, description) values ('Minecraft muki', 10, "images/minecraftmug.png", 4, "Muki suositusta videopelistä Minecraft. Muki on tehty lurkin pään mukaisesti.");
insert into product (name, price, image, category_id, description) values ('Game Boy avaimenperä', 8, "images/gameboy.png", 4, "Gameboy avaimenperä on söpö ja nostalgian täyteinen pienoismalli alkuperäisestä Gameboysta, joka toimii myös avaimenperänä. Vaikka se ei toimi oikeana pelikonsolina, se on hauska lisäys videopelikokoelmaan ja sopii hyvin lahjaksi pelien ystäville.");
insert into product (name, price, image, category_id, description) values ('Amiibo 8-bit Link', 25, "images/amiibolink.png", 4, "8-bit Link amiibo on hienosti suunniteltu keräilyfiguuri, joka on yhteensopiva monien Nintendo-pelien kanssa. Se avaa pelissä lisäsisältöä ja antaa pelaajille pääsyn erikoishahmoihin tai lisävarusteisiin. Figuurin yksityiskohdat ja laatu ovat erinomaisia, ja se sopii hyvin lahjaksi Nintendo-fanille.");
insert into product (name, price, image, category_id, description) values ('Amiibo Charizard No. 33 (SSB Collection)', 25, "images/charizardamiibo.png", 4, "Charizard No. 33 (SSB Collection) amiibo on upeasti suunniteltu ja yksityiskohtainen keräilyfiguuri, joka on yhteensopiva monien Nintendo-pelien kanssa. Se tarjoaa pelaajille pääsyn lisäsisältöön ja erikoishahmoihin, ja sen laatu on erinomainen. Figuuri sopii hyvin lahjaksi Pokemon- tai Nintendo-fanille.");
insert into product (name, price, image, category_id, description) values ('Amiibo Luigi (Super Mario Series)', 25, "images/amiiboluigi.png", 4, "Luigi (Super Mario Series) amiibo on hienosti suunniteltu ja yksityiskohtainen keräilyfiguuri, joka on yhteensopiva monien Nintendo-pelien kanssa. Se tarjoaa pelaajille pääsyn lisäsisältöön ja erikoishahmoihin, ja sen laatu on erinomainen. Figuuri sopii hyvin lahjaksi Nintendo-fanille tai Super Mario -sarjan ystäville.");