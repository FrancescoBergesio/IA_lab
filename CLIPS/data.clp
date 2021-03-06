(defmodule DATA (import TEMPLATES ?ALL) (export ?ALL))

(deffacts DATA::localities 
    (location
        (name "torino")
        (region piemonte)
        (culturale 4)
        (sportivo 4)
        (termale 1)
        (enogastronomico 3)
        (naturalistico 2)
    )
    (location
        (name "cherasco")
        (region piemonte)
        (naturalistico 3)
        (culturale 5)
        (religioso 2)
        (sportivo 3)
        (enogastronomico 5)
    )
    (location
        (name "asti")
        (region piemonte)
        (naturalistico 1)
        (culturale 4)
        (sportivo 1)
        (religioso 1)
        (enogastronomico 5)
    )
    (location
        (name "pré_saint_didier")
        (region valle_aosta)
        (montano 5)
        (lacustre 3)
        (naturalistico 5)
        (termale 5)
        (culturale 2)
        (religioso 2)
        (sportivo 3)
        (enogastronomico 3)
    )
    (location
        (name "aosta")
        (region valle_aosta)
        (montano 3)
        (lacustre 2)
        (naturalistico 2)
        (culturale 5)
        (sportivo 2)
        (enogastronomico 3)
    )
    (location
        (name "genova")
        (region liguria)
        (balneare 3)
        (montano 2)
        (culturale 4)
        (religioso 1)
        (sportivo 2)
        (enogastronomico 3)
    )
    (location
        (name "imperia")
        (region liguria)
        (balneare 5)
        (montano 2)
        (naturalistico 3)
        (culturale 3)
        (religioso 2)
        (sportivo 4)
        (enogastronomico 3)
    )
    (location
        (name "milano")
        (region lombardia)
        (culturale 5)
        (sportivo 3)
        (enogastronomico 3)
    )
    (location
        (name "como")
        (region lombardia)
        (montano 2)
        (lacustre 5)
        (termale 4)
        (naturalistico 4)
        (culturale 3)
        (religioso 1)
        (sportivo 2)
        (enogastronomico 1)
    )
    (location
        (name "bologna")
        (region emilia_romagna)
        (culturale 5)
        (religioso 2)
        (sportivo 3)
        (enogastronomico 5)
    )
    (location
        (name "rimini")
        (region emilia_romagna)
        (culturale 2)
        (balneare 4)
        (naturalistico 2)
        (enogastronomico 3)
    )
    (location
        (name "venezia")
        (region veneto)
        (culturale 5)
        (religioso 3)
        (sportivo 3)
        (enogastronomico 3)
        (lacustre 5)
        (naturalistico 2)
    )
    (location
        (name "verona")
        (region veneto)
        (culturale 4)
        (religioso 1)
        (termale 1)
        (sportivo 2)
        (enogastronomico 3)
        (naturalistico 2)
    )
    (location
        (name "trento")
        (region trentino)
        (culturale 4)
        (montano 4)
        (lacustre 3)
        (termale 3)
        (enogastronomico 3)
        (naturalistico 3)
    )
    (location
        (name "bolzano")
        (region trentino)
        (culturale 4)
        (montano 4)
        (lacustre 1)
        (enogastronomico 4)
        (naturalistico 3)
    )
    (location
        (name "trieste")
        (region friuli)
        (culturale 4)
        (balneare 3)
        (montano 3)
        (enogastronomico 3)
        (naturalistico 3)
    )
    (location
        (name "gorizia")
        (region friuli)
        (culturale 4)
        (montano 3)
        (enogastronomico 3)
        (naturalistico 4)
    )
    (location
        (name "firenze")
        (region toscana)
        (culturale 5)
        (termale 1)
        (naturalistico 2)
        (religioso 3)
        (sportivo 2)
        (enogastronomico 4)
    )
    (location
        (name "saturnia")
        (region toscana)
        (naturalistico 5)
        (termale 5)
        (culturale 2)
    )
    (location
        (name "perugia")
        (region umbria)
        (naturalistico 3)
        (religioso 2)
        (enogastronomico 5)
        (montano 1)
        (sportivo 1)
        (culturale 4)
    )
    (location
        (name "assisi")
        (region umbria)
        (montano 3)
        (naturalistico 4)
        (enogastronomico 4)
        (sportivo 1)
        (religioso 5)
        (culturale 3)
    )
    (location
        (name "ancona")
        (region marche)
        (balneare 5)
        (naturalistico 1)
        (culturale 2)
        (enogastronomico 3)
    )
    (location
        (name "urbino")
        (region marche)
        (enogastronomico 3)
        (culturale 5)
        (religioso 2)
        (sportivo 2)
    )
    (location
        (name "roma")
        (region lazio)
        (culturale 5)
        (religioso 5)
        (enogastronomico 5)
        (lacustre 3)
        (sportivo 2)
        (naturalistico 1)
        (termale 2)
    )
    (location
        (name "rieti")
        (region lazio)
        (lacustre 3)
        (naturalistico 4)
        (termale 5)
        (montano 2)
        (sportivo 3)
        (religioso 2)
    )
    (location
        (name "l'aquila")
        (region abruzzo)
        (montano 2)
        (culturale 3)
        (sportivo 2)
        (religioso 2)
        (naturalistico 3)

    )
    (location
        (name "pescara")
        (region abruzzo)
        (balneare 4)
        (naturalistico 4)
        (religioso 2)
        (enogastronomico 2)
    )
    (location
        (name "termoli")
        (region molise)
        (balneare 5)
        (naturalistico 4)
        (culturale 3)
        (enogastronomico 4)
        (sportivo 1)

    )
    (location
        (name "campobasso")
        (region molise)
        (culturale 4)
        (naturalistico 3)
        (religioso 4)
        (sportivo 2)
        (enogastronomico 2)
    )
    (location
        (name "napoli")
        (region campania)
        (culturale 5)
        (balneare 5)
        (naturalistico 5)
        (enogastronomico 5)
        (sportivo 3)
        (religioso 4)
        (montano 2)

    )
    (location
        (name "benevento")
        (region campania)
        (culturale 5)
        (naturalistico 3)
        (religioso 3)
        (enogastronomico 4)
    )
    (location
        (name "brindisi")
        (region puglia)
        (balneare 5)
        (naturalistico 3)
        (culturale 4)
        (religioso 2)
        (enogastronomico 4)
    )
    (location
        (name "trani")
        (region puglia)
        (balneare 5)
        (culturale 3)
        (religioso 4)
        (naturalistico 4)
        (enogastronomico 4)
    )
    (location
        (name "matera")
        (region basilicata)
        (montano 5)
        (balneare 4)
        (naturalistico 5)
        (culturale 5)
        (religioso 3)
        (enogastronomico 3)
    )
    (location
        (name "potenza")
        (region basilicata)
        (montano 2)
        (balneare 4)
        (culturale 4)
        (religioso 3)
        (enogastronomico 3)
        (naturalistico 2)
    )
    (location
        (name "crotone")
        (region calabria)
        (balneare 5)
        (montano 1)
        (lacustre 2)
        (naturalistico 5)
        (culturale 1)
        (enogastronomico 3)
    )
    (location
        (name "pizzo")
        (region calabria)
        (balneare 5)
        (montano 4)
        (lacustre 3)
        (naturalistico 4)
        (religioso 4)
        (enogastronomico 5)
        (culturale 4)
        (sportivo 3)
    )
    (location
        (name "lipari")
        (region sicilia)
        (balneare 5)
        (naturalistico 5)
        (culturale 4)
        (enogastronomico 2)
        (religioso 3)
    )
    (location
        (name "messina")
        (region sicilia)
        (balneare 5)
        (naturalistico 5)
        (culturale 4)
        (enogastronomico 2)
        (religioso 3)
        (montano 2)
        (termale 5)
    )
    (location
        (name "cagliari")
        (region sardegna)
        (balneare 5)
        (naturalistico 5)
        (culturale 3)
        (enogastronomico 5)
        (religioso 3)
        (sportivo 4)
    )
    (location
        (name "caprera")
        (region sardegna)
        (balneare 5)
        (montano 1)
        (naturalistico 5)
        (culturale 5)
        (enogastronomico 4)
        (religioso 3)
        (sportivo 4)
    )
)

