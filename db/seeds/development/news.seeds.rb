# db/seeds/development/news.seeds.rb
after 'development:users' do
  max = User.find_by_name 'Max Nitze'
  philipp = User.find_by_name 'Philipp Kömpel'

  news01 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news01,
    language: 'de',
    title: 'Meister 3. Kreisklasse 2014!!!',
    subtitle: 'Nach dem Abstieg im Vorjahr gelingt der direkte Wiederaufstieg',
    abstract: 'Auch wenn es sehr verspätet kommt: Wir haben es geschafft, wir sind MEISTER! In einem über die Maßen spannenden Spiel haben wir uns vor einigen Wochen gegen die zweite Mannschaft des TSV Otterndorf den Titel in unserer Klasse gesichert. Nachdem wir mit einem 2:2 in die Kabine gegangen waren, machten wir nach einem Kraftakt in der letzten Minute der zweiten Hälfte das entscheidende Tor zum 3:2 Heimsieg.',
    text: "Über die Vorbereitung bis zum Warm-Machen merkte man jedem Spieler den absoluten Ehrgeiz und die richtige Einstellung zu diesem, für uns entscheidenden Spiel an. Alle waren bis in die Haarspitzen motiviert und auch unsere Fans, die uns absolut unterstützten, gaben alles, was uns nochmal den letzten Schub gab. So kamen wir eigentlich gut ins Spiel. Der Ball lief bei uns durch die Reihen und wir schalteten in den richtigen Momenten schnell nach vorne um. Was uns fehlte war das nötige Glück beim Abschluss. So verzogen Tim Skebe und Björn Schmidt knapp. Aber auch die Otterndorfer hatten ihre Möglichkeiten. Vor allem über ihre beiden robusten Stürmer, die es gut verstanden den Ball zu behaupten, gelang ihnen die ein oder andere gute Chance. Eine davon führte in der 14. Minute zur Führung der Gäste. Philipp Dozoweit und Sebastian Reuter spielten sich mit einem Doppelpass, den Dozoweit mit der Hacke an unserem Sechzehner quer legte, durch unsere Verteidigung und Reuter schob den Ball präzise rechts ins Tor. Aus 9 Metern ließ er unserem Schlussmann Mark Siering dabei keine Abwehrchance. So mussten wir früh einem Rückstand hinterher laufen, hatten aber mehr Spielanteile. In der 30. Minute war es dann Julian Stock, der den Gleichstand wieder herstellte. Von Jan Radnitz auf links bedient lief er quer vor dem Sechzehner entlang. Nachdem er hier vier Spieler stehen gelassen hat, schloss er auf das linke untere Eck ab und traf platziert gegen die Laufrichtung des Torwarts. Ganz verrückt ging es dann nach dem Anstoß weiter: Tim Skebe eroberte den Ball am Mittelkreis direkt nach dem Anpfiff und spielte ihn genau durch die Schnittstelle der noch etwas unsortierten Abwehr, wo Jan Radnitz den Ball bekam. Er umkurvte den Schlussmann und schloss von der rechten Fünfer-Kante mit rechts ins kurze Eck ab. Innerhalb von 2 Minuten hatten wir das Spiel zu unseren Gunsten gedreht! So sollte es jedoch nicht bleiben. Kurz vor der Pause (43.) konnten die Gäste wieder ausgleichen. Nach einer Flanke über unsere linke Abwehrseite konnte wieder Sebastian Reuter wuchtig per Kopf vollenden. So ging es mit einem bis dahin gerechten 2:2 in die Pause.<br>In der zweiten Hälfte wurde das Spiel dann deutlich hektischer und spielte sich viel im Mittelfeld ab. Viele Fehlpässe führten dazu, dass nicht allzu viel flüssiges Spiel stattfand. Beide Mannschaften hatten sich in der ersten Hälfte einen solch intensiven Schlagabtausch abgeliefert, dass sie ab der 70. Minute stehend K.O. schienen. Viel wurde mit langen Bällen gelöst, die vor allem für die Otterndorfer zu mehreren sehr großen Chancen führten. Doch die eingewechselten Offensivspieler traten ein um's andere Mal völlig frei am Ball vorbei und so blieb es vorerst beim 2:2.<br>Der Schiedsrichter zeigte gerade die zwei Minuten Nachspielzeit an, da begangen die Gäste ein eher unnötiges Foul kurz vor ihrem Sechzehner. Jan Radnitz bringt diesen Ball vor's Tor, wo Luca Nista zum Abschluss kommt. Der starke Otterndorfer Torwart kann den Ball noch abwehren, doch mit aller Macht springt Tobias Budel in diesen Ball und bringt ihn, von halb links mit dem rechten Außenrist im Tor unter. Jetzt kamen die Emotionen frei raus bei allen Spielern! Auf dem Haufen, der auf dem Platz über Tobias gebildet wurde befanden sich sogar Zuschauer! Und dann war Schluß! Wir waren Meister!<br><br>Ein unglaubliches Spiel! In der letzten Minute das Spiel und damit auch die Saison für uns entschieden. An Dramatik war das kaum zu überbieten. An dieser Stelle auch nochmal ein risen Lob an unsere Fans und Zuschauer, die uns die gesamte Saison überragend unterstützt haben und so auch dieses Spiel zu einem echten Highlight gemacht haben. Diese Saison war echt eine super Leistung von allen. Eine schöne Sommerpause Meister 3. KK!")

  news02 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news02,
    language: 'de',
    title: 'Sportwoche 2014',
    subtitle: 'Turnier findet wieder vom 27. Juli bis 02. August statt',
    abstract: '',
    text: "Unsere Sportwoche findet dieses Jahr vom 27. Juli bis zum 02. August auf unserem Sportplatz statt. Es werden jeden Abend zwei Spiele ausgetragen, jeweils um 19:15 Uhr und 20:25 Uhr. Am abschließenden Samstag werden die Finalspiele, sowie ein Testspiel stattfinden. Alles weitere kann dem Spielplan im angehängten Forums-Beitrag entnommen werden. ")

  news03 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news03,
    language: 'de',
    title: 'Saisonauftakt geglückt',
    subtitle: 'Drei Tore in der zweiten Hälfte machen Sieg deutlich',
    abstract: 'Nachdem wir an dem vorigen Mittwoch das Pokalspiel gegen die SG Bülkau/Steinau/Odisheim bestritten haben, folgte am vergangenen Sonntag das erste Spiel der neuen Saison in der zweiten Kreisklasse. Zwar nicht überzeugend, aber trotzdem deutlich, konnten wir das Spiel nach einem 1:0 zur Halbzeit am Ende mit 4:0 für uns entscheiden.',
    text: "Die ersten Minuten, wie eigentlich die gesamte erste Hälfte, verliefen sehr holprig. Beide Mannschaften lieferten sich ein Fehlpass- und Ballverlust-Festival im Mittelfeld. So fiel auch das 1:0 aus einer merkwürdigen Situation. Jan Radnitz spielt den Ball von rechts quer durch den Sechzehner. Der Torhüter stößt mit einem seiner eigenen Mitspieler zusammen, sodass beide nicht an den Ball kommen. Dieser geht an Mann und Maus vorbei auf die linke Außenlinie, wo Tobias Budel ihn erläuft. Der Schlussmann liegt immer noch neben seinem Tor, sodass das dieses frei ist. Tobias spielt den Ball direkt von der Außenlinie hoch auf's Tor. Der anstürmende Verteidiger kann diesen nicht mehr erreichen. Die Hausherren agierten zumeist mit langen Bällen, die auf dem kleinen Platz einmal aufkamen und im Sechzehner landeten. Diese Bälle entschärfte Mark Siering jedoch alle meistens mehr, manchmal weniger sicher. Kurz nach dem 1:0 erzielte Fabian Ferle noch nach einer Ecke ein Kopfballtor am ersten Pfosten, das vom Scheidsrichter aber wegen eines Haltens am anderen Ende des Strafraums zurückgepfiffen wurde. Kurz vor dem Seitenwechsel musste Mark Siering noch einmal eingreifen, als Dominik Höhmann auf seinem Weg in Richtung Sechzehner nicht gestört wurde und einen satten Schuss aus etwa 25 Metern abließ. Mark musste sich ganz lang machen, um an diesen Ball zu kommen, konnte ihn aber links am Pfosten vorbei lenken.<br>Nach der Pause zeigten wir ein deutlich solideres Spiel. Die Räume im Mittelfeld, die wir in der ersten Halbzeit auch bereits gehabt haben, nutzten wir nun deutlich besser unsd erspielten uns diverse Chancen, die wir aber teilweise stümperhaft vergaben. Malte Schriefer und Max Nitze scheiterten kurz nacheinander frei vor dem Torwart der Gastgeber kläglich. In der 73. Minute belohnten wir uns dann aber doch noch. Wieder hatten wir extrem viel Platz in der zentrale und Max Nitze konnte einen Ball zentral vor den Sechzehner von Geversdorf auf den gerade eingewechselten Daniel Neumann spielen. Die beiden Verteidiger schauten bestenfalls zu und so musste Daniel sich nur noch drehen und schloss direkt ab. Den Ball konnte Martin Jagusch im Tor der Hausherren noch mit einem Fuß abwehren. Den Nachschuss von Tobias Budel dann aber nicht mehr, sodass wir verdient mit 2:0 in Führung gingen. Nur fünf Minuten später war es diesmal Tobias Budel, der den Treffer von Jan Radnitz vorbereitete. Beide spielten sich mit zwei Doppelpässen an allen Verteidigern vorbei und Jan schoss schließlich durch die Beine des herauskommenden Schlussmanns ins Tor zum 3:0. In der 84. Minute erhöhten wir dann sogar noch auf 4:0 durch ein Eigentor von Christian Scheibel. Manolito Schork führte einen Einwurf schnell auf Max Nitze aus, der direkt im Sechzehner, nahe der Grundlinie, war. Er wollte den Ball zurück auf den Fünfer legen, wo Jan Radnitz und Tobias Budel bereit standen, aber der Fuß des Verteidigers war dazwischen, von dem der Ball direkt im Tor landete.<br><br>Vom Ergebnis war es sicherlich ein Einstand in die Saison, wie wir ihn uns vorgestellt haben. Spielerisch bot das Spiel aber vor allem in der ersten Hälfte wenige gute Aspekte. Gegen schwache Geversdorfer konnten wir in der zweiten Hälfte etwas mehr Spaß am Spiel zeigen und kombinierten uns oftmals gut von hinten in die Spitze. Hier war vor allem die Torausbeute ein Manko. Am zweiten Spieltag (morgen) wird die dritte Vertretung von Rot-Weiß Cuxhaven bei uns zu Gast sein. hier werden wir wahrscheinlich ein spielerisch anders auftretendes Team zu Gesicht bekommen. Wenn wir aber auf der zweiten Hälfte aufbauen, werden wir auch hier sicherlich ein gutes Bild abgeben.")

  news04 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news04,
    language: 'de',
    title: 'Zwei Tore nicht gegeben',
    subtitle: '1. Herren gewinnt knapp mit 1:0 gegen den FC Neuenkirchen/Ihlienworth II',
    abstract: 'Etwas ersatzgeschwächt reisten wir vor drei Wochen zum Spiel beim 1. Kreisklasse-Absteiger FC Neuenkirchen/Ihlienworth II an. Am Ende stand ein verdientes 1:0 für uns auf der Anzeige.',
    text: "In der ersten Hälfte sind wir bereits gut ins Spiel gekommen. Nach eine platzierten Schuss von Max Nitze aus der zweiten Reihe setzt Jan Radnitz in der 21. Minute nach. Der Torwart kann den Schuss aus fünf Metern aber stark am linken Pfosten vorbei lenken. Zehn Minuten später brachte Jan Radnitz einen Freistoß auf den Elfmeter-Punkt, wo Michael Hubrich den Ball verlängert. Der Torwart kann den Ball erst hinter der Linie festhalten, gibt dies aber zu dem Zeitpunkt noch nicht zu (nach dem Spiel schon) und der Unparteiische konnte dies aus seiner Position nicht sehen, sodass er nicht auf Tor entschied. Die Hausherren agierten vor Allem mit langen Bällen auf ihren Zehner, der zwar keinen großen Bewegungsradius hatte, aber die Bälle meistens clever verteilte. Wir konnten diese Bälle in die Spitze aber zumeist entschärfen.<br>In der zweiten Hälfte setzen wir das Spiel fast genauso fort wie im ersten Durchgang und in der 66. Minute belohnten wir uns dann auch dafür. Paul Paatz hinterlief Malte Schriefer auf der rechten Seite und bekam den Ball. Die Flanke die er daraufhin rein gebracht hat kam genau auf dem Kopf von Tobias Budel am zweiten Pfosten an, der diesen am kurzen Pfosten im Tor unter bringt. Auch in der Folge haben wir weiter Druck gemacht und sind auch noch weiter zu Chancen gekommen, wie in der 83. Minute, als ein Freistoß von Max Nitze in den Sechzehner kommt wo wieder Michael Hubrich diesen ins Tor verlängert. Der ankommende Schlussmann trifft ihn dabei außerhalb des Fünfers ohne dabei den Ball zu spielen, aber Scheidsrichter Wübbo Zierow entscheidet auf Stürmerfoul und gibt auch dieses Tor nicht. In den letzten Minuten haben die Hausherren nioch einmal den Druck erhöht, konnten den Ausgleich aber nicht mehr erzielen.<br><br>Knappen, aber verdientes Ergebnis. Wichtig nach der desolaten Leistung in dem Spiel in der Vorwoche. Mit 6 Punkten aus drei Spielen haben wir damit aber einen ordentlichen Saisonstart hingelegt, den wir gegen die vierte Vertretung von Rot-Weiß Cuxhaven in der kommenden Woche noch ausweiten wollen.")

  news05 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news05,
    language: 'de',
    title: 'Der vierfache Budel',
    subtitle: 'Tobias Budel macht alle vier Tore gegen Rot-Weiß Cuxhaven III',
    abstract: 'Vor etwas mehr als einer Woche war die vierte Vertretung von Rot-Weiß Cuxhaven bei uns zum Ligaspiel zu Gast. In einer etwas hitzigen Partie gingen wir schlussendlich mit 4:1 als Sieger vom Platz.',
    text: "Taktisch waren wir darauf eingestellt die Gäste in ihrer Hälfte spielen zu lassen und erst an der Mittellinie drauf zu gehen um dann mit schnellen Kontern die Hintermannschaft auszuhebeln. Dies gelang uns auch direkt von Beginn an gut und Fabian Ferle hatte nach diesem Schema bereits in der 15. Minute den Führungstreffer auf dem Fuß. Vier Minuten später machte Tobias Budel es dann besser, als er wieder nach einem Konter den Ball von Jan Radnitz quer an den Sechzehner gelegt bekommt und platziert links ins Tor einschießt.<br>Unsere Hintermannschaft stand eigentlich das gesamte Spiel über solide und wir ließen nicht viele Chancen zu, aber in der 32. Minute waren es Philipp Kömpel, der nicht energisch gegen den Mann verteidigte, und Robert Dettloff, der zu ungestüm auf den Gegener zulief und sich so sehr schnell ausspielen ließ. So hatte Sebastian Sperling nur noch unseren Keeper vor sich, an dem er aber unten rechts vorbei ins kurze Eck legen konnte.<br>Nur fünf Minuten später konnten wir aber durch einen Standard die alte Führung wieder herstellen. Tobias Budel versenkte den Ball von einem indirekten Freistoß im gegnerischen Sechzehner, nachdem Jan Radnitz diesen zur Seite gelegt hatte, humorlos oben links im kurzen Winkel. Der Schlussmann hatte keine Chance diesen abzuwehren.<br>In der Folge wurde das Spiel sehr zerfahren. Nicht nur durch den indirekten Freistoß fühlten sich die Cuxhavener vom Schiedsrichter benachteilt und zeigten das verbal und durch Foulspiele, wovon wir uns auch teilweise anstecken ließen.<br>Nach dem Seitenwechsel konnten wir unsere Führung dann noch durch zwei Strafstöße, die nicht zur Besserung der Stimmung der Gäste beitrugen, auf 4:1 ausbauen. Zuerst wurde Manolito Schork bei einem Eckball von Zwei Gegenspielern in die Mangel genommen (59.). In der 70. konnte Tim Skebe einen Freistoß im Sechzehner mit dem Knie ins Tor weiter lenken. Dabei wurde er aber vom Torwart umgehauen und der Unparteiische entschied, bevor der Ball im Tor war, auf Strafstoß. Beide Elfmeter verwandelte Tobias Budel souverän und markierte damit sein drittes und viertes Tor in dem Spiel!<br><br>Das hatten wahrscheinlich nicht viele vor der Saison erwartet. Trotz eines Lazaretts mit acht Spielern haben wir aus den ersten vier Spielen neun Punkte geholt und stehen punktgleich mit dem Tabellenführer auf dem vierten Rang. In der kommenden Woche kommt es dann in Groden zu Spitzenspiel gegen einen der Favoriten auf die Meisterschaft in der 2. Kreislklasse.")

  news06 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news06,
    language: 'de',
    title: '0:0 der besseren Art',
    subtitle: '1. Herren spielt Unentschieden beim Tabellenführer Grodener SV',
    abstract: 'Am fünften Spieltag spielten wir das Topspiel gegen den Grodener SV, die genauso wie wir mit neun Punkten aus den ersten vier Spielen am oberen Ende der Tabelle standen. Nach 90 Minuten endete ein gutes Spiel mit einem verdienten 0:0.',
    text: "In der ersten Hälfte verhielten wir uns taktisch sehr diszipliniert und zwangen die Hausherren immer wieder zu langen Bällen. Nur wenige davon kamen an und, zumindest in der ersten Hälfte, führte keiner zu einer wirklichen Torchance. Wir hingegen konnten uns einige gute Chance heraus spielen. Tobias Budel wurde in der Offensive fast immer gedoppelt, was immer wieder Räume für Tim Skebe eröffnete. In der 28. Minute dringt er von links in den Sechzehner ein und scheitert etwas zu verspielt erst am Fünfer an einem der Verteidiger. Nur kurze Zeit später bringt Jan Radnitz eine Flanke aus dem Halbfeld auf den zweiten Pfosten, wo wieder Tim Skebe völlig frei zum Kopfball kommt. Der Ball geht aber knapp am rechten Pfosten vorbei.<br>Nach dem Seitenwechsel verloren wir etwas die Ordnung in unserem Spiel. Die kräftezehrende erste Hälfte hinterließ vor allem in der Defensive spuren und für die Grodener eröffneten sich einige Freiräume aus dene sie immer wieder Chancen heraus spielen konnten. Der letzte Pass fand aber oftmals nicht den Adressaten. In der 78. Minute hatten sie dann ihre größte Chance, als Firat Bicer nach einem Eckball am Elfer direkt zum Schuss kommt und Florian Ermler den Ball mit einer unglaublichen Parade noch über die Latte lenkte.<br><br>Somit stand nach 90 Minuten ein 0:0 der besseren Art auf der Anzeige. Beide Mannschaften haben eine Halbzeit auf ihrer Seite gehabt. Somit können auch beide mit dem Ergebnis zufrieden sein. Am kommenden Sonntag bestreiten wir unser nächstes Heimspiel gegen die zweite Mannschaft des TSV Germania Cadenberge. Hier wollen wir unseren super Start in die Aufstiegs-Saison weiter fortsetzen.")

  news07 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news07,
    language: 'de',
    title: 'Drei Punkte ohne gespielt zu haben',
    subtitle: 'TSV Germania Cadenberge II tritt bei uns nicht an',
    abstract: '',
    text: "Aufgrund des Mangels an Spielern kann der TSV Germania Cadenberge II in dieser Woche nicht bei uns antreten. Selbst mit Hilfe von den Altsenioren würden nicht genügend Spieler zusammen kommen. Deshalb findet das Spiel heute in Oxstedt nicht statt. Gerne hätten wir das Spiel heute ausgetragen. Wir wünschen dem TSV Germania Cadenberge, dass sich die Personalsituation in den kommenden Wochen wieder entspannt.<br><br>Nächste Woche sind wir dann beim TSV Otterndorf II zu Gast. Die Mit-Aufsteiger aus der 3. Kreisklasse aus der letzten Saison sind ähnlich gut in die Saison gestartet. Durch den Sieg am Freitag gegen den Tabellenführer aus der Wingst haben sie 3 Siege und 2 Unentschieden aus den ersten sechs Spielen geholt. ")

  news08 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news08,
    language: 'de',
    title: 'Schlechte erste Hälfte wird bestraft',
    subtitle: 'Otterndorf schlägt uns 3:1',
    abstract: 'Am siebten Spieltag spielten wir bei dem Mit-Aufsteiger Otterndorf und verloren unser zweites Saisonspiel mit 1:3 (Halbzeitstand 0:1).',
    text: 'Eigentlich die gesamte erste Hälfte kamen wir überhaupt gar nicht ins Spiel. Vorgenommen hatten wir uns die Seiten zuzustellen, indem wir mit drei Dreierketten dort spielen, was wir aber nicht in der Lage waren umzusetzen. Dazu kam dann auch noch ein schlechtes Zweikampfverhalten, sodass wir selten Druck auf die Ballführenden bekamen. In der sechsten Minute bereits nutzen die Hausherren eine solche Situation und kamen durchs Zentrum fast ohne Gegenwehr zum Abschluss, den Dix Van-Der-Linden flach im rechten Eck unter brachte. Auch bis zum Seitenwechsel hatten wir keine wirkliche Chance mehr.<br><br>In der Halbzeit stellten wir deshalb um und versuchten wieder mit zwei Spitzen in unserem bekannten 3-2-3-2 früh drauf zu gehen und die Bälle schnell zurück zu erobern. Das klappte auch zu Beginn der zweiten Hälfte recht gut und wir erspielten uns einige vielversprechende Chancen. Doch in der 48. bekamen die Hausherren einen etwas umstrittenen Strafstoß zugesprochen, den Stefan Gödecke souverän verwandelte.<br>Danach entwickelte sich eine sehr zerfahrene, von vielen Fouls geprägte Partie in der es dann auch diverse gelbe Karten gab. In der Schlussphase ereilte uns nochmal eine zweite Luft und wir kamen noch zu einigen gefährlichen Aktionen. Es dauerte aber bis zur 91. Minuten eh wir den Anschlusstreffer erzielen konnten. Nach einem Eckball wehrte der Otterdorfer Schlussmann einen Kopfball von Karsten Hoffmann stark ab, verletzte sich aber, als er dabei mit dem Pfosten zusammen prallte. Tobias Budel spielte den abgewehrten Ball auf den zweiten Pfosten wo Matthias Baumann diesen mit dem Kopf über die Linie brachte.<br>Bis zum Wieder-Anstoß dauerte es aufgrund der Verletzung des Torwarts ein wenig und wir hatten noch eine Minute Spielzeit. Florian Ermler fing einen langen Ball ab und spielte diesen kurz auf Paul Paatz, der etwas überrascht war, da er mit einem langen Abschlag gerechnet hatte. Alle Spieler waren auf dem Weg nach vorn. Paul verlor den Ball gegen seinen Gegenspieler und foulte ihn bei dem Versuch diesen zurück zu erobern. Das Foul passierte im Sechzehner, sodass es in der 95. Minute noch einmal Strafstoß für die Hausherren gab, den wieder Stefan Gödecke platziert zum 3:1 Endstand verwandelte.<br><br>Es war vor allem die erste Hälfte, in der wir das Spiel verloren haben. Mit unserem inkonsequenten Auftreten haben wir die Otterndorfer geradezu eingeladen die Tore zu machen. In der zweiten Hälfte haben wir dann einiges besser gemacht, konnten aber auch nicht rechtzeitig die enscheidenden Akzente setzen. In der kommenden Wochen steht mit der SPVGG Mittelstenahe ein vermeintlich leichterer Gegner aus dem unteren Bereich der Tabelle auf dem Spielplan. Um hier aber zu bestehen müssen wir eine ganze Schippe auf die Einstellung von diesem Spiel drauf legen.')

  news09 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news09,
    language: 'de',
    title: 'Auch in der Höhe verdient verloren',
    subtitle: '4:0 bei der SpVgg Mittelstenahe verloren',
    abstract: 'Nachdem Cadenberge zum vergangenen Heimspiel bei uns nicht angetreten ist, hatten wir am letzten Sonntag wieder einmal ein Heimspiel gegen die SPVGG Mittelstenahe. Die Mannschaft, die bisher erst drei Punkte in dieser Saison geholt hatte, haben nach 1:0 Führung zur Halbzeit das Spiel mit 4:0 gewonnen, wobei wir eine sehr schlechte erste Hälfte ablieferten.',
    text: 'Wir starteten eigentlich sehr gut in die Partie. Fabian Ferle und Christian Maylahn hatten drei gute Chancen, die wir aber nicht verwerten konnten. Wie in der Vorwoche haben wir aber zu Beginn direkt einmal gepennt. In der 18. Minute bekommt Stephan Grüpmeier an der Mittellinie den Ball und spielt sich mit einem Doppelpass um die gesamte Abwehr. Verfolgt von drei Verteidigern kommt er trotzdem zum Abschluss und überspielt den herauskommenden Mark Siering zum 1:0.<br>Das Gegentor hat uns total aus dem Spiel gebracht und wir konnten fast keine gut Aktion mehr bis zum Seitenwechsel.<br><br>In der Halbzeit stellten wir dann wieder auf mehr Offensive um, indem Tim Skebe als dritter Stürmer kam. Kurz nach Wiederanpfiff (50.) mussten wir dann aber auch schon das zweite Gegentor hinnehmen. Nach einem Eckball kommt Thorben Grotheer zum Kopfball. Robert Dettloff versucht den Ball zu klären und fälscht diesen dabei leider unhaltbar für Mark Siering ab zum 2:0.<br>Wie in der ersten Hälfte brachte uns auch das Tor wieder komplett aus dem Konzept. Und zehn Minuten später kam es sogar noch schlimmer. Nach einem langen Ball kommt Mark Siering gegen den Ballführenden Gegenspieler raus, obwohl dieser auch noch zwei Verteidiger um sich herum hat. Der Angreifer versucht Mark zu überlupfen und er geht mit den Händen zum Ball. Dabei befindet er sich aber bereits zwei Meter vor dem Sechzehner und bekommt dafür folgerichtig die rote Karte. Für ihn betritt Karsten Hoffmann als Schlussmann das Feld. Eine Minute später, Karsten Hoffmann war noch nicht warm, wurde Thorben Grotheer nicht gestellt und kam aus der zweiten Reihe zum Schuss, der knapp neben dem rechten Pfosten ins Tor ging. Und wieder sieben Minuten später eine ähnliche Situation, in der Thorben Grotheer wieder aus der zweiten Reihe den Ball platziert am rechten Pfosten unterbringt und damit seinen lupenreinen Hattrick perfekt macht.<br>Das einzige, was wir in der zweiten Hälfte dagegen zu setzen hatten, waren lange Bälle, die aber so gut wie nie ankamen.<br><br>Das Spiel haben wir auch in der Höhe verdient verloren. Nach dem wir in der Vorwoche schon eine schlechte Leistung abgeliefert haben, haben wir gegen Mittelstenahe nochmal eins drauf gelegt. Das muss, vor allem im Hinblick auf die nächsten Spiele besser werden! Als nächstes spielen wir am kommenden Sonntag bei der TSG Nordholz.')

  news10 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news10,
    language: 'de',
    title: 'Umbau nimmt Fahrt auf',
    subtitle: 'Einsetzen der fehlenden Fenster am kommenden Wochenende',
    abstract: '',
    text: 'Der Umbau des Sportheims ist im vollen Gange und am kommenden Wochenende (10. und 11. Oktober) soll ein großer weiterer Schritt gegangen werden. Dazu gehört der Einbau der noch fehlenden Fenster und Stürze, das Fertigstellen des bereits eingesetzten Fensters, das Streichen des Verkaufscontainers, etc.<br>\”Wer also Lust und Zeit hat am Wochenende mitzuhelfen und eventuell auch ein wenig "Können" mit einbringen kann, der ist gerne aufgerufen dazu zu stoßen.<br><br>Am Freitag beginnen wir um 15 Uhr mit dem Einsetzen der Stürze für die beiden Fenster. Am Samstag wird es dann von 08:00 Uhr an weiter gehen.')

  news11 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news11,
    language: 'de',
    title: 'Niederlage, die sich nicht wie eine anfühlte',
    subtitle: 'Knappe 2:1 Niederlage bei der TSG Nordholz II',
    abstract: 'Vergangenen Sonntag stieg das erste von zwei Nachbarschaftsduellen zwischen uns und der zweiten Herren der TSG Nordholz auf dem Willi-Wicke-Platz in Nordholz. Nachdem wir in der abgelaufenen Saison beide Spiele gewinnen konnten, mussten wir hier eine knappe 2:1 Niederlage hinnehmen.',
    text: 'Aufgrund der roten Karte von Mark Siering aus der vergangenen Woche, und da Florian Ermler an dem Wochenende auch nicht zur Verfügung stand, musste Karsten Hoffmann ins Tor. Er war bereits in der letzten Saison unser zweite Torwart und machte seine Sache auch an diesem Tag außerordentlich gut!<br>Fast über die Gesamte Spielzeit wurde das Tempo von beiden Mannschaften hoch gehalten. In den ersten Minuten konnten die Hausherren mehr von diesem Aufbauen und drückten uns tief in die eigene Hälfte. Oftmals kamen ihre Angriffe aber nicht durch, was auch an Christian Maylahn lag, der Alexander Görtz, den Offensiv-Chef der Nordholzer, immer wieder aus dem Spiel zu nehmen wusste.<br>Nach dem anfänglichen Druck konnten wir uns langsam befreien und kamen auch zu eigenen Chancen. In der 21. schlug Max Nitze eine Flanke von rechts aus dem Halbfeld in den Sechzehner wo Fabian Ferle sträflich frei zu Kopfball kam, den Ball aber knapp rechts am Pfosten vorbei köpfte.<br>In der 30. Minute verloren wir den Ball in der Vorwärtsbewegung und Nordholz konnte schnell kontern. Über drei Stationen landete der Ball bei Dennis Böckmann, der aus abseitsverdächtiger Position im Fünfer zum Abschluss kam und Karsten Hoffmann so keine Chance ließ.<br><br>Auch nach dem Seitenwechsel war es weiterhin ein offenes Spiel in dem beide Mannschaften zu Chancen kamen. Eine davon hatte wiederum Fabian Ferle, der nach einer Flanke von Malte Schriefer den Ball im Sechzehner annehmen kann, aber, etwas überrascht, wieder leicht rechts am Tor vorbei schießt.<br>Nach knapp 60 Minuten stellte Sven Budel dann um, sodass wir mit einer weiteren Spitze im 3-1-3-3 spielten. Und schon nach wenigen Minuten fruchtete die Umstellung. Christian Maylahn eroberte den Ball im Zentrum und trieb ihn bis 20 Meter vors Tor wo er Tobias Budel im Sechzehner anspielte. Der legte noch einmal quer auf Tim Skebe, der den Ball aus sieben Metern halb-links oben unter der Latte unter brachte.<br>Der Ausgleich beflügelte uns und in der Folge behielten wir kurz die Oberhand im Spiel. Doch keine zehn Minuten später konnte die TSG den alten Abstand wieder herstellen. Jannik Baginski traf nachdem der Ball vorher bereits zweimal abgewehrt wurde, aus 16 Metern.<br>Aber auch jetzt ebbte das Spiel nicht ab und es ging bis zum Schluss mit hohem Tempo weiter. Wir konnten unsere Angriffe aber nicht mehr zielführend anbringen, sodass Scheidsrichter Velimir Kostic beim Stand von 1:2 aus unserer Sicht abpfiff.<br><br>Eine Niederlage, die sich nicht wie eine anfühlte. Nach den zwei vergangenen Spielen gegen den TSV Otterndorf und die SPVGG Mittelstenahe in denen es klar an der Einstellung haperte, legten wir in diesem Spiel die richtige an den Tag. Auch wenn das unsere dritte Niederlage in Folge war, ist ein aufwärtstrend zu sehen, den wir jetzt auch dringend brauchen. Am kommenden Wochenende ist die zweite Mannschaft der SG Bülkau-Steinau-Odisheim bei uns zu Gast. Die Mit-Aufsteiger haben uns bereits in der vergangenen Saison alles abverlangt.')

  news12 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news12,
    language: 'de',
    title: 'Zwei Tore Führung verspielt',
    subtitle: 'SG Bülkau-Steinau-Odisheim II erkämpft sich Punkt beim 2:2',
    abstract: 'Zum zehnten Spiel der Saison bekamen wir am vergangenen Sonntag Besuch von der zweiten Mannschaft der SG Bülkau-Steinau-Odisheim. Nachdem wir uns zur Halbzeit eine 2-Tore-Führung herausgespielt hatten, konnten wir am Ende mit einem erspielten Punkt zufrieden sein.',
    text: 'Wir starteten sehr gut in das Spiel. So konnte Matthias Baumann bereits in der dritten Minute das 1:0 markieren. Nach Pass von Tobias Budel aus dem Zentrum nach rechts in den Sechzehner legte Matthias Baumann sich den Ball an den Fünfer vor, von wo er mit rechts ins lange Eck einschob.<br>Wir dominierten fast die komplette erste Hälfte, der letzte Pass in die Spitze kam aber oftmals nicht an. Die Gäste hingegen kamen nur zu wenigen bis gar keinen Chancen.<br>In der 33. spielte Jan Radnitz einen Ball aus dem Zentrum auf Tim Skebe, der sich 25 Meter vor dem Tor drehte und abschloss. Der etwas weit vor seinem Tor stehende Schlussmann der Gäste kam na den Ball, der sich direkt unter die Latte senkte, nicht mehr ran und wir führten somit 2:0.<br><br>Diese Dominanz wollten wir auch in die zweite Hälfte tragen und noch ein Tor nachlegen, um den Sack zu zu machen, doch dies gelang uns wieder einmal nicht. Vieles was wir in der ersten Hälfte gut gemacht hatten klappte nun so gut wie gar nicht mehr. Wir verloren viele Bälle im Aufbauspiel, die der Gegener alle lang nach vorne schlug. Und so gut wie jeder dieser Bälle wurde gefährlich für uns, da die Gegenspieler immer einen Schritt schneller unterwegs waren als unsere Defensive. Eroberten wir einen Ball schlugen wir diesen wiederum meistens ebenfalls einfach nach vorne und rückten dann selber nicht weit genug mit nach. So entwickelte sich ein sehr unschönes Spiel, in dem wir noch zweimal bestraft werden sollten.<br>In der 56. Minute gelang es Markus Beckmann nach einem wilden Hin und Her im Sechzehner den Ball im Netz unter zu bringen. Drei Gegenspieler konnten ihn dabei nicht aufhalten.<br>Auch in der Folge konnten wir keinen Zugriff mehr auf\'s Spiel bekommen. Nach einem Foul im Mittelfeld spielten die Gäste den Ball in der 78. Minute lang in den Sechzehner. Michael Hubrich konnte den Ball mit dem Kopf nicht erreichen und wehrte den Ball reflexartig mit der Hand ab. Schiedsrichter Rainer Bamberg gab dafür zu recht Strafstoß, den wiederum Markus Beckmann sicher unten rechts verwandelte.<br>Das Spiel wurde jetzt nochmal etwas hecktisch. Viele kleine Fouls und Niklichkeiten wurden ausgetauscht, was zu vielen Unterbrechungen führte. Die Bülkauer wollten nun unbedingt noch den Siegtreffer erzielen, weshalb sich für uns einige Räume in deren Hintermannschaft auftaten. Max Nitze kam nach einem Eckball nocheinmal aus der zweiten Reihe zum Abschluss. Der Ball ging aber knapp am linken Pfosten vorbei. Die wohl größte Chance auf unserer Seite hatte aber Tim Skebe, der aus fünf Metern zentral vor dem Tor versuchte den Ball mit dem Außenrist in Selbiges zu befördern, jedoch dem eigentlich schon geschlagenen Schlussmann direkt in die Arme schoss.<br><br>Nach unserem Auftreten in der zweiten Hälfte können wir mit dem einen Punkt wirklich zufrieden sein. Bülkau hatte auch noch einige Chancen das Spiel vollends zu drehen. Das Ende der Saison hat noch einige ganz schöne Brocken für uns auf Lager. In der kommenden Woche fahren wir erst einmal zum Tabellenführer in die Wingst. Das Spiel wird uns sicherlich alles abverlangen, aber wenn wir zeigen was wir können haben wir auch hier eine realistische Chance.')

  news13 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news13,
    language: 'de',
    title: 'Wingst eine Nummer zu stark',
    subtitle: '',
    abstract: 'Am gestrigen Sonntag waren wir beim Tabellenführer in der Wingst zu Gast. In einer von Kampf geprägten Partie konnten wir uns nicht viele Chancen herausspielen und verloren am Ende mit 4:2.',
    text: 'Nasses Wetter und tiefer Platz. Das deutete von Anbeginn auf ein Kampfspiel hin. Und so entwickelte es sich auch. Viele Zweikämpfe, viele lange Bälle.<br>Einer dieser langen Bälle der Hausherren kam in der 12. Minute auf unseren zweiten Pfosten. Florian Ermler sprang unter dem Ball durch und der dahinter stehende Angreifer köpfte ihn zurück, quer vor\'s Tor, wo Peter Roeben völlig frei stand und einschieben konnte.<br>Da die Verteidigung nicht ganz so sicher stand sollten wir in der Folge den Liebero der Wingster anlaufen und unter Druck setzen, da dieser fast alle der langen gefährlichen Bälle in unsere Hälfte schlug. In der 34. gelang das Tim Skebe dann auch sehr gut. Er eroberte den Ball und wurde dann im Sechzehner vom letzten Mann gefoult. Den fälligen Strafstoß verwandelte Tobias Budel unhaltbar oben links im Eck.<br>Nur eine Minute später mussten wir aber den erneuten Rückstand hinnehmen. Fabian Ferle bekam den Ball auf der rechten Seite und versuchte diesen abzuschirmen. Dabei bewegte er sich immer weiter in die Richtung unseres Tores bis sein Gegenspieler ihm diesen abnehmen konnte und frei aufs Tor zulaufen konnte. Er verwandelte den Ball platziert unten rechts in der Ecke.<br>Vor dem Pausenpfiff hatten wir noch wieder die Chance ran zu kommen. Einer der wenigen schön nach vorne getragenen Angriffe endete mit einer Flanke von Fabian Ferle, die Matthias Baumann nur knapp am Sechzehner verpasste.<br><br>Nach der Pause wollten wir versuchen weiter den Druck auf die Hintermannschaft der Hausherren hoch zu halten. Wir waren aber oftmals den Schritt zu langsam, sodass sie die Situation zumeist mit einem (präzisen) langen Ball klären konnten. In einer ihrer Druckphasen um die 60. Minute bekamen die Wingster einen Eckball. Dennis Gerdts machte bei diesem zwei Schritte vom Elfmeter-Punkt nach vorne und bekam den Ball genau auf den Kopf und verwandelte ihn so genau im oberen linken Eck.<br>Nachdem Max Nitze in der 70. Minute eine gute Chance liegen ließ, brachte er drei Minuten später einen Freistoß von halb-rechts lang in den Sechzehner, wo Michael Hubrich am Elfmeter-Punkt den Ball per Kopf ins Tor verlängerte.<br>Wir waren nun gerade dabei eine kleine Drangphase aufzubauen, in der auch ein weiterer Stürmer das Spielfeld betrat. Doch wie bereits nach dem 1:1 machten uns die Wingster wieder einen Strich durch die Rechnung. Wir versuchten nun die Situationen vermehrt durch Passspiel, statt durch lange Bälle zu lösen. Einen davon verlor Christian Maylahn in der 75. Minute und der erst kurz zuvor eingewechselte Timo Stelling hatte freie Bahn auf unser Tor. Platziert verwandelte er zum 4:2.<br>Die Schlussphase wurde dann noch einmal sehr hektisch. Viele Fouls und viele Wortgefechte prägten das Spiel. Bis zum Abpfiff konnten wir so keine große Torchance mehr anbringen. Florian Ermler musste hingegen noch zweimal Großchancen der Hausherren entschärfen.<br><br>Alles in allem haben wir das Spiel nicht ganz unverdient verloren. Wir haben uns zu viele einfache Fehler im Spielaufbau geleistet und waren nicht ḱonsequent genug mit unsere eigenen Chancen. Die kämpferische Leistung und das Auftreten als Mannschaft hat jedoch gepasst.<br>Kommenden Sonntag bestreiten wir wieder ein Auswärtsspiel. Diesmal bei der zweiten Mannschaft des TSV Lamstedt. Anpfiff wird um 14:00 Uhr sein.')

  news14 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news14,
    language: 'de',
    title: 'Gelb-Schwarze Nacht 2015',
    subtitle: 'Faschingsfeier des VfB Oxstedt im Oxstedter Hof',
    abstract: '',
    text: 'Am kommenden Samstag (14.02.) findet im Oxstedter Hof unsere alljährliche Gelb-Schwarze Nacht, die Faschings-Veranstaltung des VfB Oxstedt, statt. Für die musikalische Untermalung sorgt, wie bereits in den vergangenen zwei Jahren, die River Dance Band aus Bremerhaven. Für 10€ können im Oxstedter Hof oder bei Ernst-Wilhelm Hoffmann Karten erworben werden. Neben dem Eintritt ist auch die Teilnahme an der Tombola im Preis enthalten. Verlost werden hier unter anderem ein Tablet und ein Navigationsgerät. Natürlich werden auch wieder die besten Kostüme oder Kostümgruppen prämiert.')

  news15 = News.create(
    author: max,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news15,
    language: 'de',
    title: 'Erstes Testspiel gegen Sahlenburg',
    subtitle: '',
    abstract: '',
    text: 'Am heutigen Sonntag findet um 15:00 Uhr das erste Testspiel der ersten Herren gegen die S.F. Sahlenburg II statt. Die nächsten Termine sind kommender Mittwoch um 19:45 Uhr gegen die SG Frelsdorf/Appeln/Wollingst und am darauf folgenden Sonntag gegen die zweite Mannschaft des TSV Altenwalde. Alle drei Spiele finden bei uns zu Hause statt.')

  news16 = News.create(
    author: philipp,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news16,
    language: 'de',
    title: 'Hart umkämpftes Spiel!',
    subtitle: '1:1 gegen den FC Neuenkirchen/Ihlienworth II',
    abstract: 'Am vergangenen Sonntag war der FC Neuenkirchen/Ihlienworth in Oxstedt zu Gast. Das Spiel war von Beginn an sehr hitzig (8 gelbe, 1 gelb-rote Karte) und es kam zu einigen Unterbrechungen.',
    text: 'Der FC Neuenkirchen/Ihlienworth hätte zur Halbzeit deutlich führen können, aber es fehlte oft der entscheidende Abschluss. Nach einem direkten Freistoß aus 20 Metern von Christian Rüther in der 40 Minute stand es dann 0:1. Der Oxstedter Schlussmann kam nicht mehr an den Ball.<br>In der 2.Halbzeit waren die Gastgeber deutlich besser und erarbeiteten sich viele Möglichkeiten. In der Pause wurde Manolito Schork, der Ruhe ins Spiel brachte, für Jan-Peter Bonde eingewechselt.<br>Nach 67 Minuten erlöste Philipp Krüger die Gastgeber mit einem schönen Volleyschuss aus 16 Metern.<br>In der 88.Minute wurde es noch einmal hitzig. Max Nitze und ein generischer Angreifer rauschten in einem Zweikampf zusammen. Nach dem Zusammenstoß war für beide das Spiel beendet. Nitze musste lange behandelt werden und der Neuenkirchener Angreifer musste mit Gelb-Rot vom Platz.<br>Kurz danach war das Spiel zu Ende und endete mit einem gerechten 1:1.')

  news17 = News.create(
    author: philipp,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news17,
    language: 'de',
    title: 'Unentschieden bei den Roten',
    subtitle: 'Oxstedt erkämpft Unentschieden bei Rot-Weiß Cuxhaven IV',
    abstract: 'Am heutigen Sonntag war unsere Herren, der 1. Mannschaft in Brockeswalde bei Rot-Weiß Cuxhaven IV zu Gast.',
    text: 'In der ersten Halbzeit waren die Gastgeber von der ersten Minute an hellwach und erzielten nach 12 Minuten das 1:0 durch Volkan Topaloglu. Nach einem Freistoß fehlte die Zuordnung im 16er der Gäste, der Ball rollte aus dem Strafraum dem Angreifer vor die Füße, der nur noch abziehen musste.<br>Kurz darauf hatten die Schwarz-Gelben per Elfmeter die Chance zum Ausgleich durch Malte Schriefer, der allerdings vergab.<br>Die zweite Halbzeit begannen die Gäste aus Oxstedt deutlich besser. Dennoch konnten die Gastgeber in der 55. Minute durch Kevin Horeis auf 2:0 erhöhen. Nach einer Ecke verliert Manolito Schork den Angreifer aus den Augen, der per Kopf einnetzt. Zwei Minuten später schoss Fabian Ferle den schon zu diesem Zeitpunkt verdienten Anschlusstreffer. Nach einem Freistoß wird der Ball in den Rückraum geschlagen,von wo aus der Stürmer abziehen konnte. In der 68. Minute nahm Michael Hubrich sich ein Herz und verwandelte per Traumtor zum 2:2. Aus gut 20 Metern Schloss er ab und haute das Leder vom rechten Strafraumeck unhaltbar links in den Knick.<br>Danach gab es noch viele Chancen für die Schwarz-Gelben, aber es kam nicht mehr zur Führung und so stand am Ende das Unentschieden.')

  news18 = News.create(
    author: philipp,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news18,
    language: 'de',
    title: 'VfB ärgert Groden',
    subtitle: '',
    abstract: 'Am vergangenen Sonntag war der Grodener SV in Oxstedt zu Gast.',
    text: 'Die Gäste begannen sehr stark und hielten den Druck die gesamte erste Halbzeit sehr hoch und erarbeiteten sich so einige Chancen,die allerdings vom Oxstedter Schlussmann Florian Ermler pariert werden konnten.<br>Halbzeit zwei begann ähnlich, doch die Gastgeber waren weiterhin sehr kämpferisch.<br>In der 58. Minute wurde ein Grodener Angreifer auf der Außenbahn, 25 Meter vorm Tor, gefoult.<br>Der Ball wurde kurz vor den 5-Meterraum gelegt und dort durch Firat Bicer über die Linie gegrätscht.<br>Das Spiel der Oxstedter blieb kämpferisch und so ergaben sich auch einige Möglichkeiten, die leider ungenutzt blieben.<br>In der 90. Minute gab es dann die Belohnung.<br>Tim Skebe traf zum verdienten 1:1.<br>Fabian Ferle startete auf der linken Seite durch und legte den Ball in den Strafraum, wo Skebe den Ball nur noch einschieben muss.<br>Kurz darauf war Schluss.')

  news19 = News.create(
    author: philipp,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news19,
    language: 'de',
    title: 'Oxstedt tut sich schwer!',
    subtitle: 'Zwei Tore von Karsten Hoffmann verhelfen zum 4:2 Sieg',
    abstract: 'Am vergangenen Sonntag war Germania Cadenberge II in Oxstedt zu Gast. Beide Mannschaften gingen mit geschwächten Kadern in das Spiel.',
    text: 'Die Gastgeber machten von Beginn an das Spiel und wurden schon nach sieben Minuten mit dem 1:0 durch Jan-Peter Bonde belohnt.<br>Nach Flanke und klasse Solo von Christian Maylahn konnte Bonde in der Mitte verwandeln.<br>In der 14. Minute starte Maylahn erneut durch und brachte die Kugel in den 16er, wo Tim Skebe nur noch den Fuß reinhalten musste, um zum 2:0 zu verwandeln.<br>Dann kamen die Gäste ins Spiel und konnten in der 23. Minute das Anschlusstor durch Tim Göpel schießen. Nach einem Foul kurz vor dem 16er konnte der Angreifer unhaltbar für den Oxstedter Torwart,Karsten Hoffmann verwandeln.<br>Kurz darauf tankte sich Lukas Pape auf der linken Seite durch, tunnelte Hoffmann und netzte zum 2:2 ein.<br>In der 65. Minute wurde Torwart Hoffmann in den Sturm gestellt, Paul Paatz ins Tor und für ihn kam Christoph Ketelear ins Spiel.<br>Das Spiel ging nur noch Richtung Gästetor, da diese verletzungsbedingt nur noch zu neunt agierten.<br>Karsten Hoffmann köpfte den VfB in der 83. Minute zum verdienten 3:2. Nach einer Flanke von Fabian Ferle konnte er per Flugkopfball verwandeln und 6 Minuten später machte Hoffmann seinen Doppelpack zum 4:2 Endstand.')

  news20 = News.create(
    author: philipp,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news20,
    language: 'de',
    title: 'Oxstedt verspielt 3 Punkte!',
    subtitle: '3:2 Niederlage nach 2:0 Halbzeitführung',
    abstract: 'Am vergangenen Sonntag war TSV Otterndorf II in Oxstedt zu Gast.',
    text: 'Die Gäste waren von Beginn an wach und gewillt, die schnelle Führung zu erzwingen. Nach einer viertel Stunde wurde Philipp KKrüger im Mittelfeld gefoult, der Gäste Angreifer wurde noch im sitzen verwarnt und beim aufstehen verlor er das Gleichgewicht und schubste den Unparteiischen, der den Angreifer des Platzes verwies.<br>In der 29. Minute gelang Christian Maylahn die 1:0 Führung für dir Gastgeber durch eine Klasse Vorlage von Tim Skebe. Bis zur Pause machte Oxstedt das Spiel.<br>In der 57. Minute revanchierte sich Christian Maylahn bei Tim Skebe und tankte sich auf der rechten Seite durch, legte den Ball in die Mitte und Skebe musste nur noch einschieben.<br>Kurz darauf bekamen die Gäste einen Elfmeter, den Stefan Gödecke souverän verwandelte.<br>Otterndorf drehte nochmal auf und 72. Minute gelang ihnen durch Valat Harmaner der verdiente Ausgleich zum 2:2 und kurz darauf legte der junge Angreifer noch ein Tor nach zum 2:3, so drehten die Gelb-Blauen das Spiel.<br>In der 86. Minute gab es die Gelegenheit für die Gastgeber per Elfmeter auszugleichen, den Karsten Hoffmann allerdings vergab.<br>Kurz darauf war Schluss und die 3 Punkte ebenfalls.<br>Am 19.04. geht es für unsere Jungs nach Mittelstenahe, Anpfiff 14:00 Uhr.')

  news21 = News.create(
    author: philipp,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news21,
    language: 'de',
    title: 'Derbytime in Oxstedt',
    subtitle: 'Oxstedt verliert klar mit 5:2 gegen die Nachbarn aus Nordholz',
    abstract: 'Heute war die TSG Nordholz in Oxstedt zu Gast.',
    text: 'Die Gäste, von Beginn an viel spritziger, belohnten sich nach zehn Minuten mit dem 1:0 durch Alex Görtz. Nach einem schnell ausgeführten Einwurf über links war die Oxstedter Hintermannschaft sehr unsortiert und Alexander Görtz konnte den Ball am Torwart vorbei schieben.<br>Nordholz hielt den Druck hoch und ließ Oxstedt keine Zeit zum Luft holen und erzielte nach gut 25 Minuten das 2:0 durch Görtz.Der Nordholzer Stürmer konnte nach schöner Flanke von links Außen zum 2:0 einnetzen.<br>Oxstedt versuchte die letzten 20 Minuten sich zu befreien und konnte den ein oder anderen guten Angriff fahren, leider ohne Erfolg.<br><br>Oxstedt kommt hellwach aus der Kabine und belohnt sich direkt nach zwei Minuten durch Fabian Ferle. Der spritzige Angreifer setzt sich auf der linken Seite durch und überlupft den herauslaufenden Torhüter, der keine Chance hat.<br>In der 50. Minute dann ein Eckball für die Gäste der auf den hinteren 5 Meterraum geschlagen wird, wo Görtz nur noch den Kopf zum 1:3 hinhalten muss.<br>Das Spiel wurde immer hitziger, viele Schiedsrichterentscheidungen wurden angezweifelt, aber der Unparteiische hatte alles unter Kontrolle.<br>In der 75. Minute tankt sich Dennis Böckmann auf der linken Außenseite durch und schiebt am Oxstedter Schlussmann rechts ins lange Eck vorbei zum 1:4.<br>Fünf Minuten später erhöhte Nordholz auf 1:5 durch Marvin Eichele, der sich an der Grundlinie durchsetzte und aus spitzem Winkel einnetzen konnte.<br><br>Die Saison neigt sich dem Ende. In der kommenden Woche fahren wir nach Steinau zum Spiel gegen die zweite Mannschaft der SG Bülkau-Steinau-Odisheim.')

  news22 = News.create(
    author: max,
    editor: max,
    edit_count: 4)

  Newstext.create(
    news: news22,
    language: 'de',
    title: 'Unerwartet klarer Sieg',
    subtitle: 'Klares 4:1 gegen den Tabellen-Zweiten aus der Wingst',
    abstract: 'Am verangenen Sonntag war die zweite Mannschaft des VfL Wingst bei uns zu Gast. Die Mannschaft, die nach einer durchwachsenen Rückrunde noch immer Chance auf die Meisterschaft hat, unterschätzte uns in der ersten Hälfte und wir konnten sie so verdient mit 4:1 schlagen.',
    text: 'Da es eigentlich so aussah, als hätten wir personelle Probleme in dem Spiel, wurden zwei Spieler unserer A-Junioren U19, die einen Tag vorher bereits gespielt hatten, für das Spiel im Kader eingeplant. Und sowohl Kai Köhler (Sechser) als auch Thorben Achilles (Rechtsverteidiger) wurden direkt in der Startaufstellung eingesetzt und machten jeweils ein super Spiel auf ihren Positionen.<br><br>Nachdem wir in den vergangenen Wochen viele schlecht Leistungen abgeliefert haben, und nach zuletzt vier Niederlagen in Folge, war es mal wieder an der Zeit ein gutes Spiel abzuliefern. Von der ersten Minute waren wir wach, und Tim Skebe konnte bereits nach fünf Minuten das 1:0 erzielen. Tobias Budel eroberte den Ball im Zentrum und spielt den aus der Drehung nach rechts außen auf Manolito Schork, der ins Zentrum flankt, wo Tim Skebe am Fünfer frei zum Kopfball kommt und gegen die laufrichtung des Schlussmanns einköpft.<br>Manolito Schork konnte in der 22. Minute das 2:0 markieren nachdem der Ball bei einem Konter entwas glücklich bei ihm landete. Und nur acht Minuten später konnte Tim Skebe mit seinem zweiten Treffer auf 3:0 stellen. Jan Radnitz steckte stark durch Zentrum durch und Tim konnte am herausstürmenden Torwart vorbei eischießen.<br>Bis zur Pause ruhten wir uns ein wenig auf dem Ergebnis aus, was dem Gast aus der Wingst immer wieder die Tür öffnete und sie wieder besser ins Spiel kommen ließ.<br><br>Nach dem Seitenwechsel kamen die Wingster viel wacher und viel aggressiver aus der Kabine. Anders als in der ersten Hälfte ließen sie uns hinten keine Pässe mehr spielen, sondern gingen immer direkt auf den Ballführenden Spieler. Daraus erarbeiteten sie sich viele gute Chancen.<br>Wir konzentrierten uns in dieser Phase auf Konter und konnten dort auch einige gute ansetzen. Mindestens vier sehr gute Chancen, die wir uns so herausgespielt hatten, vergaben wir in der frühen Phase der zweiten Hälfte.<br>In der 54. Minute konnten die Wingster dann den Anschlusstreffer setzen. Sie nutzten eine ungeordnete Phase in unserer Hintermannschaft und Timo Stelling konnte zum 3:1 einschieben.<br>In der Folge hatten wir oftmals viel Glück in gut vorgespielten Angriffen der Gäste, die oftmals am Abschluss, oder am grandios haltenden Schlussmann Karsten Hoffmann scheiterten.<br>Nach knapp 80 Minuten bekamen wir einen Freistoß etwa 25 Meter vor dem Tor der Wingster. Michael Creutzer trat zum Schuss an und versenkte ihn unhaltbar links in der Mauerecke.<br>So hatten wir es doch noch geschafft den Sack zu zu machen. Zwar kamen die Gäste noch einige Male vor unser Tor, der Letzte Wille im Abschluss fehlte ihnen aber mittlerweile, sodass bei Abpfiff ein 4:1 für uns auf der Anzeige stand.<br><br>Nach einer langen Strecke von teils sehr schlechten Spielen und vier Niederlagen in Folge haben wir mal wieder gezeigt, was wir eigentlich in der Lage sind zu leisten.<br>Am kommenden Sonntag werden wie mit Lamstedt einen direkten Konkurrenten bei uns zu Besuch haben. Aus dem Hinspiel, das wir selbstverschuldet klar verloren haben, haben wir hier auch noch einiges gut zu machen.')

  news23 = News.create(
    author: philipp,
    editor: nil,
    edit_count: 0)

  Newstext.create(
    news: news23,
    language: 'de',
    title: 'Oxstedt gewinnt letztes Heimspiel',
    subtitle: '3:1 Sieg gegen die SpVgg Mittelstenahe',
    abstract: 'Am gestrigen Sonntag war der TSV Lamstedt in Oxstedt zu Gast.',
    text: 'Das Spiel war von Beginn an total zerfahren und absolut chaotisch.<br>Keine der beiden Teams konnte Akzente setzen und so war das Spiel nicht schön anzuschauen,<br>In der 36.Minute konnte sich der Mittelfeldspieler der Gäste auf der Außenbahn durchsetzen und brachte den Ball in den Sechzehner,wo Sönke Riggers nur noch einschieben musste zum 0:1.<br>Die Gastgeber kamen hellwach aus der Kabine und konnten durch Tim Skebe den Ausgleich erzielen.<br>Christian Maylahn setzt sich auf rechts durch und bringt den Ball rein,wo Skebe den Ball über die Linie stochert.<br>Das Spiel bleibt zerfahren bis zur 75.Minute.Jan Radnitz geht mit dem Ball in den 16er,wo er vom Gästekeeper gefoult wird,Folge Elfmeter.<br>Tobias Budel legte sich den Ball hin und verwandelte souverän zum 2:1.<br>In der 90.Minute macht Tobias Budel nach Vorlage von Tim Skebe noch das 3:1.')
end
