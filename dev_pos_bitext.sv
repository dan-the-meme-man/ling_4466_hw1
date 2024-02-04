När en användare ansluter till SQL Server-databasen via ett Microsoft Access-projekt aktiveras anslutningen via ett användarkonto för Windows NT.
SQL Server verifierar att kontonamnet och lösenordet validerades när användaren loggade in på systemet och ger tillgång till databasen, utan att kräva ett separat inloggningsnamn eller lösenord.
Med standardinstallationen av Microsoft SQL Server 2000 Desktop Engine med integrerad säkerhet, måste användaren vara medlem i administratörsgruppen för maskinen på vilken Access-projektet finns.
Detta gör det svårt för andra användare att få tillgång till Access-projektet.
Det finns för närvarande inget enkelt sätt för systemadministratören att skapa nya inloggningskonton till den lokalt installerade SQL Server-databasen utom genom att använda SQL Tools eller Transact-SQL-kommandon (TSQL).
Se webbplatsen http://officeupdate.microsoft.com/, Microsoft Developer Network för mer information om TSQL.
Du kan ändra säkerhetsläget för att komma åt SQL Server-databasen på en dator som kör Windows NT.
Genom att ställa in egenskaper från menyn Visa kan du aktivera säkerhet i blandat läge.
Med hjälp av standardkontot SA kan användare komma åt SQL Server-databasen via Access-projektet utan ytterligare säkerhetskrav.
Administratören för SQL Server kan också lägga till ytterligare säkerhet genom att ändra standard lösenordet för SA-kontot.
För att kryssrutan Aktivera systemadministratör (SA) för användarnamn ska vara aktiverad, måste följande vara sant.
Access-projektet måste anslutas till en SQL Server 7.0 (eller senare) databas eller en Microsoft SQL Server 2000 Desktop Engine.
SQL Server-databasen måste köras på en Windows NT-plattform.
SQL Servern måste köras på samma dator som Access-projektet.
Den nuvarande Windows NT-användaren måste vara en Administratör för datorn.
Den nuvarande SQL Server-användaren måste vara medlem i funktionen Systemadministratör.
Efter att ha ändrat säkerhetsläget rekommenderas starkt att lösenordet SA ändras genom att använda kommandot Ange inloggningslösenord (i menyn Verktyg, peka på Säkerhet).
Några av hyperlänkarna i detta ämne går till webben.
Om XML-data och åtkomst
Omfattande Markup Language (XML) är standardspråket för att beskriva och leverera data på webben, precis som Hypertext Markup Language (HTML) är standardspråket för att skapa och visa webbsidor.
Microsoft Access ger sätt att både importera och exportera XML-data samt omvandla data till och från andra format med XML-relaterade filer.
Om XML
Att flytta information över Internet och mellan program har alltid varit svårt på grund av skillnader i dataformat och egenutvecklade strukturer.
HTML, även om den är väl lämpad för att tillhandahålla text- och bildvisningsinformation för webbläsare, är begränsad i sin förmåga att definiera data- och datastrukturer.
HTML beskriver hur en webbsida ska se ut, medan XML definierar data och beskriver hur datan ska struktureras.
XML är ett datautbytesformat i det att det tillåter dig att utbyta data mellan olika system eller program.
XML skiljer data från presentationen så att samma XML-data kan presenteras på flera sätt genom att använda olika presentationsfiler.
XML är ett standardbaserat protokoll som styrs av World Wide Web Consortium (W3C).
XML-protokollet är en uppsättning regler, riktlinjer och konventioner för att utforma dataformat och strukturer, på ett sätt som skapar filer som är lätta att generera och lätt att läsa av olika datorer och applikationer.
Dessutom är XML-definierade strukturer otvetydiga, dvs. de är självdeskriptiva och plattformsoberoende.
Liksom HTML, XML använder sig av taggar och attribut, men medan HTML anger vad varje tagg och attribut betyder (och därmed hur data mellan dem kommer att se ut i en webbläsare), använder XML taggarna bara för att avgränsa bitar av data, och lämnar tolkningen av data helt till programmet som läser det.
Ytterligare information om XML finns på webbplatsen.
Om att importera XML- data
Åtkomst ger val för användning av data från många externa källor.
XML gör det lättare att omvandla data från nästan alla externa program för användning av Access.
Du kan:
Använd en omfattande Stylesheet Language Transformation (XSLT) fil för att omvandla data till ett Access dataformat.
Du kan använda kommandot Importera (punkt för att hämta externa data i menyn Arkiv) för att importera XML- datafiler till Access.
Kommandot visar dialogrutan Importera så att du kan välja ett XML- dokument samt ett schema, som beskriver datastrukturen.
Du kan bara importera ett enda dokument åt gången till Access.
Uppgifterna måste vara i ett format som Access känner igen, antingen i ett inbyggt format eller genom användning av ett schema.
Observera att när du importerar XML-data kan du inte välja en delmängd av XML-dokumentet. Hela filen måste importeras.
Du kan omvandla den ursprungliga XML-data till ett specifikt Access-format genom att välja mellan alternativen i dialogrutan Importera XML.
Du kan också ange om du ska skriva över befintliga tabeller eller lägga till befintliga data.
Vad är XML scheman
Du använder XML scheman för att beskriva strukturen av data i ett vanligt format som kunder, andra webbläsare, och ett antal XML-aktiverade program kan känna igen.
Närmare bestämt definierar scheman reglerna för ett XML-datadokument, inklusive elementnamn och datatyper, vilka element som kan visas i kombination och vilka attribut som finns tillgängliga för varje element.
Scheman ger en modell för ett XML-datadokument som definierar arrangemanget av taggar och text i alla dokument som refererar till schemat.
Åtkomst stöder XML-schemastandarden (XSD).
XSD är en föreslagen World Wide Web Consortium (W3C) standard utformad som en grundläggande infrastruktur för att beskriva typ och struktur av XML-dokument.
Genom att använda ett schema kan du se till att alla XML-dokument som används för att importera data till Access eller export från Access till ett annat format innehåller specifika data och överensstämmer med en definierad struktur.
Du kan också ge schemat till andra företag och applikationer så att de vet hur de ska strukturera alla data de ger dig och de i sin tur kan ge sitt schema till dig.
Visa XML- data
XML-syntax (taggarna och deras placering i ett dokument) definierar och beskriver data i ett XML-dokument men anger inte hur data ska visas.
I tidigare program och i vissa aktuella användningar, Cascading Style Sheets (CSS) användes för att berätta för webbläsaren hur man visar XML-data.
Dock är en CSS inte alltid ett bra val eftersom de är skrivna på ett specialiserat språk vilket innebär att utvecklaren måste använda ett annat språk för att skriva, ändra, eller förstå strukturen på stilmallen.
En CSS låter dig bara ange formatering av varje XML-element utan mycket kontroll över utdata.
Å andra sidan är en omfattande stilmall språk (XSL) formatmall betydligt mer flexibel än en CSS-fil.
Det gör att du exakt kan välja de data som kommer att visas, att ange ordning eller arrangemang av data, och att ändra eller lägga till information.
Du kan använda ett filter på en rad eller kolumnfält för att visa de övre eller nedre n objekten baserat på en total.
Till exempel kan du filtrera för topp eller botten 25 % av försäljare baserat på antalet hanterade beställningar.
Kombinera flera filter
Filter är additiva.
Varje filter du applicerar läggs till de du redan har i kraft.
Men när du applicerar ett filter genom att välja, tas det villkorliga filtret som redan applicerats på fältet bort innan filtret genom att välja appliceras.
Villkorliga filter är oberoende av varandra.
Resultatet av ett villkorat filter påverkar inte resultatet av ett annat.
Ett autofilter appliceras alltid innan ett villkorligt filter, oavsett i vilken ordning du applicerade dem.
Om du till exempel ställer in ett villkorligt filter för att visa de två största städerna baserat på försäljning, följt av ett autofilter på ShippedCity-fältet för att bara inkludera fem städer, visar PivotTable-vyn de två översta städerna av de fem städer du valde.
Ta bort och återanvända ett filter
Dock behålls filterinställningarna, så att när du slår på autofiltrering igen visas eller döljs de data som tidigare har visats eller dolts igen.
Filterinställningar behålls när du flyttar fält för att ändra layouten.
Dessutom, om du tar bort ett fält och senare lägga till fältet tillbaka till layouten, är samma objekt igen dolda.
Om du inte vill behålla dina filterval, se till att AutoFilter-knappen inte är markerad innan du börjar välja objekt att filtrera.
Om knappen inte är markerad, väljer du nya objekt att filtrera automatiskt aktiverar filtreringen och tar bort dina tidigare filterinställningar.
Identifiera filter som för närvarande är i kraft
När objekt i ett fält döljs genom autofiltrering eller filter genom markering, är pilen i fältet blå.
Klicka på den blå pilen för att se filtret som är i kraft.
När objekt i ett fält döljs av villkorlig filtrering, visas en tratt till vänster om pilpilen Fältpilen.
Du kan få mer information om nuvarande filter i dialogrutan Egenskaper.
Filtreringseffekter på beräkningar
Totaler kan endast innehålla de visade data, eller både synliga och dolda data.
Om att anpassa en kontroll
I Design-vyn över ett formulär, en rapport eller en dataåtkomstsida kan du formatera en kontroll på följande sätt:
Storlek.
Du kan ändra storlek på en kontroll genom att använda storleksskaften, eller så kan du ändra storlek på en kontroll till höjden eller bredden på en annan kontroll.
När du är i Design-vyn av ett formulär eller en rapport, kan du använda linjalen för att hjälpa dig att ändra storlek på kontrollerna.
Bredden på linjalens måttenhet är baserad på de regionala inställningarna i Microsoft Windows Kontrollpanel.
Färg, transparens och specialeffekter.
Du kan ändra färgen på en kontroll eller göra den transparent.
Du kan också betona uppkomsten av en kontroll genom att använda speciella effekter.
Du kan till exempel ange att en kontroll är upphöjd, sjunken eller etsad.
På ett formulär eller en rapport kan du också ange att en kontroll är skuggad eller skärs.
Gränser.
Du kan ställa in färg och bredd på gränserna för kontroller.
Du kan också ställa in gränsstilen. Du kan till exempel ange att en gräns består av streck eller prickar.
Utseende av text.
Du kan ange typsnitt och teckenstorlek för text i en kontroll.
Du kan också göra texten i en kontroll fet, kursiv eller understruken.
Läge.
Du kan flytta en kontroll eller anpassa den i förhållande till en annan kontroll.
Du kan öka eller minska utrymmet mellan kontrollerna, eller du kan ange att kontrollerna är jämnt fördelade.
Om att ändra egenskaperna hos flera kontroller på en gång
Du kan ändra egenskapsinställningar för en grupp kontroller av samma typ eller för en grupp av kontroller av olika typer.
Om du väljer kontroller av olika typer, Microsoft Access visar endast de egenskaper som delas av gruppen i egenskapsbladet.
Om alla kontroller som du har valt delar samma egenskapsinställning, visas den inställningen i egenskapsbladet; annars är egenskapsrutan tom.
Om du ändrar egenskapsinställningen, tillämpas ändringen på alla valda kontroller.
För att välja flera kontroller på en gång på en dataåtkomstsida, måste du ha Microsoft Internet Explorer 5.5 installerat på din dator.
I en form eller rapport, namnet egenskap aldrig visas när mer än en kontroll väljs eftersom kontrollnamn måste vara unik.
Om att gruppera data i PivotTable- och PivotChart-vyn
Gruppering av intervaller i PivotTable- och PivotChart-vyn
Du kan gruppera objekt genom att ange typ av intervall och storleken på intervallet.
Till exempel kan du gruppera ett fält med datumvärden i olika månader, och ange intervallet som 2, för att skapa grupper som Jan-feb, Mar-Apr, och så vidare.
Den typ av intervall du kan ange för ett fält beror på datatypen i fältet.
Numeriska fält
Du kan gruppera i intervaller av alla heltal, såsom 1, 2, 5, 100, och så vidare. Till exempel kan du gruppera fältet Anställd ID i grupper om 1-100, 101-200, och så vidare.
Datum- och tidsfält
Du kan gruppera i intervaller som dagar, veckor och kvartal.
Till exempel kan du gruppera värdena i ShippedDate fältet i månader för att visa data för order som levereras i januari, order levereras i februari, och så vidare.
Han undrade om den unge Auster hade varit bättre på det än han var.
På andra sidan vägen, i större delen av stationens östra mur, stod Kodaks bild med sina lysande, ojordiska färger.
Scenen den månaden visade en gata i någon fiskeby i New England, kanske Nantucket.
Ett vackert vårljus lyste på kullerstensstenarna, blommor av många färger stod i fönsterlådor längs husets fronter, och långt ner i slutet av gatan var havet, med sina vita vågor och blått, blått vatten.
Quinn kom ihåg att han besökte Nantucket med sin fru för länge sedan, i sin första graviditetsmånad, när hans son inte var mer än en liten mandel i magen.
Han fann det smärtsamt att tänka på detta nu, och han försökte undertrycka de bilder som bildades i hans huvud.
Titta på det genom Austers ögon, sa han till sig själv, och tänk inte på något annat.
Han vände sin uppmärksamhet till fotografiet igen och var lättad över att finna sina tankar vandra till ämnet valar, till expeditioner som hade gett sig ut från Nantucket i förra århundradet, till Melville och de inledande sidorna av Moby Dick.
Därifrån gled hans sinne iväg till de berättelser han hade läst om Melvilles sista år – den tystlåtne gamle mannen som arbetade i New Yorks tullhus, utan läsare, glömd av alla.
Plötsligt, med stor klarhet och precision, såg han Bartlebys fönster och den tomma tegelväggen framför sig.
Någon knackade honom på armen, och som Quinn rullade för att möta överfallet, såg han en kort, tyst man hålla ut en grön och röd kulspetspenna till honom.
Stapled till pennan var en liten vit pappersflagga, en sida av vilken läste: Denna bra artikel är Genom tillmötesgående från en DEAF MUTE.
Betala vilket pris som helst.
Tack för hjälpen.
På andra sidan av flaggan fanns det ett diagram över det manuella alfabetet – LÄRT ATT TA TILL DINA VÄNNER – som visade handpositionerna för var och en av de tjugosex bokstäverna.
Quinn sträckte sig i fickan och gav honom en dollar.
Den döve stumme nickade en gång mycket kort och gick sedan vidare och lämnade Quinn med pennan i handen.
Klockan var nu över fem.
Quinn bestämde sig för att vara mindre sårbar på en annan plats och tog sig till väntrummet.
Detta var i allmänhet en dyster plats, fylld med damm och människor med ingenstans att ta vägen, men nu, med rusningstiden vid full kraft, hade det tagits över av män och kvinnor med portföljer, böcker och tidningar.
Quinn hade svårt att hitta en plats.
Efter att ha letat i två eller tre minuter hittade han till slut en plats på en av bänkarna, som slingrade sig mellan en man i blå kostym och en fyllig ung kvinna.
Mannen läste sportavsnittet i Times, och Quinn tittade över för att läsa berättelsen om Mets förlust kvällen innan.
Han hade kommit till tredje eller fjärde paragrafen, när mannen långsamt vände sig mot honom, gav honom en ond blick och ryckte tidningen ur sikte.
Efter det hände något konstigt.
Quinn vände sin uppmärksamhet till den unga kvinnan till höger för att se om det fanns något läsmaterial i den riktningen.
Quinn gissade sin ålder vid runt tjugo.
Det fanns flera finnar på hennes vänstra kind, skymda av ett hallickaktigt smet av pannkaksmakeup, och en vad av tuggummi sprakade i hennes mun.
Hon läste emellertid en bok, en tidningsreferat med ett rysligt omslag, och Quinn lutade sig en aning över sin rätt att få en glimt av titeln.
Mot alla hans förväntningar var det en bok han själv hade skrivit – Suicide Squeeze av William Wilson, den första av Max Work-romanerna.
Quinn hade ofta föreställt sig denna situation: det plötsliga, oväntade nöjet att träffa en av hans läsare.
Han hade till och med föreställt sig det samtal som skulle följa: han, som var mycket annorlunda när främlingen prisade boken, och sedan, med stor motvilja och blygsamhet, gick med på att autografera titelsidan, eftersom du insisterar.
Men nu när scenen ägde rum, kände han sig ganska besviken, till och med arg.
Han tyckte inte om flickan som satt bredvid honom, och det förolämpade honom att hon lättvindigt skimrade sidorna som hade kostat honom så mycket ansträngning.
Hans impuls var att slita boken ur hennes händer och springa över stationen med den.
Han tittade på hennes ansikte igen, försökte höra orden hon lät ut i huvudet, titta på hennes ögon när de darrade fram och tillbaka över sidan.
Han måste ha letat för hårt, för ett ögonblick senare vände hon sig till honom med ett irriterade ansiktsuttryck och sa: "Har du problem?"
Quinn log svagt, sa han.
Jag undrar bara om du gillade boken.
Jag har läst bättre och jag har läst värre.
Quinn ville lägga ner samtalet, men något i honom höll i sig.
Innan han kunde resa sig och gå var orden redan ur hans mun. Tycker du att det är spännande?
Tjejen ryckte på axeln igen och knäckte tuggummit högt.
Är han en smart detektiv?
Ja, han är smart, men han pratar för mycket.
Vill du ha mer action?
Jag antar det.
Om du inte gillar det, varför fortsätter du läsa?
Tjejen ryckte på axlarna igen.
Det går över tiden, antar jag.
Det är ingen stor grej, det är bara en bok.
Han var på väg att berätta för henne vem han var, men sedan insåg han att det inte gjorde någon skillnad.
Flickan var bortom allt hopp.
I fem år hade han hållit William Wilsons identitet hemlig, och han tänkte inte ge bort den nu, minst av allt till en idiotisk främling.
Ändå var det smärtsamt, och han kämpade desperat för att svälja sin stolthet.
I stället för att slå flickan i ansiktet reste han sig plötsligt upp från sin plats och gick sin väg.
Vid sex-trettio placerade han sig framför grind 24.
Tåget skulle anlända i tid, och från sin utsikt i mitten av dörröppningen bedömde Quinn att hans chanser att få träffa Stillman var goda.
Han tog fram fotot ur fickan och studerade det igen.
ägna särskild uppmärksamhet åt ögonen.
Han kom ihåg att han hade läst någonstans att ögonen var det enda draget i ansiktet som aldrig förändrades.
Från barndomen till ålderdomen förblev de desamma, och en man med huvudet för att se det kunde teoretiskt sett se in i en pojkes ögon på ett fotografi och känna igen samma person som en gammal man.
Quinn hade sina tvivel, men det här var allt han behövde gå på, hans enda bro till nuet.
Men än en gång sade Stillmans ansikte ingenting till honom.
Tåget körde in på stationen, och Quinn kände ljudet av det skjuta genom hans kropp: en slumpmässig, hektisk din som verkade förena sig med hans puls, pumpa sitt blod i raucous spurts.
Hans huvud fylldes då av Peter Stillmans röst, som en spärreld av nonsens ord som kladdade mot väggarna i hans skalle.
Han sa åt sig själv att hålla sig lugn.
Trots vad han hade väntat sig av sig själv i det här ögonblicket var han uppspelt.
Tåget var trångt, och när passagerarna började fylla rampen och gå mot honom, blev de snabbt en pöbelhop.
Quinn flaxade den röda anteckningsboken nervöst mot hans högra lår, stod på hans tå, och kikade in i folkmassan.
Snart smög människorna omkring honom.
Det fanns män och kvinnor, barn och gamla människor, tonåringar och spädbarn, rika och fattiga människor, svarta män och vita kvinnor, vita män och svarta kvinnor, orientaler och araber, män i brunt och grått och blått och grönt, kvinnor i rött och vitt och gult och rosa, barn i gymnastikskor, barn i cowboystövlar, feta och tunna människor, långa människor och korta människor, var och en skiljer sig från alla andra, var och en irreducitly sig.
Quinn såg dem alla, förankrade på sin plats, som om hela hans varelse hade förvisats till hans ögon.
Varje gång en äldre man kom fram, höll han stånd för att det skulle vara Stillman.
De kom och gick för snabbt för att han skulle hänge sig åt besvikelse, men i varje gammalt ansikte tycktes han finna en förundran om hur den verklige Stillman skulle vara, och han ändrade snabbt sina förväntningar med varje nytt ansikte, som om anhopningen av gamla män förebådade den förestående ankomsten av Stillman själv.
Quinn tänkte att det är så här detektivarbete är, men förutom att han inte trodde nåt.
Han tittade på.
Immobile bland den rörliga folkmassan stod där och tittade.
Nästa morgon, och för många morgnar att följa, satte Quinn sig på en bänk mitt på trafikön på Broadway och 99th Street.
Jag önskar det, men det har inget med litteratur att göra.
Med vad då?
Quinn stannade, tittade runt i rummet utan att se något, och försökte börja.
Jag har en känsla av att det har skett ett fruktansvärt misstag.
Jag kom hit för att leta efter Paul Auster, privatdetektiven.
Auster skrattade och i det skrattet blåstes allt plötsligt i bitar.
Quinn insåg att han pratade strunt.
Han måste lika gärna ha bett om Chief Sitting Bull – effekten hade inte varit annorlunda.
Privatdetektiven, han upprepade mjukt.
Jag är rädd att du har tagit fel Paul Auster.
Du är den enda i boken.
Kanske det, sa Auster.
Men jag är ingen detektiv.
Vem är du då?
Vad gör du?
Jag är författare.
Quinn sa som om det var en sorg.
Jag är ledsen, Auster sa det.
Men det är vad jag råkar vara.
Om det är sant, så finns det inget hopp.
Det hela är en mardröm.
Jag har ingen aning om vad du pratar om.
Quinn berättade för honom.
Han började i början och gick igenom hela historien, steg för steg.
Trycket hade ökat i honom sedan Stillmans försvinnande den morgonen, och det kom ut ur honom nu som en ström av ord.
Han berättade om samtalen till Paul Auster, om hans oförklarliga accepterande av fallet, om hans möte med Peter Stillman, om hans samtal med Virginia Stillman, om hans läsning av Stillmans bok, om hans följande Stillman från Grand Central Station, om Stillmans dagliga vandringar, om mattan och de trasiga föremålen, om de oroande kartor som bildade alfabetets bokstäver, om hans samtal med Stillman, om Stillmans försvinnande från hotellet.
När han hade kommit till slutet sa han: "Tror du att jag är galen?"
Nej, sa Auster, som hade lyssnat uppmärksamt på Quinns monolog
Om jag hade varit i ditt ställe, hade jag nog gjort samma sak.
Dessa ord kom som en stor lättnad för Quinn, som om, äntligen, bördan inte längre var hans ensam.
Han kände för att ta Auster i famnen och förklara sin vänskap för livet.
Jag hittar inte på, jag har till och med bevis.
Han tog fram plånboken och tog bort checken på 500 dollar som Virginia Stillman hade skrivit två veckor tidigare.
Han gav den till Auster.
Det är till och med hånglat med dig.
Auster tittade noga på checken och nickade.
Det verkar vara en helt normal kontroll.
Det är ditt, sa Quinn.
Jag vill att du ska ha den.
Jag kan inte acceptera det.
Quinn såg sig omkring i lägenheten och gav en vag gest.
Köp dig några fler böcker eller några leksaker till ditt barn.
Det här är pengar du har tjänat.
Du förtjänar att ha den själv.
Men en sak ska jag göra för dig.
Eftersom checken står i mitt namn, löser jag in den åt dig.
Jag tar den till min bank i morgon bitti, sätter in den på mitt konto, och ger dig pengarna när den är klar.
Quinn sa inget.
frågade Auster.
Är det överenskommet?
Okej, sa Quinn till slut.
Vi får se vad som händer.
Auster satte checken på soffbordet, som om saken hade lösts.
Sen lutade han sig tillbaka på soffan och såg Quinn i ögonen.
Det är en mycket viktigare fråga än checken, sa han.
Det faktum att mitt namn har varit inblandat i detta.
Jag förstår det inte alls.
Jag undrar om du har haft problem med din telefon på sistone.
En person försöker ringa ett nummer och även om han ringer rätt, så får han någon annan.
Ja, det har hänt mig förut.
Men även om min telefon var trasig, det förklarar inte det verkliga problemet.
Det skulle berätta varför samtalet gick till dig, men inte varför de ville prata med mig från början.
Är det möjligt att du känner de inblandade?
Jag har aldrig hört talas om Stillmans.
Någon kanske ville skoja med dig.
Jag umgås inte med såna människor.
Man vet aldrig.
Men faktum är att det inte är ett skämt.
Det är ett riktigt fall med riktiga människor.
Ja, sa Quinn efter en lång tystnad.
Jag är medveten om det.
De hade kommit till slutet av vad de kunde prata om.
Bortom den punkten fanns ingenting: de slumpmässiga tankarna hos män som inte visste någonting.
Quinn insåg att han borde gå.
Han hade varit där i nästan en timme, och tiden närmade sig för hans samtal till Virginia Stillman.
Men han var ändå ovillig att flytta.
Stolen var bekväm, och ölen hade gått något till hans huvud.
Austern var den första intelligenta person han hade talat med på länge.
Han hade läst Quinns gamla verk, han hade beundrat det, han hade sett fram emot mer.
Ärkebiskopen är verkligen mycket stilig, med sina fulla kinder, sina långa klara mörkgröna ögon och det korta starka skägget.
Hans kyrka är vördnadsbjudande rik och vacker.
Den innehåller Johannes' bror och många relikers huvud.
Hannas hus, där Jesus blev förhörd och slagen, ligger inom lägret.
Kyrkans manuskriptsamling är den största utanför det sovjetiska Armenien.
De antika plattorna är underbara.
Men alla dessa saker är på något sätt yttre.
Vi utomstående är inte stabila nog att uppskatta dem.
Vi ärver vårt sätt att uppskatta från viktorianerna, från en tid av säkerhet och fritid, när middagsgäster visste bättre än att röka efter huvudrätten, när Levantines var Levantines och kultur var fortfarande kultur.
Men i dessa dagar av pansarattacker mot Yom Kippur, Vietnams, Watergates, Mansons, Amins, terroristmassaker vid Olympiska spelen, vad är upplysta manuskript, vad är mästerverk av smidesjärn, vad är heliga platser?
Vi kommer snart runt till samtida saker.
Ett telefonsamtal.
Ärkebiskopen ursäktar sig på två språk och berättar när han kommer tillbaka att han har talat med en av sina libanesiska vänner som ringer från Cypern eller Grekland.
Han sätter sig ner och säger att Yasir Arafats inflytande uppenbarligen försvagas och bleknar.
Arafat kunde inte fullborda det klassiska gerillamönstret och föra in massorna i kampen.
Då säger någon att det inte kan dröja länge förrän ryssarna avskriver Arafat.
De har utan tvivel insett sitt misslyckande i arabvärlden och kan till och med förbereda sig för att återuppta diplomatiska förbindelser med Israel.
De flesta middagsgästerna är överens om att Rysslands inre svårigheter är så allvarliga att det kan behöva dra sig bort från Syrien.
Den kan faktiskt tvingas dra sig tillbaka från Mellanöstern och koncentrera sig på sina inhemska problem.
För att undvika kollaps kan ryssarna drivas in i ett krig mot Kina.
Minister Henry Kissinger har vunnit Mellanösternkampen genom att dra in Egypten i det amerikanska lägret.
Han är ett geni.
Ryssarna är i oordning, kanske på reträtt.
Jag har hört såna här samtal i ett halvt sekel.
Jag minns mycket väl vad intelligenta, upplysta människor sade under Weimarrepublikens sista år, vad de sa till varandra under de första dagarna efter att Hindenburg hade tagit hit Hitler.
Jag minns bordstal från Leon Blums och Edouard Daladiers tid.
Jag minns vad folk sade om det italienska äventyret i Etiopien och om det spanska inbördeskriget och slaget om Storbritannien.
En sådan intelligent diskussion har inte alltid varit fel.
Vad som är fel med det är att de samtalande alltid ger sin egen intelligens åt det de diskuterar.
Senare visar historiska studier att det som faktiskt hände saknade något liknande.
Den var frånvarande från Flandern Field och Versailles, frånvarande när Ruhren togs, frånvarande från Teheran, Jalta, Potsdam, frånvarande från brittisk politik vid tiden för Palestinas mandat, frånvarande före, under och efter förintelsen.
Historia och politik är inte alls som de föreställningar som utvecklats av intelligenta, upplysta människor.
Tolstoi klargjorde detta i de första sidorna av krig och fred.
I Anna Scherers salong diskuterar de eleganta gästerna Napoleons och Duc d'Enghiens skandal, och prins Andrei säger att det trots allt finns en stor skillnad mellan Napoleon kejsaren och Napoleon privatpersonen.
Det finns raisons d'etat och det finns privata brott.
Och samtalet fortsätter.
Det som fortfarande vidmakthålls i all civiliserad diskussion är själva ritualen för civiliserad diskussion.
Tatu håller med ärkebiskopen om ryssarna.
Så det, som de säger i Chicago, är där de smarta pengarna finns.
Vatikanen är nästa ämne och får liknande behandling.
Några armeniska prelater har gått med oss på kaffe och deltagit i diskussionen.
Någon konstaterar att kyrkan är en anhängare av framgång och alltid följer majoriteterna.
Se vad den gör nu i Warszawapaktens länder, den gör affärer med kommunisterna.
Skulle kommunismen sopa Italien, skulle påven flytta till Jerusalem?
I stället, säger en av prelaterna, skulle han stanna i Rom och bli partisekreterare.
Kissinger har förstört Rysslands Mellanösternpolitik och påven ska byta Vatikanen mot Kreml.
Dessert är serverad.
I mitt brev till Le Monde hade jag sagt att det i den franska traditionen fanns två attityder till judarna: en revolutionär attityd som hade resulterat i deras enfranchisement och en antisemitisk inställning.
Upplysningens intellektuella ledare var avgjort antisemitiska.
Jag frågade vilken av de två attityderna som skulle råda i 1900-talets Frankrike under Dreyfus-affärens och Vichy-regeringens århundrade.
Den ståndpunkt som utrikesminister Maurice Jobert intog i oktoberkriget 1973 var att de palestinska araberna hade en naturlig och berättigad önskan att "gå hem".
Jag uttryckte artigt förhoppningen att den andra inställningen, den revolutionära, inte skulle överges.
Jag såg till att mitt brev skulle levereras.
Eugene Ionescu gav redaktörerna en kopia av den; en annan överlämnades till dem av Manes Sperber, författare.
Brevet erkändes aldrig.
Sedan 1973 har Le Monde öppet tagit arabernas parti i sin kamp mot Israel.
Den stöder terrorister.
Det är vänligare mot Amin än mot Rabin.
En nyligen genomgång av en fedayeens självbiografi talar om israelerna som kolonialister.
Den 3 juli 1976, innan Israel hade befriat gisslan i Entebbe, konstaterade tidningen med viss tillfredsställelse att Amin, "den orolige marskalken", illvilligt av alla, nu hade blivit hans dåraktiga bedragares stöd och hopp.
Den stora gyllene porten som öppnas när återlösaren visar sig är förseglad.
Bortom Getsemane trädgård.
Som namnet antyder var det en olivlund.
Nu växer tallar, cypresser och eukalyptusträd där under kupolerna i den rysk - ortodoxa kyrkan.
Mittemot finns det oliver, som araberna skördar med långa pålar.
De slår i grenarna, de tröskar löven med sina stavar, och frukten regnar ner.
När vi går upp i Via Dolorosa, hör vi en spännande jingel.
Arabiska pojkar tävlar sina åsnor nerför kullen.
Du letar efter slädar och frost när du hör denna jingle-belling.
Istället finns det pojkar som är stränga och glada, galopperande helvetesböjda på sina åsnor mot lejonporten.
"Rode från Ramlah till Lydda", skrev Herman Melville i sin resejournal 1857.
En eskort med 30 beväpnade män.
Bra ridning.
Musket-skjutning.
Curveting &amp; caracoling av ryttarna.
Utomjordingar.
Ryttare rider åt ena sidan, föraktar farorna."
Och några dagar senare, när det gäller Judeens ofruktsamhet, " trängde malört igenom hela landskapstrakter.
Byn Lepers hus mot muren Sion.
Deras park, en dynghög.
De sitter vid portarna och ber allmosor, och gnäller sedan om att undvika dem &amp; fasa.
Jag vandrade bland gravarna tills jag började tänka mig en av de besatta med onda andar."
Anwar Sadats amerikanska besök.
Ni måste diskutera detta med israeler innan de går med på att tala om något annat.
En indignerad bibliotekarie, en medelålders kvinna vars ansikte är så varmt att det nästan doftar av indignation, kräver av mig i en superdistinguished all utom Oxonian accent, "Hur förklarar du det!"
Jag rycker på axlarna.
Så här skulle jag säga om jag svarade henne:
Amerikaner älskar att öppna sina hjärtan för utländska besökare.
Dessa besökare behandlas ibland som hjältar i en arabisk nattsaga.
Vi ska visa dem hur bra vi alla är och välmenande och generösa, öppensinnade och opartiska.
Vi kommer att vara fulla av känslor och besökarna kommer att vara i motsvarande grad fulla av känslor, och efter att de har blivit vinade och fetade och ätit och rostat och tv-sända och paraderade och klappade och leveransen av lån och atomkraftverk och militär hårdvara har diskuterats kommer de att älska oss.
Jag litar på att de kommer att ge oss bättre kärlek än de får från oss, för vår är en mycket låg kvalitet uppåtseende grönsaker-snap typ av kärlek, så kortlivad som den är spontan.
Så fort de lämnar dem är de bortglömda.
En gammal mormonmissionär i Nauvoo grep en gång mitt knä hårt när vi satt sida vid sida, och han lade armen om mig och kallade mig "broder".
Vi hade bara träffats tio minuter tidigare.
Han tog mig till sin fina barm.
Hans ögon började dimma.
Jag var en utsikt, en exotisk utsikt i gamla tennisskor och en tröja.
Hans hjärta öppnade sig för mig.
Den öppnade som en knäppklocka.
Men det gav mig inte tiden på dagen.
"Men vet inte amerikanerna att Sadat var nazist?" säger bibliotekarien.
Ja, välinformerade människor har den här informationen i sina filer.
New York Times är säker på att ha det, men Times som jag ser det är en regering inom en regering Det har en egen statlig avdelning, och dess höga råd har förmodligen beslutat att det skulle vara impolitiskt just nu att rikta uppmärksamheten på Sadats beundran för Hitler.
Jag säger till damen att jag har skickat ett exemplar av ett minnestal av Hitler skrivet av Sadat 1953 till Sydney Gruson of the Times och även till Katharine Graham från The Washington Post.
"Kommer de att trycka den?" frågade hon.
"Svårt att gissa", säger jag till henne.
Times borde vara starkare i politiken än i litteraturen, men vem vet.
Naturligtvis måste den göra ekonomiska nyheter och sport tillräckligt bra.
Om det täckte bollspel lika illa som det granskar böcker, fansen skulle storma det som Bastille.
Bokläsare har tydligen inte fått den passionerade intensiteten hos sportfantaster."
Det som stör är om amerikanerna alls förstår världen, om de är en match för ryssarna sadaterna är i sig relativt oviktiga.
Till oliktänkande ryska författare som Lev Navrozov, kan amerikanerna aldrig vara en match för ryssarna.
Han citerar från Dostoevski's The House of the Dead ett samtal mellan författaren och en brutal mördare, en av dessa brottslingar som fascinerade honom.
Jag har inte boken till hands, så jag parafraserar.
"Varför är du så snäll mot mig?" frågar Dostoevski.
Och mördaren, som talar till ett av 1800-talets genier, svarar: "Eftersom du är så enkel att man inte kan låta bli att tycka synd om dig."
Även när han rånade Dostoevski, beklagade han honom som en liten kerubliknande barn.
Navrozov, ytterst intelligent men, för en västerlänning, egendomligt deformerad (hur kunde en oberoende intellektuell i Sovjetunionen undgå deformitet?), ser oss, amerikanerna, som barn som Stalins ler mot genom sina mustascher.
Kanske finns det en viss Vautrin-beundrande romantik i detta.
Människor anlände, och den yngre gick fram och tillbaka och presenterade dem.
Den gamla satt på sin stol.
Hennes platta tofflor var uppstoppade på en fotvärmare, och en katt sattes på hennes knä.
Hon hade en stärkelsevit affär på huvudet, hade en vårta på ena kinden, och silverfärgade glasögon hängde på nosspetsen.
Hon tittade på mig ovanför glasögonen.
Den snabba och likgiltiga friden i det där utseendet oroade mig.
Två ungdomar med dåraktiga och muntera ansikten blev lotsade över, och hon kastade på dem samma snabba blick av obekymrad vishet.
Hon verkade veta allt om dem och om mig också.
En kuslig känsla kom över mig.
Hon verkade kuslig och ödesdiger.
Ofta långt borta tänkte jag på dessa två, som vaktade mörkrets dörr, stickade svart ull som för en varm kista, en introducerade, introducerar kontinuerligt till det okända, den andra granskar de glada och dåraktiga ansikten med obekymrade gamla ögon.
Gammal stickare av svart ull, Morituri te salutant.
Inte många av dem hon tittade på såg henne igen – inte hälften, på långt håll.
Det var ännu ett besök hos läkaren.
En enkel formalitet försäkrade mig sekreteraren, med en luft av att ta en enorm del i alla mina sorger.
En ung man som bar hatt över det vänstra ögonbrynet, antar jag, – det måste ha funnits kontorister i branschen, även om huset var lika stilla som ett hus i en död stad – kom från någonstans på övervåningen, och ledde mig ut.
Han var sjabbig och slarvig, med bläckfläckar på ärmarna på sin jacka, och hans kravat var stor och böljande, under en haka formad som tån på en gammal känga.
Det var lite för tidigt för läkaren, så jag föreslog en drink, och därefter utvecklade han en åder av jovialitet. När vi satt över våra vermouths han förhärligade Bolagets verksamhet, och av och till jag uttryckte casually min förvåning över att han inte gå ut där.
Han blev mycket cool och samlade allt på en gång.
Jag är inte en sådan dåre som jag ser ut, quoth Platon för sina lärjungar, sade han tydligt, tömde sitt glas med stor upplösning, och vi reste oss.
Den gamle läkaren kände min puls och tänkte tydligen på något annat under tiden.
Bra, bra för där, han mumlade, och sedan med en viss iver frågade mig om jag skulle låta honom mäta mitt huvud.
Ganska förvånad, sade jag Ja, när han producerade en sak som kalipers och fick dimensionerna tillbaka och fram och varje sätt, att ta anteckningar noggrant.
Han var en oskakad liten man i en trådbar rock som en gaberdin, med fötterna i tofflor, och jag trodde att han var en ofarlig dåre.
Jag ber alltid, i vetenskapens intresse, att mäta kranin hos dem som går ut där, sade han.
- Och när de kommer tillbaka?
Jag ser dem aldrig, sade han, "och dessutom sker förändringarna inombords, du vet.
Han log som om han skämtade.
Så du ska ut dit.
Intressant också.
Han gav mig en rannsakande blick, och gjorde en annan not.
Någon galenskap i din familj? "Han frågade, i en sak-om-faktisk ton.
Jag kände mig väldigt irriterad.
Är det också en fråga som ligger i vetenskapens intresse?
Det skulle vara, sa han, utan att lägga märke till min irritation, "intressant för vetenskapen att titta på de mentala förändringarna av individer, på plats, men...
- Är du alienist?
Varje läkare bör vara – lite, svarade det ursprungliga, obönhörligt.
"Jag har en teori som ni Messieurs som går ut där måste hjälpa mig att bevisa.
Detta är min del av de fördelar som mitt land kommer att skörda från innehavet av ett så storartat beroende.
Den rikedom jag överlåter åt andra.
Ursäkta mina frågor, men du är den förste engelsman som kommer under min observation....
"Jag skyndade mig att försäkra honom att jag inte var det minsta typisk.
Om jag var det, sa jag, skulle jag inte prata så här med dig.
Vad du säger är ganska djupgående, och förmodligen felaktigt, sade han, med ett skratt.
Undvik irritation mer än exponering för solen.
Det är Adieu.
- Hur säger engelsmännen?
Adjö.
Det är Adieu.
I tropikerna måste man innan allt håller sig lugnt.
Han lyfte på ett pekfinger.
"Du lugn, du lugne.
Det är Adieu.
Ytterligare en sak återstår att göra – säg adjö till min utmärkta moster.
Jag fann henne triumferande.
Jag drack en kopp te – den sista anständiga koppen te i många dagar – och i ett rum som mest rogivande såg ut precis som man skulle förvänta sig att en dams salong skulle titta, vi hade en lång tyst pratstund vid brandplatsen.
Under loppet av dessa förtroenden blev det ganska tydligt för mig att jag hade blivit representerad för hustrun till den höga dignitären, och godhet vet hur många fler människor förutom, som en exceptionell och begåvad varelse – en bit av lycka för Bolaget – en man du inte får tag på varje dag.
Kära nån!
Och jag skulle ta hand om en två-penny-halv-penny flod-team båt med en penny visselpipa fäst!
Men det visade sig att jag också var en av arbetarna, med ett kapital – ni vet. Något som liknar ett sändebud av ljus, något som liknar en lägre sorts apostel.
Det hade varit en hel del sådan röta släppt lös i tryck och prata precis om den tiden, och den utmärkta kvinnan, som levde rätt i rusningen av alla denna humbug, bars bort från sina fötter.
Hon talade om att "avvänja de okunniga miljonerna från deras fasansfulla sätt", tills hon, på mitt ord, gjorde mig ganska obekväm.
En annan gruva på klippan gick av, följt av en liten rysning av jorden under mina fötter.
Arbetet pågick.
Arbetet!
Och det var här några av hjälparna hade dragit sig tillbaka för att dö.
De dog långsamt – det var mycket tydligt.
De var inte fiender, de var inte brottslingar, de var ingenting jordiskt nu – ingenting annat än svarta skuggor av sjukdom och svält, som låg förvirrade i det gröna mörkret.
De tog sig från kustens alla ingångar i all legalitet av tidskontrakt, förlorade i okongena omgivningar, matade sig med obekant mat, blev sjuka, blev ineffektiva och fick sedan krypa iväg och vila.
Dessa döende former var fria som luft – och nästan lika tunna.
Jag började urskilja glimten av ögon under träden.
När jag sedan glodde ner, såg jag ett ansikte nära min hand.
De svarta benen lutade sig i full längd med en axel mot trädet, och långsamt steg ögonlocken och de sjunkna ögonen tittade upp på mig, enorma och vakanta, ett slags blind, vitt flimmer i djupet av kloten, som dog ut långsamt.
Mannen verkade ung – nästan en pojke – men du vet med dem att det är svårt att säga.
Jag hittade inget annat att göra än att erbjuda honom en av mina goda Swedes fartyg kex jag hade i fickan.
Fingrarna stängde sakta på den och höll – det fanns ingen annan rörelse och ingen annan blick.
Han hade bundit lite vitt som hade gått snett runt halsen – varför?
Var fick han tag i den?
Var det ett märke – en prydnad – en charm – en försoningshandling?
Fanns det någon aning alls i samband med det?
Det såg förbluffande ut runt hans svarta hals, denna bit av vit tråd från andra sidan havet.
I närheten av samma träd satt ytterligare två buntar av spetsiga vinklar med uppritade ben.
En, med hakan på knä, stirrade på ingenting, på ett outhärdligt och skrämmande sätt: hans bror fantom vilade sin panna, som om den överväldigades med en stor trötthet; och allt omkring andra var utspridda i varje pose av förvriden kollaps, som i någon bild av en massaker eller en pest.
Medan jag stod skräckslagen, steg en av dessa varelser till hans händer och knän, och gick på alla fyra mot floden för att dricka.
Han la sig ur handen, satte sig sedan upp i solljuset, korsade skenorna framför honom, och efter en tid lät han sitt ulliga huvud falla på sitt bröstben.
Jag ville inte ha mer loitering i skuggan, och jag skyndade mig mot stationen.
När jag var nära byggnaderna träffade jag en vit man, i en så oväntad elegans att jag i första ögonblicket tog honom för en sorts vision.
Jag såg en högstärkelsekrage, vita manschetter, en lätt alpackajacka, snöiga byxor, en klar slips och lackerade stövlar.
Hår separerat, borstat, oljat, under en grönfodrad parasoll som hålls i en stor vit hand.
Han var fantastisk och hade en pennhållare bakom örat.
Jag skakade hand med detta mirakel, och jag fick veta att han var Bolagets chefsrevisor, och att all bokföring gjordes på den här stationen.
Han hade kommit ut för ett ögonblick, sade han, "för att få en frisk fläkt. "
Uttrycket lät underbart märkligt, med sitt förslag om stillasittande skrivbordsliv.
Jag skulle inte ha nämnt honom för dig alls, men det var från hans läppar som jag först hörde namnet på mannen som är så oupplösligt kopplad till minnena från den tiden.
Dessutom respekterade jag honom.
Ja, jag respekterade hans kragar, hans stora handbojor, hans borstade hår.
Hans utseende var förvisso en frisördockas utseende; men i den stora demoraliseringen av landet höll han upp sitt utseende.
Det är ryggrad.
Hans starmade kragar och fick upp shirt-fronter var bedrifter av karaktär.
Han hade varit ute i nästan tre år, och senare kunde jag inte låta bli att fråga honom hur han lyckades sporta sådant linne.
Han hade bara den svagaste rodnaden, och sa blygsamt, jag har undervisat en av de infödda kvinnorna om stationen.
Det var svårt, hon hade en avsmak för jobbet.
Denne man hade sannerligen åstadkommit någonting.
Och han ägnade sig åt sina böcker, som var i äppel-pie ordning.
Allt annat på stationen var i en röra, - huvuden, saker, byggnader.
Sträckor av dammiga niggrer med splay foots anlände och avgick; en ström av tillverkade varor, skräpiga bomullstyger, pärlor och mässing-tråd in i djupet av mörkret, och i gengäld kom en värdefull trickle av elfenben.
Jag var tvungen att vänta på stationen i tio dagar – en evighet.
Jag bodde i en hydda på gården, men för att slippa kaoset kom jag ibland in på revisorns kontor.
Den var byggd av horisontella plankor, och så illa ihopsatt att han, när han böjde sig över sitt höga skrivbord, var spärrad från hals till häl med smala solremsor.
Det fanns ingen anledning att öppna den stora fönsterluckorna för att se.
Det var varmt där också; stora flugor surrade fiendishly, och gjorde inte sticka, men knivhuggen.
Jag satt i allmänhet på golvet, medan, av felfritt utseende (och även lite doftande), snyftande på en hög pall, skrev han, skrev han.
Ibland stod han upp för motion.
När en lastbilssäng med en sjuk man (någon invalidiserad agent från upp-land) placerades där, visade han en mild irritation.
Den sjukes stönande, sa han, distraherar min uppmärksamhet.
Och utan det är det extremt svårt att vara på sin vakt mot skrivfel i detta klimat.
En dag sade han, utan att lyfta på huvudet, "I det inre kommer du utan tvekan att träffa Mr Kurtz."
När jag frågade vem Mr Kurtz var, sade han att han var en förstklassig agent; och när han såg min besvikelse över denna information, tillade han långsamt och lade ner sin penna: "Han är en mycket anmärkningsvärd person."
Ytterligare frågor föranledde honom att Mr Kurtz för närvarande var ansvarig för en handelspost, en mycket viktig sådan, i det sanna elfenbenslandet, "på botten av där.
Skickar in lika mycket elfenben som alla de andra tillsammans....
Han började skriva igen.
Den sjuke mannen var för sjuk för att sucka.
Flugorna surrade i en stor frid.
Plötsligt hördes ett växande ljud av röster och ett stort tramp av fötter.
För det fjärde, säg inte att vi inte var tillgängliga!
Det skulle verkligen vara kontraproduktivt att lägga fram ett erbjudande, som vissa redan har försökt, när ryssarna inte vill ha något med det att göra.
I våra förslag om Agenda 2000 har vi övervägt den sannolika framtida utvecklingen av konkurrensen mellan griskött och nötkött.
Om vi vid något tillfälle finner att så inte är fallet kommer vi att vidta lämpliga åtgärder.
Jag måste erkänna att jag ser frågan om en världsmarknadsorientering ganska annorlunda än den som lades fram för en stund sedan.
Gemensamt resolutionsförslag om krisen inom grisköttssektorn
Vi förespråkar en reform som innebär en anpassning av priserna till världsmarknadspriserna och en minskning av exportbidragen.
Slutligen vill jag här påpeka betydelsen av ett förslag som lagts fram av vår kollega Edouard des Places.
Jag anser att detta förslag skapar något slags prejudikat.
Det var ett ganska gripande faktum att jag var borta just denna fredag.
Vi behöver utländska investerare på platser som Telford, North Shropshire, Hereford, Ross-on-Wye och Wyre Forest.
Jag vill absolut inte att jordbrukare i länder som inte vill gå med i euron ska straffas.
Denna fluktuationsmarginal på 2,6 % är inget nytt, den finns redan inom det nuvarande systemet och tillämpas redan nu.
Den schablonmässiga metoden medför större risk för överkompensation, och därför har vi fastställt marginalen till 2,6 procent.
En stark euro kommer därför att straffa den europeiska jordbruksexporten.
Under dessa förhållanden, hur kommer framtiden för Europas landsbygdsområden att se ut som en följd av detta?
Vi i utskottet för jordbruk och landsbygdens utveckling anser att denna produktionsform bör uppmuntras.
Det görs för lite på detta område, mer måste göras, men vi måste undvika att skapa mer byråkrati.
Jag har inget emot att kvalitetsvaror släpps ut på världsmarknaden när det handlar om konkurrens.
För det första föreslås det att en förordning antas för att förbättra kvalitetsmärkningens öppenhet och äkthet.
Därefter föreslås inrättandet av ett europeiskt kvalitetsmärke som bygger på respekt för miljökriterierna för produktion.
Marknaden för jordbruksprodukter är därför inte längre enbart kopplad till priset, utan till regionen.
Vi i parlamentet vill lägga till en tredje kategori som omfattar ekologiska produkter som också uppfyller miljö- och djurskyddskriterierna.
Jag var nyligen i Polen för det gemensamma parlamentariska utskottet.
Men det är just därför vi först behöver en tydlig strategi.
I detta skede verkar det fortfarande lite för tidigt att inta en slutlig ståndpunkt i denna fråga.
Vi stöder införandet av ett europeiskt kvalitetsmärke som tar hänsyn till djurens välbefinnande och miljön.
För det andra kan vi inte stödja förslag om uppdelningen av finansiering eller kriterier i förhållande till den nya strukturfondsförordningen.
Vi välkomnar införandet av villkorade klausuler för den andra utbetalningen.
Resultaten från den fjärde etappen av mål 2-programmet, vars prioritering är att skapa arbetstillfällen, är relativt glädjande.
Tack, herr Donnay.
Escola Hernando talar för första gången här i kammaren.
Herr talman! Jag skulle bara vilja svara Kellett-Bowman i en mening.
Ordföranden har redan förklarat att förslaget lades fram i enlighet med arbetsordningen, så det finns ingen anledning att ändra något.
Vår grupp har lagt fram flera ändringsförslag i denna riktning.
Programmet har också bidragit till verksamhet som bedrivs av 50000 kreativa eller utövande konstnärer och andra specialister inom kultursektorn.
Besluten antogs enhälligt.
Jag förklarar den gemensamma debatten avslutad.
Parlamentets föredragningslista är avslutad.
Plenarsessionens inledning
I går var det mitt privilegium och nöje att få två minuters talartid i denna kammare.
Det var uppenbarligen av spänning vid denna stora händelse som jag glömde att skriva i registret.
Mina damer och herrar! Det är bra att detaljerna för ledamöternas närvaro korrigeras.
Det är fel.
Denna punkt har förts upp på föredragningslistan på rätt sätt och kommer att gå till omröstning i dag kl. 12.00.
Tidsfristen löper ut i dag, så om vi inte röstar kommer vi att missa möjligheten att avge vårt yttrande.
Att utarbeta ett EU-omfattande harmoniseringsdirektiv om en så komplicerad fråga som energi är verkligen en komplicerad fråga.
Jag anser att kommissionens ursprungliga strategi var klok, eftersom problemet kräver otaliga undantag från den allmänna regeln.
Fru talman! Vår kollega Cox har gjort ett utmärkt arbete med kommissionens förslag.
Gruppen De gröna håller helt med Spencer om att vi måste bevara detta förslag om en koldioxidskatt.
Skatterna kommer att hamna i den tyska statskassan istället för den danska statskassan.
Icke desto mindre skulle jag vilja ta upp två punkter som nämns i miljöutskottets betänkande.
Jag skulle också vilja veta hur ni ser på tidpunkten.
Detta är lagstiftning som kräver enhällighet i rådet, vilket vanligtvis är en garanti för passivitet.
Denna indexering omfattar också begreppet accelerator.
Med andra ord finns det en konflikt mellan de skatteliknande och skatteliknande målen; du kan inte äta din kaka och äta den.
Denna tekniska insats skulle bestraffas och konkurrenskraften på det internationella området äventyras.
Mot bakgrund av denna situation har vi svårt att godta ett antal ensidiga förslag som lades fram.
Det är därför oacceptabelt att tvinga medlemsstaterna att tillämpa ökningar som faktiskt ligger över inflationstakten.
Du kan reglera marknaden, men du kan inte reglera naturen, vädret och skörden.
I ett ändringsförslag finns det en uppmaning om att införa ren och enkel förnyelse av vinodlingar i omstruktureringsåtgärderna.
Vi vill dock begränsa rådets förordningar till allmänna bestämmelser och till att omfatta de återstående bestämmelserna i genomförandeförordningarna.
Alla kommer därför att förstå varför jag förkastar dem.
Jag vill börja med konventionen om tredjelandsmedborgare, som förvisso är det mer komplicerade lagstiftningsprojektet.
Enbart erbjudandet om ett arbete skulle vara tillräckligt för att rättfärdiga invandringsrättigheterna.
De har inte alla mötts, men många har gjort det.
För det andra anser jag att det är dags för Europaparlamentet att föregå med gott exempel.
Å andra sidan bör dessa ursprungliga kriterier också innehålla bestämmelser som gör det möjligt att avskaffa förteckningen.
En sådan situation är oacceptabel.
Jag är helt och hållet intresserad av detta och av att söka lösningar.
Vi måste hjälpa dem att förbättra sin gränssäkerhet.
Det är hela den politiska klassen som ifrågasätts om det sätt på vilket den måste anta dessa utmaningar.
Slutligen vill jag säga att den politik som står i centrum för vår debatt är en del av en helhetsbild.
Jag vill också säga något om de två ändringsförslag som lagts fram av min grupp.
Vi vill att saker och ting regleras ordentligt så att problemet kan komma under kontroll.
Han har konsekvent kopplat invandringen till arbetslöshet, otrygghet och kriminalitet, som om ondskan alltid kommer från andra håll.
Jag skulle verkligen vilja veta hur ni kan fly in i Europa.
Vi har diskuterat denna fråga ända sedan jag var i parlamentet.
Jag hoppas att de kommer att förkastas eftersom de verkligen är en bild av vad parlamentet inte kan göra.
Därför hade jag hoppats kunna räkna med ett tydligt stöd från Europaparlamentet.
Naturligtvis kommer kommissionen att göra sitt bästa för att se till att framsteg görs.
Den förordning som ogiltigförklarades grundade sig på artikel 100c i Maastrichtfördraget.
Debatten är härmed avslutad.
Jag ansåg att det var lämpligt att på nytt lägga fram tre av de tolv ändringsförslag som rådet förkastade vid andra behandlingen.
Jag måste erkänna att jag hade allvarliga betänkligheter under den första behandlingen av direktivet.
Vi kanske bara ytterligare komplicerar en fråga som verkligen borde ha lämnat parlamentet så snabbt som möjligt när ett beslut väl hade fattats.
Kemikalier står fortfarande på vår dagordning i EU.
Det har förekommit ett utmärkt samarbete om detta mycket tekniska förslag.
Tack och lov har vi äntligen nått det sista steget före antagandet.
Parlamentet godkände ett brådskande förfarande den 22 mars.
Ändring av arbetsordningen
De lämnar utrymme och luckor att fylla i.
Denna nya rättsligt bindande omröstning framhävs i översynen av arbetsordningen genom att den beskrivs som val av kommissionen.
De innehåller bestämmelser om hanteringen av den nya höga representanten för den gemensamma utrikes- och säkerhetspolitiken.
Jag skall inte gå in på detaljer om den höga representanten, eftersom hans eller hennes funktion redan har diskuterats ingående.
Slutligen, nu när jag diskuterar resurser, ny teknik och talartid, har min egen talartid gått ut.
I den andra delen klargörs att förmåner till ett värde som överstiger 100 ecu måste deklareras.
Betänkandet är också oförsiktigt när det gäller att införa frågor som inte ingår i talmanskonferensens mandat.
Yttrandet måste uttryckas vid omröstningen om den fullständiga texten i utskottet.
Men det är egentligen inte mitt problem.
Vad jag kritiserar är den anda som ligger bakom dessa ändringsförslag.
Detta är den sista regeln i vår arbetsordning och den gäller bilagorna.
Låt mig börja med att säga att jag inte tänker tala om mitt eget betänkande.
Trots detta kommer vi säkerligen att överväga de förslag som lagts fram av den socialdemokratiska gruppen.
Den första gäller förslaget att förhindra att politiska grupper bildas av ledamöter från endast ett land.
Den andra frågan gäller incitamenten.
Jag anser att det är genomförbart, även om det kan vara något komplicerat.
Jag är ingen fanatisk försvarare av vinster för multinationella läkemedelsindustrin.
Vi stöder professor Cabrols försök att få saker att röra sig och lägga osäkerheten bakom oss.
Herr talman, mina damer och herrar! Det föreliggande förslaget till förordning är verkligen välkommet.
Naturligtvis kan vi göra det direkt genom stöd till forskning, och vi kommer att fortsätta att göra det i framtiden.
Men vi vill också skapa en rad ytterligare incitament, till exempel genom den tioåriga ensamrätten på marknaden.
Medlemsstaterna skulle vara tvungna att göra det.
Jag är mycket glad över att vissa ledamöter också talade för ett särskilt utskott under debatten.
Men då måste ni komma ihåg syftet med vårt förslag.
Därför vill vi stödja forskningen i stället för att göra den svårare.
Vi anser att detta är en risk som vi inte nödvändigtvis bör ta.
För per definition är ett särläkemedel just ett läkemedel som erbjuder mycket begränsade utsikter till vinst.
Den gamla svala luften i rummet hade värmt upp, men tröttheten avtog, hans huvud lämnades högt och torrt av det.
Det var tystnad och sedan hörde han att det fanns röster i tystnaden som dreglade någonstans, bröts av för att andas, skrattade – inte mjukt, utan mjukades upp genom att vara nästan utan öronsprängning.
Inte riktigt.
En röst separerade, sår närmare, det var start upp av en väss (en slang, tänkte han) och han gjorde ett ord: inte bara som en särskild kombination av artikulerade ljud, men en mening:
Det sammansatta ordet för denna fras, på det språk som talades runt huvudstaden, och som han aldrig riktigt hade känt väl.
Han steg upp och gick över till huvudbyggnaden för att bada.
Solen i trädgården brann, bländande, fångande.
I badrummet surrade flugor ihjäl sig mot fönsterrutorna.
Roly var ungkarl och hans hus var den speciella blandningen av lugn lyx och oföränderlig torrhet som är ett tillstånd av hushåll där vita män lever hänge sig åt den enda anklagelsen av svarta manliga tjänare.
Cisternen i toaletten duggades ner i pannan hela tiden och kunde inte spolas ordentligt, och handdukarna var stela som en dress-shirt (Olivia hade tagit år att få folk att lära sig att skölja tvålen ur tvätten), men en gammal man i en kock hatt satte te under träden för honom och bar av hans skrynkliga kostym att tryckas utan att bli tillfrågad.
En ung man klippte det hårda gräset med en järnlängd böjd i slutet.
Grova och florida buskar, hibiskus med sina stora blommor slampiga med pollen och myror och poinsettia utsöndrade mjölkig sekretion, blommade ge en uppvisning av fruktsamhet till den röda, fattiga jord som sprang bakad skallig under gräset, slog slemmiga av regnen under träden, och spröd endast där myror hade smält den och gjorde små skorpiga tunnlar.
En rik stanken av döda djur steg självdispergerad, som en gas, då och då när han drack sitt te, och han steg upp och tittade runt, som han hade gjort så många gånger tidigare, och med så lite framgång, för att se om en råtta eller mullvad ruttnade någonstans.
Vad det än var kunde man aldrig hitta; det var lukten av tillväxt, de hade för länge sedan beslutat, på Gala, processen av förfall och förnyelse så accelererad, förde så nära samman att det producerade stinker av död-och-liv, allt på en gång.
Han promenerade till gränsen för trädgården och klättrade genom taggtrådsstaketet, men gräset och törnbusken på andra sidan (Dandos plats var åtta kilometer utanför staden) var alltför insnärjda för att gå där det inte fanns någon stig.
Han lyssnade på busken och hade den gamla känslan, i busken, av att bli lyssnade efter.
Det fanns – eller brukade vara – leoparder i utkanten av staden; Dando hade en gång tagit sin hund.
Han gick omkring hundra meter uppför vägen och mötte en man på en cykel och hälsade på honom på det språk som hade kommit tillbaka till honom när han låg i rummet.
Klockan sex kom Roland Dando hem.
Han tittade oroligt från bilen som om han, trots telefonsamtalet, inte var säker på om Bray hade mottagits säkert, men när han såg honom betedde sig som om de hade sett varandra för en vecka sedan.
Han var indiskret, liksom många människor som bor ensamma, och tog med sig honom från staden – ett barn som bultade med tjänster från ett parti – alla anekdoter och skvaller om självständighetsfirandet, vilket i en klamrande fluff av antaganden och rykten, bitar och bitar av verklig information och åsikt om Mwetas position och den typ av lag han hade samlat runt sig.
En annan bricka kom ut under träden, den här gången med whisky och gin.
En gammal svart Labrador med majs på armbågarna stod sakta svängande svansen innan Dando som han pratade.
Jason skulle inte ta hem någon gyllene fleece, tro mig (Jason Malenga var den nya finansministern); nej, det var inte något dåligt att den brittiska polischefen inte hölls på, människor alltid bedöms av Kongo, idioterna, men den afrikanska vice, Aaron Onabu, var perfekt kapabel att ta över från den dodderer ändå; Talisman Gwenzi var första klass, och en riktig Mweta man, David Sambata var en okänd mängd för jordbruk
Dando drog ut fästingar från hundens hals och spräckte dem under skon medan han drack och avgjorde domar.
Av en sorts svartsjuka hos de nya unga männen från Storbritannien och Amerika som var så noga med att visa sin brist på färgkänsla genom att undvika besudlade ord och tala till människor med artiga former, använde han oförlåtligt den gamla nybyggarens vokabulär som återspeglade en attityd som han aldrig hade haft någon del i.
Roly Dando kunde säga vad han gillade:
Roly Dando hade inte upptäckt de svarta som sina medmänniskor förrän igår.
Naturligtvis måste Mweta dela ut ett jobb till alla.
Varje pompös idiot från bushen som fyllde sin pipa med tobak köpt med avgifter från den lokala parti grenen.
De är alla hjältar, du vet, hjältar i kampen.
Slåss mot min röv.
Edward Shinza är en av de få som gjorde hans stretch och fick sitt huvud spräckt den gången av Hennes Majestäts modiga pojkar, och var är han ... tillbaka i Bashi Flats bland sina gamla fruar, för allt jag vet, ingen ens nämner hans namn.
Men Shinza är här för självständighetsceremonin?
Roly bländade.
Ingen bryr sig om var han är.
Men han är i stan, nu?
Jag vet inte var han kan vara.
Menar du att Edward inte ska delta i firandet?
Det är inte möjligt.
Har han inte kommit upp till stan?
Du kan se att han inte har fått en kabinettspost.
Jag antar att han inte dyker upp för äran att stå i folkmassan och vifta med en flagga, va?
Men det är löjligt, Roly.
Du känner Shinza.
Han vet vad han vill.
Jag trodde att han skulle bli ambassadör i FN.
Ge tid för Mweta att lysa på egen hand ett tag, och varje spänning mellan dem att dö ner.
Självklart borde han ha tagit utrikesdepartementet.
Men det är mellan dem.
Du kan fråga Mweta, om du får en chans att prata med honom, fråga honom om han inte kommer att hitta ett piddlande litet jobb någonstans, något med en anständig etikett till det, för stackars gamla Shinza, han bankade på Colonial Secretary dörr med en panga medan Mweta var en snobbig pikannin sjungande psalmer upp på missionsskolan.
Dando lyste petishly över sin tredje eller fjärde gin och ingefära öl.
Han fick sätta sig själv på konstiga blandningar.
Han brukade dricka en i flera månader och sedan byta, av liknande goda skäl (den var mer smältbar, det var mindre sannolikt att producera en efter-thirst) till en annan.
Mweta är inte sån.
Du känner Mweta.
Jag känner Mweta.
Men där är presidenten, nu.
Om det finns en far till staten, måste det vara han eller ingen.
Jag hade verkligen intrycket av vilken spänning som helst som hade lättat upp, senast jag såg Mweta i London.
Ja, stackars Shinza, det är vad alla säger.
Stackars Dando.
Dando förklarade inte ändringen av referensen.
Han kanske helt enkelt anmärkte på att han själv skulle bli äldre.
Han såg säkert äldre ut.
Hans lilla näsa visade sig oväntat näbbig nu när huden hade sjunkit på båda sidor.
Bray hade många frågor, inte alla snälla, att ställa om andra människor.
Några av svaren var extraordinära;
De två männen påskyndade utbytet av förvåning, ironiskt nöje och (från Dandos sida) föraktlig indignation med vilken han berättade och Bray lärde sig den snabba om-ansikte genom vilken några vita människor vände ett leende mot den nya regimen, medan andra redan hade packat och lämnat landet.
Sir Reginald själv kommer att presentera Mweta med en buta-trä lektor och silver bläckställ, det är nere för tisdag eftermiddag.
Dando var glad.
Sir Reginald Harvey var ordförande för konsortiet av de tre gruvkoncessionsföretag, och det var allmänt känt att han, som en personlig vän till Redvers Ledley, den mest impopulära guvernör som territoriet någonsin hade haft, hade påverkat guvernören att förbjuda gruvarbetarfacket vid en tidpunkt då Mweta och Shinza använde det för att främja självständighetsrörelsen.
Det var en berömd tidningsintervju där han hade kallat Mweta den där golliwog från Gala, och uppfostrat dess oregerliga och missriktade huvud i plantskolan för arbetsmarknadsrelationer i detta unga land.
Det är tillräckligt för att få håret att stå på slutet, sade Dando; och njöt av effekten.
Folkets självständighetsparti hade då tagit Harveys kommentar som en förolämpande hänvisning till Mwetas hår; han hade fortfarande allt, och det skulle definitivt vara ett bevis på tisdagen.
Bray upprepade vad som hade sagts till honom på flygplatsen den morgonen – att några av de vita som fortfarande bor i huvudstaden skulle vara mer hemma i söder, i Rhodesia eller Sydafrika.
Ras Asahe menade de vita -
Alla vet att efter slutet av året kommer de att vara på kontrakt, och det innebär att de kommer att ersättas om tre år.
Inte för att de någonsin ansträngde sig.
- Vad hade du väntat dig?
Du behöver inga idéer, du behöver inte flytta dig ur stolen, du fortsätter helt enkelt att producera ett ljud ur den magiska lådan för att hålla infödingarna tysta – och nu, boom, allt är borta, inklusive det enda incitament de någonsin haft, deras pension.
De är patetiska.
De har inte mycket att erbjuda när de söker jobb hos BBC.
De kommer bara inte att hitta några.
De vill gå, de längtar efter, du kan se att de inte står ut med synen av ditt ansikte när ni arbetar tillsammans... vilket gör saker och ting mycket trevliga, du kan tänka dig...
En smal liten vit flicka halkade mellan dem och tog Ras Asahe hand med guld-metall klocka-bracelet som om det var någon egendom hon hade lagt ner...
Rädda mig från pappa Dando.
Jag skulle kunna ge er ett dussin exempel på det slags saker som händer – ceremonin i eftermiddag: som en hästkapplöpning, man – arrangemangen var exakt vad de brukade använda för välgörenhet jul Handicap, vad mer vet de?
Föreslå vad du vill, de bara prata bort det i cigarettröken, ingen ens lyssnar.
Flickan var där i sitt samtal som ett fotografi kom på liggande mellan sidorna i en bok; Bray var inte säker på om hon var barn eller kvinna: tunna kragar-ben, en lång hals med ett ansikte knappast bredare, blek och såld, en stor, tunn, omålad mun, svart hår och glittrande, sorgsna svarta ögon.
Hon bar en klänning gjord av kongotyg.
Tänk om de inte fick kontrakt i slutet av året?
Hur är det med det gyllene handslaget – skulle det inte vara billigare, i slutändan?
Inte om det inte görs några förberedelser för att ersätta dem under tiden.
Jag försökte för två år sedan starta ett pilotprojekt för att skicka iväg lokalbefolkningen för utbildning i radio- och tv-teknik –
Om jag var tvungen att ta över engelskspråkiga tjänster i morgon, vet du vad jag skulle behöva göra det med ett gäng Lambala och talare från de venakulära sektionerna och några flyktingskollärare från Sydafrika.
Flickan satt och såg ingenting, som ett djur utan andedräkt, som höll sig undan från faran.
Bray var tvungen att resa sig för att introduceras till en stor kvinna som markerar tiden på kanten av dansarna med den amerikanska, Curtis Pettigrew: hon var en västafrika som Timothy Odara hade gift sig med sedan Bray såg honom sist.
Hon talade också med en amerikansk intonation, och i sin praktfulla nationalklänning släpade hon runt henne som om hon rycktes direkt från den lysande bulten på en butiksdisk, hon verkade på alla sätt dubbelt så stor som de lokala afrikanska kvinnorna, som vanligtvis hölls hemma, och visade det.
Pettigrew hälsades av någon, och Bray och kvinnan lämnades vända mot varandra som dansarna;
Hon lade handen på hans arm.
När de flyttade sa hon: "Gissa vad jag heter?"
Samma som din, tror jag.
Men de kallar mig James.
Det hoppas jag verkligen.
Jag har äntligen valt någon i min egen storlek ikväll.
Vi kan sopa de andra från golvet.
Hon höll kontakt runt henne när de dansade, pratade över hans axel till denna, sätta ut en bred kallbrun fot i en guldsandal för att knuffa den i kalven.
Få henne att sjunga, Dando ropade stolt.
Inte i kväll, Dandy-Roly. Jag uppför mig på bästa sätt.
Skulle det skämma ut Evelyn om hon sjöng?
Inte det minsta.
Vad då för saker?
Vad tyckte du?
Vad ser jag ut som om jag skulle sjunga?
Hon hade självförtroende av en kvinna av dynamisk fulhet.
En snort av njutning:
Fortsätt!
Jag har en röst som en bullgroda.
Det är hemskt när jag sjunger de gamla sångerna hemifrån men det är inte så illa på engelska – engelska är ändå ett så grovt språk.
Vivien Bayleys brådskande ansikte tog upp samtal i förbigående, det är Hjalmar Wentz dotter... du satt med.
Den orientaliska flickan med Ras?
Visst är hon en underbar varelse?
Margot skulle bara låta henne komma om jag lovade att hålla henne sysselsatt.
Lämnade du henne inte med Ras?
Han rörde på axlarna hjälplöst.
Dansarna föll tillbaka runt en polsk lantbrukare som undervisade en engelsman och två unga afrikaner en östeuropeisk bondedans.
Det kongolesiska bandet hade ingen aning om vad musik skulle göra, och producerade en stampande crescendo; sedan spelade en av polackerna piano, och Neil Bayley flyttade in på trummorna.
Den grundläggande formen av självuttryck som framträder där engelsmännen vill ge sig själva till firandet påtvingade sig själv ett tag.
Någon gick och dök upp igen med en låda champagne.
Vinet var varmt, men ett tidigt morgonregn kom ut som svett, och svalka blåste in på halsar och ansikten.
Senare sjöng kvinnan Odara den nya nationalsången i en vacker controlto, och hennes stora mage darrade under manteln.
De unga ungkarlarna rotade och de rufsiga flickorna, gick i närheten eller log plötsligt mot människor som de inte var medvetna om, gav upp doften av kosmetika och parfym som värmdes upp på deras kroppar.
Sedan var det frukost på Bayleys '; en gallring av ansikten, men några hade fortsatt att dyka upp hela natten i det föränderliga ljuset.
De sade god natt till varandra i den ljusa lutande solen och Bayley barnen var redan ute på gräset i deras pyjamas, ridande cyklar.
På några dagar hade ansikten förlorat den stiliserade, uppenbarelse-kvalitet av den första natten, natten av självständighetsbalen, och bli, om inte bekant, åtminstone förväntat.
En ung kvinna var inne och ut i Bayleys hus, ibland lägga till, ibland bära iväg med henne de många barn som lekte där.
Hon var Rebecca, Rebecca Edwards, som en stor, otjänlig skolflicka i sin bomullskjorta och sandaler, bilnyckeln på hennes pekfingerjingling trakasserad.
Hon skickades alltid för att hämta folk när arrangemangen gick snett.
Hon kom till Bray en eftermiddag i en gammal stationsvagn full med sötpapper, udda strumpor och Dinky-leksaker.
Det var hon som hade gett henne glas till honom den kvällen på självständighetsfesten;
polacken som hade dansat gazatska blev den man med vilken han graviterade till ett lugnt hörn så att de kunde tala om Galas och Lambalas underliga grammatikstruktur.
Stämningen på festerna var vad han trodde att det måste ha varit vid sammankomster som beskrevs i 1800-talets ryska romaner.
Barn svepte in och ut, stridslystet nöjessökande.
Barn sov i mörka rum.
Maten tillagades av många händer.
Inbjudningarna mättes endast efter hur länge ölen och vinet varade.
Han kände sig själv som medelålders släkting, en man med vagt anseende kommer från långt till bröllopet och dras hjälplöst och inte olyckligt in i allting.
Det var, på ett märkligt sätt, en förlängning av vad han var vid de officiella mottagningarna där många människor hade föga aning om vem den vita främlingen var, sittande på en blygsam hedersplats;
Och en gång, vid en pressmiddag Mwetas hänvisning till närvaron av en av de fe gudmor' som hade varit närvarande vid dopet och hade återvänt för att komma-av-åldern av staten gick, tack gode Gud, obemärkt som en hänvisning till sig själv.
Det blev hans Independence story; som historien om cigarettföretagets helikopter var Neil Bayley's, relaterat om och om igen medan det privata dramat mellan man och hustru som hade gjort det passera oremarkerade på den tiden var ganska bortsläppt ur sammanhanget.
Bray frågade överallt om Edward Shinza; han var verkligen inte bevis vid något officiellt tillfälle.
Dobby blinkade oroligt upp på Harry.
Harry lyssnade inte.
Han tog tag i breven, men Dobby hoppade utom räckhåll.
Det här är en fara ni inte får möta!
Ge mig mina vänners brev!
Innan Harry kunde röra sig hade Dobby rusat mot sovrumsdörren, dragit upp den – och sprungit nerför trappan.
Muntorrhet, magknipande, Harry sprungen efter honom, försöker att inte göra ett ljud.
Han hoppade de sista sex trapporna, landade kattliknande på hallmattan och letade efter Dobby.
Harry sprang upp i köket och kände sin mage försvinna.
Moster Petunias mästerverk av en pudding, ett berg av grädde och söta violer, flöt upp nära taket.
På toppen av ett skåp i hörnet hukade Dobby.
Harry Potter måste säga att han inte ska tillbaka till skolan.
Dobby gav honom en tragisk blick.
Puddingen föll till golvet med en hjärtstoppande krasch.
Grädde stänkte fönster och väggar när skålen krossades.
Med en spricka som en piska försvann Dobby.
Det skrek från matsalen och farbror Vernon sprack in i köket för att hitta Harry, stel av chock, täckt från huvud till fot i moster Petunias pudding.
Först såg det ut som om farbror Vernon skulle lyckas släta över allt (bara vår brorson – mycket störd möte främlingar gör honom upprörd, så vi höll honom på övervåningen)
Han körde in frimurarna i matsalen, lovade Harry att flå honom inom en tum av sitt liv när frimurarna hade gått och gav honom en mopp.
Tant Petunia grävde lite glass ur frysen och Harry, som fortfarande skakade, började tvätta köket rent.
Farbror Vernon kunde fortfarande ha kunnat göra sitt avtal – om det inte hade varit för ugglan.
Moster Petunia lämnade bara runt en låda med eftermiddagsmyntor när en stor ladugårdsuggla svepte genom matsalsfönstret, tappade ett brev på mrs Masons huvud och svepte ut igen.
Mrs Mason skrek som en banshee och sprang hemifrån och skrek om galningar.
Mr Mason stannade bara tillräckligt länge för att berätta för Dursleys att hans fru var dödligt rädd för fåglar av alla former och storlekar, och för att fråga om detta var deras idé om ett skämt.
Harry stod i köket och höll fast moppen för stöd när farbror Vernon avancerade på honom, en demonisk glittrande blick i hans små ögon.
Harry tog den.
Den innehöll inte födelsedagshälsningar.
Kära mr Potter.
Vi har fått information om att en Hover Charm användes på din bostad i kväll vid tolv minuter över nio.
Som ni vet är minderåriga trollkarlar inte tillåtet att utföra trollformler utanför skolan, och ytterligare stavningsarbete från er sida kan leda till utvisning från nämnda skola (Decree för rimlig begränsning av minderåriga trolldom, 1875, punkt C).
Vi ber er också att komma ihåg att all magisk verksamhet som riskerar att upptäckas av medlemmar i det icke-magiska samfundet (Muggles) är ett allvarligt brott, enligt avsnitt 13 i Internationella krigsförbrytarförbundets sekretessstadga.
Ha en trevlig semester!
Högaktningsfullt, Mafalda Hopkerk
OFÖRBÄTTRAD ANVÄNDNING AV MAGISK BYRÅ
Harry tittade upp från brevet och gullade.
Han slog ner på Harry som en stor bulldog, alla hans tänder bars.
Jag låser in dig, du åker aldrig tillbaka till skolan och om du försöker trolla ut dig själv kommer de att relegera dig!
Han skrattade som en galning och släpade Harry upp igen.
Farbror Vernon var lika dålig som hans ord.
Följande morgon betalade han en man för att få plats med galler på Harrys fönster.
Han satte själv in en kattlapp i sovrumsdörren, så att små mängder mat kunde skjutas in tre gånger om dagen.
De släppte ut Harry för att använda badrummet morgon och kväll.
Annars var han inlåst i sitt rum dygnet runt.
Tre dagar senare visade Dursleys inga tecken på eftergivenhet och Harry kunde inte se någon utväg ur sin situation.
Han låg på sin säng och såg solen sjunka bakom gallren på fönstret och undrade desperat vad som skulle hända med honom.
Vad var det goda med att trolla sig ut ur sitt rum om Hogwarts skulle driva ut honom för att han gjorde det?
Ändå hade livet på Privet Drive nått en rekordlåg nivå.
Nu när Dursleys visste att de inte skulle vakna som fruktbiffar, hade han förlorat sitt enda vapen.
Dobby kunde ha räddat Harry från hemska händelser på Hogwarts, men hur det gick skulle han nog svälta ihjäl ändå.
Kattflatan skakade och tant Petunias hand dök upp och knuffade in en skål med förtennad soppa i rummet.
Harry, vars inälvor värkte av hunger, hoppade ner från sängen och grep tag i den.
Soppan var stenkall, men han drack hälften av den i en matstrupe.
Sedan gick han över rummet till Hedwig's bur och tipsade de blöta grönsakerna längst ner i skålen i hennes tomma matbricka.
Hon rörde om i fjädrarna och gav honom en blick av djup avsky.
Han lade tillbaka den tomma skålen på golvet bredvid kattflatan och lade sig ner på sängen, på något sätt ännu hungrigare än han hade varit innan soppan.
Om han fortfarande levde om fyra veckor, vad skulle hända om han inte dök upp på Hogwarts?
Skulle någon skickas för att se varför han inte hade kommit tillbaka?
Skulle de kunna få Dursleys att släppa honom?
Rummet började bli mörkt.
Utmattad, magknipande, sinne som snurrade över samma obesvarbara frågor, Harry föll i en orolig sömn.
Det fanns ett stort fotografi på framsidan av en mycket snygg trollkarl med vågigt blont hår och ljusa blå ögon.
Som alltid i trollkarlsvärlden rörde sig fotografiet; trollkarlen, som Harry trodde var Gilderoy Lockhart, fortsatte att blinka upp på dem alla.
Mrs Weasley strålade ner mot honom.
Var inte så löjlig, Fred, sa Mrs Weasley, hennes kinder ganska rosa.
Yawning och knotande, Weasleys smög ut med Harry bakom sig.
Trädgården var stor, och i Harrys ögon, exakt vad en trädgård skulle vara.
Dursleys skulle inte ha gillat det – det fanns gott om ogräs, och gräset behövde klippas – men det fanns morrade träd runt väggarna, växter Harry hade aldrig sett spilla från varje rabatt och en stor grön damm full av grodor.
Det var ett våldsamt surrande ljud, pionbusken ryste och Ron rätade upp sig.
Det här är en gnome, sa han grymt.
Det var verkligen inte alls som jultomten.
Det var litet och läderaktigt, med ett stort, knoppigt, skalligt huvud precis som en potatis.
Ron höll den på armlängds avstånd när den sparkade ut mot honom med sina kåta små fötter; han greppade den runt vristerna och vände den upp och ner.
Ron såg den chockade minen på Harrys ansikte, tillade han, Det skadar dem inte – man måste bara göra dem riktigt yr så att de inte kan hitta tillbaka till gnomehålen.
Han släppte gnomens vrister: den flög 20 meter upp i luften och landade med en duns på marken över häcken.
Harry lärde sig snabbt att inte tycka för synd om tomtarna.
Han bestämde sig för att bara släppa den första han fångade över häcken, men gnomen, som kände svaghet, sänkte sina rakbladsskarpa tänder i Harrys finger och han hade ett svårt jobb att skaka av den tills -
Luften var snart full av flygande gnomer.
Så fort de vet att avgnimningen pågår stormar de upp för att ta en titt.
Snart började skaran av gnomer på fältet gå sin väg i en stragglande linje, och deras små axlar böjde sig.
Just då smällde ytterdörren igen.
Han är tillbaka, sa George.
De skyndade sig genom trädgården och tillbaka in i huset.
Mr Weasley var nedsänkt i en köksstol med glasögonen av och ögonen stängda.
Han var en tunn man som blev flintskallig, men hans lilla hår var lika rött som alla hans barns.
Han hade långa gröna dräkter som var dammiga och reseslitna.
Mr Weasley tog en lång klunk te och suckade.
Hittar du nåt, pappa? sa Fred ivrigt.
Bara mutgle-baiting, suckade Mr Weasley.
Naturligtvis är det mycket svårt att döma någon eftersom ingen Muggle skulle erkänna att deras nyckel fortsätter krympa – de kommer att insistera på att de bara fortsätter att förlora den.
Mrs Weasley hade dykt upp och höll i en lång poker som ett svärd.
Mr Weasleys ögon ryckte upp sig.
Han stirrade skuldfullt på sin fru.
Ja, Arthur, bilar, sa Mrs Weasley, hennes ögon blinkar.
Mr Weasley blinkade.
Bara så du kunde fortsätta mixtra med allt det där Muggle skräpet i skjulet!
Han såg sig omkring, såg Harry och hoppade.
Trevligt att träffas, Ron har berättat så mycket om...
Jag – jag menar, han vacklade som gnistor flög från Mrs Weasleys ögon, att – det var mycket fel, pojkar – mycket fel verkligen
De halkade ut ur köket och nerför en smal passage till en ojämn trappa, som sicksackade sig upp genom huset.
Vid den tredje landningen stod en dörr på glänt.
Harry fick just syn på ett par ljusa bruna ögon som stirrade på honom innan det stängdes med ett kick.
De klättrade ytterligare två flyg tills de nådde en dörr med flagnande färg och en liten plack på den, säger Ronald's Room.
Harry klev in, hans huvud nästan rörde det sluttande taket, och blinkade.
Det var som att gå in i en ugn: nästan allt i Rons rum verkade vara en våldsam nyans av apelsin: sängöverkastet, väggarna, även taket.
Sedan insåg Harry att Ron hade täckt nästan varje centimeter av den sjabbiga tapeten med affischer av samma sju häxor och trollkarlar, alla klädda i ljusa orange dräkter, bär kvastskaft och viftar energiskt.
Rons skolformelböcker staplades oidily i ett hörn, bredvid en hög med serier som alla verkade innehålla The Adventures of Martin Miggs, The Mad Muggle.
Rons magiska trollspö låg ovanpå en akvarium full av grodor som lekte på fönsterbrädan bredvid hans feta grå råtta, Scabbers, som sov i en solfläck.
Harry klev över ett paket spelkort på golvet och tittade ut genom det lilla fönstret.
På fältet långt nedanför kunde han se ett gäng gnomer smyga, en efter en, tillbaka genom Weasleys häck.
Sedan vände han sig om för att titta på Ron, som nästan tittade på honom nervöst, som om han väntade på sin åsikt.
Inte som rummet du hade med Muggles.
Rons öron blev rosa.
Livet på Burrow var så annorlunda som möjligt från livet i Privet Drive.
Dursleys gillade allt snyggt och beställt; Weasleys hus brast av det konstiga och oväntade.
Ghoulen på vinden ylade och tappade rör när han kände att det blev för tyst, och små explosioner från Freds och Georges sovrum ansågs helt normala.
Det Harry fann mest ovanligt med livet hos Rons var dock inte den talande spegeln eller den klingande ghoulen: det var det faktum att alla där verkade gilla honom.
Mrs Weasley bråkade om tillståndet i sina strumpor och försökte tvinga honom att äta fjärde portioner vid varje måltid.
Mr Weasley tyckte om att Harry satt bredvid honom vid middagsbordet så att han kunde bombardera honom med frågor om livet med Muggles, och bad honom förklara hur saker som pluggar och posten fungerade.
Genialiskt, hur många sätt Muggles har hittat på att klara sig utan magi.
Harry hörde från Hogwarts en solig morgon ungefär en vecka efter att han hade anlänt till Burrow.
Han och Ron gick ner till frukost för att hitta Mr och Mrs Weasley och Ginny redan sitter vid köksbordet.
Och gjorde han det?
Vad?
"Bli någon annan."
Ja, det gjorde han.
Det fanns kompensationer.
Nu när jag officiellt inte var smart började min far ta med mig på sina affärsresor.
Han räknade med att om jag inte kunde dra nytta av en dyr utbildning skulle jag kanske kunna dra nytta av erfarenheten.
Mina systrar sändes till Benenden, och jag gick i den katolska skolan på orten, från vars fromhet och hemekonomi jag ofta togs bort för att följa med min far.
1973, när jag var tretton, flög vi till New York för att gå med i QE2 på en Comet Watch.
Det var detta som besudlade min framtid.
Och om hon tänkte på skolan, eller hans första jobb i en krage och slips medan hans kompisar var vid båtarna, eller den vanliga flickan som hade älskat honom, eller hennes egen stolthet, berättade hon aldrig för mig, då eller när som helst.
Precis som min far kunde hon inte säga vad hon kände.
Till skillnad från honom visste hon detta och satt många timmar med huvudet i händerna, tänkte jag då, för att få orden att falla ut.
Men orden föll inte ut och hennes känslor hängde i henne, bevarade.
"Åh inte än, sa min mamma.
Far sade: "Det fanns inget att säga."
Jag kände att min far hade gått till sin död.
"Jag skulle ha städat upp först," sade hon.
Alluvia: de avlagringar som samlas in och sprutas ut vid floden.
Du föddes 1940.
Han föddes 1947."
Jag bär vit rock, knyter håret tillbaka och antar den rätta inställningen till vad jag kallar mitt liv.
Jag ska undersöka det, men under det mörka rör det sig saker.
Vad skulle hända om jag stod ansikte mot ansikte med vad jag är?
Jag tror att det händer, men eftersom jag inte känner igen mig själv säger jag att det är någon annan; han, hon, dem, som är ansvariga.
Ansvarig för min terror.
Alla möbler i rummet har förstörts.
Det var natt, ungefär en fjärdedel till tolv, himlen uppdelad i halvor, en molnig, den andra mässan.
Stjärnorna var djupt infällda, inte liggande på nattens yta, utan inträngda i den.
Vattnet, där fartyget skar det, var trasigt och vitt, men när fartyget hade passerat vattnet läkte intrånget och jag kunde inte se var det svarta av himlen och det svarta av vattnet förändrades till varandra.
Jag tänkte på min ofta dröm där tiden hällde fiskarna i himlen och himlen var full av stjärnfisk; stella maris av den övre luften.
Det finns många legender bland sjöfarande människor av en ljus fisk så varmt att den skiner i det djupaste vattnet, en stjärna tappas och finn från Gud, ett alkemiskt mysterium, föreningen av eld och vatten, coniuntis Oppositorum som omvandlar sig själv och andra.
En del författare blandar stella maris med Remora, en liten fisk som fastnar i ett kärls roder och gör att det stannar.
Vad det än är, det ödesdigra avgörande som fullständigt förändrar en säker kurs.
Är det därför du gör det?
Att träffas: att komma ansikte mot ansikte med. Att bekanta sig med. Att introduceras. Att hitta. Att uppleva. Att ta emot. Att vänta på ankomsten av. Att möta. Att mötas i konflikt.
Min mor låg vaken och funderade över saken och tillämpade med viss brådska på sin far nästa morgon.
- Vad kan man göra?
Den unge mannen hade först nyligen blivit befordrad med ansvar för överfarterna över Atlanten.
Han måste bevisa att han är där.
Tyvärr motsatte han sig alla min mors försök att bevisa sig själv någon annanstans.
I förtvivlan rådfrågade min mor min mormor som föreslog att de skulle pröva flottans position.
Detta jordnära råd mottogs inte väl av min far som redan hade lagt till en fanér av konventionell moral till sin konventionella respektabilitet.
Men Jove är yngre än du.
Där är han, byggd som King Kong, lika ambitiös som Empire State Building, lika vidögd som Fay Wray, och lika mycket en dröm, en uppfinning, som filmerna och själva Amerika.
Han var en gigantisk projektion på den tomma skärmen av andra människor och det var hans framgång.
Han var inte en hänsynslös man, men han trodde på sig själv.
Detta markerade honom för de många andra som inte trodde på någonting alls.
Min mormor, som inte var en nervös typ, sade till sig själv: "David måste ha fått sin befordran."
Hon nickade, avslutade kapitlet, släppte ut badvattnet och gick hem.
Han sov i sitt omklädningsrum de första månaderna.
Efter att min mor hade matat mig, någon gång runt fem på morgonen, föll hon i en djup sömn och min far brukade krypa in och plocka upp mig i sina enorma händer och ta mig till sitt rum där elden glödde.
Kanske var det där, som hölls av honom, framför spegeln, det märkliga rummet i reflektion bakom, som jag kom att föreställa mig andra platser, glödande stadigt, precis utom räckhåll.
Jag skulle säga emot det.
"London", sa min mormor, uttala det helvetet.
"Var är svårigheten i det?"
Jag vill känna, men med känsla kommer smärta.
Jag kan råda mig själv att hålla mig undan komplikationer och jag tänker inte låtsas att jag inte har haft något val i något av detta.
Jag har lagt märke till att val tycks göras före det som väljs.
Tidsklyftan mellan den beslutande viljan och den bestämda händelsen är en praktisk ursäkt för att förneka orsakssambandet.
I rymdtid finns det alltid en fördröjning mellan förutsägelse och respons (synkronicitet är ett fenomen med högre dimension där reglerna för rymdtid inte gäller), ibland sekunder, ibland år, men vi programmerar händelser mycket mer än vi tycker om att tänka.
Jag säger inte att detta är medvetet, vanligtvis är det inte det, och det ligger svårigheten.
Jag har sett min far driva världen, han är ganska omedveten om vad som knuffade honom.
Han trodde inte på det omedvetna, utom som en soppa av fantasi och halvminnen som roade hans sömn.
Att föreslå, som jag gjorde, att sinnet är ett självreglerande system, där medvetande och medvetslöshet fungerar som lastbalanserande trissa, väckte ilska tillräckligt för att få mig att tro att jag hade rört något relevant.
Jag fortsatte läsa: Paracelsus, Jung, Einstein, Freud, Capra, och även om jag fortfarande inte vet någonting, är jag inte längre en Ödeslärjunge.
"Jag förstår varför han gillar dig, sa Stella, undersöka min nacke med sina fingrar.
Vad kan en liten flicka se som astronomer och teleskop inte kan?
Det fanns ingen komet som sågs på den officiella loggboken för resan.
Vad var det då som hängde ihop den vanliga natten med oändligheten?
Jag såg silverförvanskningen passera över mig och seglen i sönderslitet tyg.
Män och kvinnor trängda på däck.
Det var en rysning, som om världsklockan hade stannat, även om det i själva verket var vårt eget skepp som hade kastat sina motorer i omvänd riktning.
På morgonen berättade min far för mig att vi hade identifierat en okänd signal, som troddes vara ett kärl precis framför oss, även om ingenting alls hittades.
Och hon berättade för mig hur hon och hennes mamma hade besökt restaurangen en gång i veckan, på en lördag, under de kommande elva åren.
Det måste vara lördag, den judiska sabbaten, pappas extas, mammas trots.
Hennes dotter var inte jude.
Judismen fortsätter genom den kvinnliga linjen.
Mamma ville inte att hennes dotter skulle ge upp pappas passion.
Han lämnade sitt skrivbord med sina fyra svarta telefoner och arkiveringsbricka, och utan att stanna för att hämta något bagage, köpte han en flygbiljett till kvällsflyget.
År 1959 var flygningen märklig, glamorös, dyr och lycksalig.
Det var en 15-minuters incheckningstid och min far gick över asfalten och gick ombord på tvillingpropeller planet med bara sin tandborste att deklarera.
Hennes bröst som mina bröst, hennes mun som min mun, var mer än Narcissus hypnotiserade av sin egen likhet.
Alla vet hur historien förändras när han stör vattnet.
Jag störde vattnet och den perfekta bilden gick sönder.
Du förstår, jag kunde ha vilat där bredvid henne, kanske för evigt, det kändes som en spegel förvirring av kroppar och suckar, odifferentierad, hon i mig, jag i henne och inte längre utmattad av någon annans form över min.
Och jag hade inte förväntat mig någon sådan intensiv fysisk njutning.
Den lilla pojken hade aldrig sett ett barn rosa som en varg tunga.
För artigt att vara amerikan.
Jag antar det.
Min far brukade komma hit.
Han älskade New York.
Han sa att det var det enda stället i världen där en man kunde vara sig själv när han arbetade av sig skjortan för att bli någon annan."
Drömmen att panorera den levande lera som du är och hitta guld i den.
Min far kanske var en skattkista för att han verkade kunna lägga upp för sig själv outtömliga rikedomar.
Vad han än försökte med lyckades han.
Han borde ha varit en venetiansk köpman som gick på Rialto.
Han borde ha vunnit pälsar från Muscovy.
Är det han, på stockflottorna i Quebec?
Är det han som rider forsar med snön i axlarna?
Han var en man som hörde hemma hos en älg, med en älg.
En valman, en björnman.
Istället bar han en lös kostym och en trilby och lärde sig hur man netto en vinst.
Hans drag var de största i Bolaget och han lämnade in dem som en liten pojke.
På den tiden kämpade hans sanna jag fortfarande med sitt förmodade jag och vann.
Person och persona, mannen och hans mask hade separata identiteter då, han visste vilken som var vilken.
Senare dog mannen som min mor gifte sig med innan han dog, och mannen som hade kommit att bli hans förfalskning bar hans kläder.
Jag vet inte vad jag gör.
På dagen var min far en smart och allt smartare man.
På natten, eller för att vara ärlig, tre nätter i veckan, bemannade han en bogserbåt.
Där är han i en fet åsnejacka och sjömansbalaklava.
Spinning den tjocka kabeln från winschen och ta in bananbåtarna, sädesbåtarna, båtarna av turkiskt silver, och båtarna fulla av irländare, shamprocks runt deras hjärtan.
"Harpoon Ahoy!" sade min far.
Och någonstans i allt detta var jag.
Jag är min fars dotter.
Valet de Coupe.
En ung man stirrar ängsligt in i en utstuderad bägare vars innehåll är dolt.
Det kanske inte finns något innehåll.
Ändå håller han i bägaren.
Bär den med sig när han går.