(deffacts DATA::hotels
    (hotel 
        (name "Palace Hotel")
        (stars 3)
        (location "torino")
        (free_rooms 60)
    )
    (hotel
        (name "Royal Superga")
        (stars 4)
        (location "torino")
        (free_rooms 10)
    )
    (hotel 
        (name "Nova Hotel")
        (stars 3)
        (location "asti")
        (free_rooms 54)
    )
    (hotel
        (name "Astioria")
        (stars 2)
        (location "asti")
        (free_rooms 10)
    )
    (hotel 
        (name "Napoleon")
        (stars 3)
        (location "cherasco")
        (free_rooms 20)
    )
    (hotel
        (name "Imperial")
        (stars 4)
        (location "cherasco")
        (free_rooms 7)
    )
    (hotel 
        (name "Mogol")
        (stars 3)
        (location "pré_saint_didier")
        (free_rooms 10)
    )
    (hotel
        (name "Resorting SPA")
        (stars 4)
        (location "pré_saint_didier")
        (free_rooms 47)
    )
    (hotel 
        (name "Galimberti")
        (stars 3)
        (location "aosta")
        (free_rooms 10)
    )
    (hotel
        (name "Il fortino")
        (stars 2)
        (location "aosta")
        (free_rooms 43)
    )
    (hotel 
        (name "Green Hotel")
        (stars 1)
        (location "genova")
        (free_rooms 94)
    )
    (hotel
        (name "Astor")
        (stars 3)
        (location "genova")
        (free_rooms 7)
    )
    (hotel 
        (name "Hotel Camiglia")
        (stars 2)
        (location "imperia")
        (free_rooms 23)
    )
    (hotel
        (name "Sinavilla Matilde")
        (stars 3)
        (location "imperia")
        (free_rooms 75)
    )
    (hotel 
        (name "Dok Milano")
        (stars 2)
        (location "milano")
        (free_rooms 98)
    )
    (hotel
        (name "Le pertite Hotel")
        (stars 3)
        (location "milano")
        (free_rooms 65)
    )
    (hotel 
        (name "Miramonti")
        (stars 3)
        (location "como")
        (free_rooms 10)
    )
    (hotel
        (name "Residence del sole")
        (stars 3)
        (location "como")
        (free_rooms 97)
    )
    (hotel 
        (name "Hotel due mondi")
        (stars 2)
        (location "bologna")
        (free_rooms 59)
    )
    (hotel
        (name "Grand Hotel Bristol")
        (stars 3)
        (location "bologna")
        (free_rooms 49)
    )
    (hotel 
        (name "Hotel Diamante")
        (stars 4)
        (location "rimini")
        (free_rooms 9)
    )
    (hotel
        (name "Villa delle rose")
        (stars 1)
        (location "rimini")
        (free_rooms 32)
    )
    (hotel 
        (name "Palazzo di Amindta")
        (stars 4)
        (location "venezia")
        (free_rooms 43)
    )
    (hotel
        (name "Locanda della posta")
        (stars 1)
        (location "venezia")
        (free_rooms 65)
    )
    (hotel 
        (name "Hotel Iris")
        (stars 3)
        (location "verona")
        (free_rooms 10)
    )
    (hotel
        (name "Ca' dei principi")
        (stars 2)
        (location "verona")
        (free_rooms 9)
    )
    (hotel 
        (name "Hotel Rosalba")
        (stars 1)
        (location "trento")
        (free_rooms 54)
    )
    (hotel
        (name "Hotel cenacolo")
        (stars 3)
        (location "trento")
        (free_rooms 32)
    )
    (hotel 
        (name "Le Grazie Hotel")
        (stars 1)
        (location "bolzano")
        (free_rooms 59)
    )
    (hotel
        (name "Hotel Monazzi")
        (stars 3)
        (location "bolzano")
        (free_rooms 98)
    )
    (hotel 
        (name "Europa")
        (stars 2)
        (location "trieste")
        (free_rooms 95)
    )
    (hotel
        (name "Deco Hotel")
        (stars 1)
        (location "trieste")
        (free_rooms 54)
    )
    (hotel 
        (name "Garden")
        (stars 2)
        (location "gorizia")
        (free_rooms 76)
    )
    (hotel
        (name "MOM")
        (stars 3)
        (location "gorizia")
        (free_rooms 25)
    )
    (hotel 
        (name "Taverna Dantesca")
        (stars 1)
        (location "firenze")
        (free_rooms 30)
    )
    (hotel
        (name "La rocca")
        (stars 3)
        (location "firenze")
        (free_rooms 54)
    )
    (hotel 
        (name "Cammino Vecchio")
        (stars 3)
        (location "saturnia")
        (free_rooms 14)
    )
    (hotel
        (name "Hotel Cristallo")
        (stars 4)
        (location "saturnia")
        (free_rooms 5)
    )
    (hotel 
        (name "Augusta")
        (stars 3)
        (location "perugia")
        (free_rooms 59)
    )
    (hotel
        (name "Borgo la chiaracia")
        (stars 2)
        (location "perugia")
        (free_rooms 65)
    )
    (hotel 
        (name "Bosone Palace")
        (stars 3)
        (location "assisi")
        (free_rooms 56)
    )
    (hotel
        (name "Hotel la meridiana")
        (stars 2)
        (location "assisi")
        (free_rooms 73)
    )
    (hotel 
        (name "Grand Hotel Elite")
        (stars 4)
        (location "ancona")
        (free_rooms 13)
    )
    (hotel
        (name "Rojan")
        (stars 1)
        (location "ancona")
        (free_rooms 21)
    )
    (hotel 
        (name "Miramare")
        (stars 1)
        (location "urbino")
        (free_rooms 45)
    )
    (hotel
        (name "Costaverde")
        (stars 2)
        (location "urbino")
        (free_rooms 56)
    )
    (hotel 
        (name "Bucaneve")
        (stars 3)
        (location "roma")
        (free_rooms 51)
    )
    (hotel
        (name "Hotel city")
        (stars 3)
        (location "roma")
        (free_rooms 5)
    )
    (hotel 
        (name "Hotel Regent")
        (stars 3)
        (location "rieti")
        (free_rooms 14)
    )
    (hotel
        (name "Hotel Ambasciatori")
        (stars 3)
        (location "rieti")
        (free_rooms 24)
    )
    (hotel 
        (name "Hotel Mara")
        (stars 2)
        (location "l'aquila")
        (free_rooms 65)
    )
    (hotel
        (name "Hotel Olimpya")
        (stars 3)
        (location "l'aquila")
        (free_rooms 16)
    )
    (hotel 
        (name "Villa Nacarua")
        (stars 3)
        (location "pescara")
        (free_rooms 35)
    )
    (hotel
        (name "Il tiglio")
        (stars 2)
        (location "pescara")
        (free_rooms 24)
    )
    (hotel 
        (name "Nuovo Albergo")
        (stars 3)
        (location "termoli")
        (free_rooms 51)
    )
    (hotel
        (name "Hotel Rio")
        (stars 2)
        (location "termoli")
        (free_rooms 52)
    )
    (hotel 
        (name "Ambra Palace")
        (stars 4)
        (location "campobasso")
        (free_rooms 5)
    )
    (hotel
        (name "Hotel Excelsio")
        (stars 3)
        (location "campobasso")
        (free_rooms 8)
    )
    (hotel 
        (name "Hotel Prestige")
        (stars 3)
        (location "napoli")
        (free_rooms 23)
    )
    (hotel
        (name "Hotel Ovidius")
        (stars 2)
        (location "napoli")
        (free_rooms 59)
    )
    (hotel 
        (name "Dimora Intini")
        (stars 3)
        (location "benevento")
        (free_rooms 62)
    )
    (hotel
        (name "Grande Albergo delle Nazioni")
        (stars 4)
        (location "benevento")
        (free_rooms 8)
    )
    (hotel 
        (name "Hotel Vallerossa")
        (stars 3)
        (location "brindisi")
        (free_rooms 24)
    )
    (hotel
        (name "Hotel Colonna")
        (stars 2)
        (location "brindisi")
        (free_rooms 24)
    )
    (hotel 
        (name "Hotel Margherita")
        (stars 2)
        (location "trami")
        (free_rooms 5)
    )
    (hotel
        (name "Hotel Leon")
        (stars 3)
        (location "trami")
        (free_rooms 28)
    )
    (hotel 
        (name "Hotel Abete")
        (stars 3)
        (location "matera")
        (free_rooms 12)
    )
    (hotel
        (name "Hotel Vittoria")
        (stars 3)
        (location "matera")
        (free_rooms 29)
    )
    (hotel 
        (name "Hotel Parco delle Rose")
        (stars 3)
        (location "potenza")
        (free_rooms 39)
    )
    (hotel
        (name "Hotel delle More")
        (stars 2)
        (location "potenza")
        (free_rooms 28)
    )
    (hotel 
        (name "Al Pescatore Hotel")
        (stars 1)
        (location "crotone")
        (free_rooms 24)
    )
    (hotel
        (name "Hotel Residence Nemo")
        (stars 3)
        (location "crotone")
        (free_rooms 52)
    )
    (hotel 
        (name "Residence il barattolo")
        (stars 3)
        (location "pizzo")
        (free_rooms 51)
    )
    (hotel
        (name "Hotel Solievo")
        (stars 3)
        (location "pizzo")
        (free_rooms 56)
    )
    (hotel 
        (name "Hillton")
        (stars 2)
        (location "lipari")
        (free_rooms 64)
    )
    (hotel
        (name "Hotel Yria")
        (stars 1)
        (location "lipari")
        (free_rooms 5)
    )
    (hotel 
        (name "Villa Barone")
        (stars 3)
        (location "messina")
        (free_rooms 75)
    )
    (hotel
        (name "Villa Americana")
        (stars 1)
        (location "messina")
        (free_rooms 98)
    )
    (hotel 
        (name "Imperiali Hotel")
        (stars 4)
        (location "cagliari")
        (free_rooms 2)
    )
    (hotel
        (name "Hotel Hermitage")
        (stars 3)
        (location "cagliari")
        (free_rooms 19)
    )
    (hotel 
        (name "KKUlt Hotel")
        (stars 2)
        (location "caprera")
        (free_rooms 74)
    )
    (hotel
        (name "Holiday In")
        (stars 3)
        (location "caprera")
        (free_rooms 2)
    )
)

(deffacts DATA::positions
    (position
        (name"torino")
        (latitude 45.07340313)
        (longitude 7.53552315)
    )
    (position
        (name"cherasco")
        (latitude 44.64496842)
        (longitude 7.85404244)
    )
    (position
        (name"asti")
        (latitude 44.89685385)
        (longitude 8.13932732)
    )
    (position
        (name"aosta")
        (latitude 45.74384075)
        (longitude 7.2806582)
    )
    (position
        (name"genova")
        (latitude 44.44689209)
        (longitude 8.75074862)
    )
    (position
        (name"imperia")
        (latitude 43.89345941)
        (longitude 7.94143818)
    )
    (position
        (name"milano")
        (latitude 45.46264824)
        (longitude 9.03764891)
    )
	(position
		(name"como")
		(latitude 45.8005143)
		(longitude 9.01538845)
	)
	(position
		(name"bologna")
		(latitude 44.49903259)
		(longitude 11.19160202)
	)
	(position
		(name"rimini")
		(latitude 44.05344196)
		(longitude 12.50464719)
	)
	(position
		(name"venezia")
		(latitude 45.40420075)
		(longitude 12.10156086)
	)
	(position
		(name"verona")
		(latitude 45.42622895)
		(longitude 10.92249153)
	)
	(position
		(name"trento")
		(latitude 46.08044006)
		(longitude 11.05031596)
	)
	(position
		(name"bolzano")
		(latitude 46.48923126)
		(longitude 11.31213831)
	)
	(position
		(name"trieste")
		(latitude 45.65229875)
		(longitude 13.71362219)
	)
	(position
		(name"gorizia")
		(latitude 45.94701735)
		(longitude 13.57459535)
	)
	(position
		(name"firenze")
		(latitude 43.77993676)
		(longitude 11.17092808)
	)
	(position
		(name"saturnia")
		(latitude 42.66515313)
		(longitude 11.50313477)
	)
	(position
		(name"perugia")
		(latitude 43.09499704)
		(longitude 12.3102843)
	)
	(position
		(name"assisi")
		(latitude 43.06577437)
		(longitude 12.60213641)
	)
	(position
		(name"ancona")
		(latitude 43.58215027)
		(longitude 13.43678657)
	)
	(position
		(name"urbino")
		(latitude 43.72923246)
		(longitude 12.61291067)
	)
	(position
		(name"roma")
		(latitude 41.90973056)
		(longitude 12.2558141)
	)
	(position
		(name"rieti")
		(latitude 42.41605097)
		(longitude 12.83052717)
	)
	(position
		(name"pescara")
		(latitude 42.45554063)
		(longitude 14.13362508)
	)
	(position
		(name"termoli")
		(latitude 41.98678343)
		(longitude 14.95989432)
	)
	(position
		(name"campobasso")
		(latitude 41.55748809)
		(longitude 14.63300496)
	)
	(position
		(name"napoli")
		(latitude 40.85352242)
		(longitude 14.10292292)
	)
	(position
		(name"benevento")
		(latitude 41.12295525)
		(longitude 14.73767026)
	)
	(position
		(name"brindisi")
		(latitude 40.64222486)
		(longitude 17.90099411)
	)
	(position
		(name"trani")
		(latitude 41.27471439)
		(longitude 16.37387876)
	)
	(position
		(name"matera")
		(latitude 40.66460121)
		(longitude 16.56510946)
	)
	(position
		(name"potenza")
		(latitude 40.64122316)
		(longitude 15.77381011)
	)
	(position
		(name"crotone")
		(latitude 39.07857626)
		(longitude 17.08057769)
	)
	(position
		(name"pizzo")
		(latitude 38.7596846)
		(longitude 16.11933131)
	)
	(position
		(name"lipari")
		(latitude 38.48107899)
		(longitude 14.90407054)
	)
	(position
		(name"messina")
		(latitude 38.1780343)
		(longitude 15.4107898)
	)
	(position
		(name"cagliari")
		(latitude 39.22538338)
		(longitude 9.05833803)
	)
	(position
		(name"caprera")
		(latitude 41.2071823)
		(longitude 9.42613321)
	)
)