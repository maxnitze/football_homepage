# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' ))
#   Mayor.create(name: 'Emanuel', city: cities.first)

can_process_users = UserRolePermission.create(
  symbol: :can_process_users,
  description: 'darf Benutzer bearbeiten')

can_delete_users = UserRolePermission.create(
  symbol: :can_delete_users,
  description: 'darf Benutzer löschen')

can_create_news = UserRolePermission.create(
  symbol: :can_create_news,
  description: 'darf Nachrichten erstellen')

can_process_news = UserRolePermission.create(
  symbol: :can_process_news,
  description: 'darf Nachrichten bearbeiten')

can_delete_news = UserRolePermission.create(
  symbol: :can_delete_news,
  description: 'darf Nachrichten löschen')

can_process_kicktipp = UserRolePermission.create(
  symbol: :can_process_kicktipp,
  description: 'darf Kicktipp bearbeiten')

admin = UserRole.create(
  name: 'Administrator',
  description: 'administriert die vollständige Webseite und hat alle Rechte',
  symbol: :admin,
  user_role_permissions: [])

super_editor = UserRole.create(
  name: 'Super-Editor',
  description: 'darf Nachrichten und Kommentare auf der Seite verfassen, bearbeiten und entfernen',
  symbol: :super_editor,
  user_role_permissions: [ can_create_news, can_process_news, can_delete_news ])

editor = UserRole.create(
  name: 'Editor',
  description: 'darf Nachrichten auf der Seite verfassen und seine eigenen Nachrichten bearbeiten',
  symbol: :editor,
  user_role_permissions: [ can_create_news ])

kicktipp_manager = UserRole.create(
  name: 'Kicktipp-Manager',
  description: 'darf die Kicktipp-Ligen bearbeiten',
  symbol: :kicktipp_manager,
  user_role_permissions: [ can_process_kicktipp ])

# test-data, no real seeds
max = User.create(
  name: 'Max Nitze',
  surname: 'Nitze',
  givenname: 'Max',
  email: 'max.nitze@googlemail.com',
  password: 'test1234',
  user_roles: [ admin, super_editor, kicktipp_manager ],
  confirmed_at: Time.now,
  confirmation_sent_at: Time.now,
  current_sign_in_at: Time.now,
  last_sign_in_at: Time.now,
  current_sign_in_ip: '127.0.0.1',
  last_sign_in_ip: '127.0.0.1')

Identity.create(
  user: max,
  provider: 'google_oauth2',
  uid: '112843738969681941517')

team_ox = Team.create(
  name: 'VfB Oxstedt',
  ishometeam: true,
  hometeamname: '1. Herren',
  isfemale: false,
  class_id: 5)

team_aw = Team.create(
  name: 'TSV Altenwalde',
  ishometeam: false,
  hometeamname: '',
  isfemale: false,
  class_id: 5)

team_nhz = Team.create(
  name: 'TSG Nordholz',
  ishometeam: false,
  hometeamname: '',
  isfemale: false,
  class_id: 5)

club_ox = Club.create(
  name: 'VfB Oxstedt',
  teams: [ team_ox ])

club_aw = Club.create(
  name: 'TSV Altenwalde',
  teams: [ team_aw ])

club_nhz = Club.create(
  name: 'TSG Nordholz',
  teams: [ team_nhz ])

player_max = Player.create(
  surname: 'Nitze',
  givenname: 'Max',
  birthday: Time.local(1990, 1, 28),
  position: :defense,
  leg: :right)

player_jan = Player.create(
  surname: 'Radnitz',
  givenname: 'Jan',
  birthday: Time.local(1984, 2, 3),
  position: :offense,
  leg: :left)

player_florian = Player.create(
  surname: 'Ermler',
  givenname: 'Florian',
  birthday: Time.local(1987, 1, 22),
  position: :goal,
  leg: :left)

league = League.create(
  name: '2. Kreisklasse',
  start: Time.local(2014, 7, 1),
  end: Time.local(2015, 6, 30),
  class_id: 5,
  iscup: false,
  isfemale: false,
  noreferee: false,
  teams: [ team_ox, team_aw, team_nhz ])

News.create(
  title: 'Meister 3. Kreisklasse 2014!!!',
  subtitle: 'Nach dem Abstieg im Vorjahr gelingt der direkte Wiederaufstieg',
  author: max,
  editor: nil,
  edit_count: 0,
  abstract: 'Auch wenn es sehr verspätet kommt: Wir haben es geschafft, wir sind MEISTER! In einem über die Maßen spannenden Spiel haben wir uns vor einigen Wochen gegen die zweite Mannschaft des TSV Otterndorf den Titel in unserer Klasse gesichert. Nachdem wir mit einem 2:2 in die Kabine gegangen waren, machten wir nach einem Kraftakt in der letzten Minute der zweiten Hälfte das entscheidende Tor zum 3:2 Heimsieg.',
  text: "Über die Vorbereitung bis zum Warm-Machen merkte man jedem Spieler den absoluten Ehrgeiz und die richtige Einstellung zu diesem, für uns entscheidenden Spiel an. Alle waren bis in die Haarspitzen motiviert und auch unsere Fans, die uns absolut unterstützten, gaben alles, was uns nochmal den letzten Schub gab. So kamen wir eigentlich gut ins Spiel. Der Ball lief bei uns durch die Reihen und wir schalteten in den richtigen Momenten schnell nach vorne um. Was uns fehlte war das nötige Glück beim Abschluss. So verzogen Tim Skebe und Björn Schmidt knapp. Aber auch die Otterndorfer hatten ihre Möglichkeiten. Vor allem über ihre beiden robusten Stürmer, die es gut verstanden den Ball zu behaupten, gelang ihnen die ein oder andere gute Chance. Eine davon führte in der 14. Minute zur Führung der Gäste. Philipp Dozoweit und Sebastian Reuter spielten sich mit einem Doppelpass, den Dozoweit mit der Hacke an unserem Sechzehner quer legte, durch unsere Verteidigung und Reuter schob den Ball präzise rechts ins Tor. Aus 9 Metern ließ er unserem Schlussmann Mark Siering dabei keine Abwehrchance. So mussten wir früh einem Rückstand hinterher laufen, hatten aber mehr Spielanteile. In der 30. Minute war es dann Julian Stock, der den Gleichstand wieder herstellte. Von Jan Radnitz auf links bedient lief er quer vor dem Sechzehner entlang. Nachdem er hier vier Spieler stehen gelassen hat, schloss er auf das linke untere Eck ab und traf platziert gegen die Laufrichtung des Torwarts. Ganz verrückt ging es dann nach dem Anstoß weiter: Tim Skebe eroberte den Ball am Mittelkreis direkt nach dem Anpfiff und spielte ihn genau durch die Schnittstelle der noch etwas unsortierten Abwehr, wo Jan Radnitz den Ball bekam. Er umkurvte den Schlussmann und schloss von der rechten Fünfer-Kante mit rechts ins kurze Eck ab. Innerhalb von 2 Minuten hatten wir das Spiel zu unseren Gunsten gedreht! So sollte es jedoch nicht bleiben. Kurz vor der Pause (43.) konnten die Gäste wieder ausgleichen. Nach einer Flanke über unsere linke Abwehrseite konnte wieder Sebastian Reuter wuchtig per Kopf vollenden. So ging es mit einem bis dahin gerechten 2:2 in die Pause.<br>In der zweiten Hälfte wurde das Spiel dann deutlich hektischer und spielte sich viel im Mittelfeld ab. Viele Fehlpässe führten dazu, dass nicht allzu viel flüssiges Spiel stattfand. Beide Mannschaften hatten sich in der ersten Hälfte einen solch intensiven Schlagabtausch abgeliefert, dass sie ab der 70. Minute stehend K.O. schienen. Viel wurde mit langen Bällen gelöst, die vor allem für die Otterndorfer zu mehreren sehr großen Chancen führten. Doch die eingewechselten Offensivspieler traten ein um's andere Mal völlig frei am Ball vorbei und so blieb es vorerst beim 2:2.<br>Der Schiedsrichter zeigte gerade die zwei Minuten Nachspielzeit an, da begangen die Gäste ein eher unnötiges Foul kurz vor ihrem Sechzehner. Jan Radnitz bringt diesen Ball vor's Tor, wo Luca Nista zum Abschluss kommt. Der starke Otterndorfer Torwart kann den Ball noch abwehren, doch mit aller Macht springt Tobias Budel in diesen Ball und bringt ihn, von halb links mit dem rechten Außenrist im Tor unter. Jetzt kamen die Emotionen frei raus bei allen Spielern! Auf dem Haufen, der auf dem Platz über Tobias gebildet wurde befanden sich sogar Zuschauer! Und dann war Schluß! Wir waren Meister!<br><br>Ein unglaubliches Spiel! In der letzten Minute das Spiel und damit auch die Saison für uns entschieden. An Dramatik war das kaum zu überbieten. An dieser Stelle auch nochmal ein risen Lob an unsere Fans und Zuschauer, die uns die gesamte Saison überragend unterstützt haben und so auch dieses Spiel zu einem echten Highlight gemacht haben. Diese Saison war echt eine super Leistung von allen. Eine schöne Sommerpause Meister 3. KK! ")

News.create(
  title: 'Sportwoche 2014',
  subtitle: 'Turnier findet wieder vom 27. Juli bis 02. August statt',
  author: max,
  editor: nil,
  edit_count: 0,
  abstract: '',
  text: "Unsere Sportwoche findet dieses Jahr vom 27. Juli bis zum 02. August auf unserem Sportplatz statt. Es werden jeden Abend zwei Spiele ausgetragen, jeweils um 19:15 Uhr und 20:25 Uhr. Am abschließenden Samstag werden die Finalspiele, sowie ein Testspiel stattfinden. Alles weitere kann dem Spielplan im angehängten Forums-Beitrag entnommen werden. ")

News.create(
  title: 'Saisonauftakt geglückt',
  subtitle: 'Drei Tore in der zweiten Hälfte machen Sieg deutlich',
  author: max,
  editor: nil,
  edit_count: 0,
  abstract: 'Nachdem wir an dem vorigen Mittwoch das Pokalspiel gegen die SG Bülkau/Steinau/Odisheim bestritten haben, folgte am vergangenen Sonntag das erste Spiel der neuen Saison in der zweiten Kreisklasse. Zwar nicht überzeugend, aber trotzdem deutlich, konnten wir das Spiel nach einem 1:0 zur Halbzeit am Ende mit 4:0 für uns entscheiden.',
  text: "Die ersten Minuten, wie eigentlich die gesamte erste Hälfte, verliefen sehr holprig. Beide Mannschaften lieferten sich ein Fehlpass- und Ballverlust-Festival im Mittelfeld. So fiel auch das 1:0 aus einer merkwürdigen Situation. Jan Radnitz spielt den Ball von rechts quer durch den Sechzehner. Der Torhüter stößt mit einem seiner eigenen Mitspieler zusammen, sodass beide nicht an den Ball kommen. Dieser geht an Mann und Maus vorbei auf die linke Außenlinie, wo Tobias Budel ihn erläuft. Der Schlussmann liegt immer noch neben seinem Tor, sodass das dieses frei ist. Tobias spielt den Ball direkt von der Außenlinie hoch auf's Tor. Der anstürmende Verteidiger kann diesen nicht mehr erreichen. Die Hausherren agierten zumeist mit langen Bällen, die auf dem kleinen Platz einmal aufkamen und im Sechzehner landeten. Diese Bälle entschärfte Mark Siering jedoch alle meistens mehr, manchmal weniger sicher. Kurz nach dem 1:0 erzielte Fabian Ferle noch nach einer Ecke ein Kopfballtor am ersten Pfosten, das vom Scheidsrichter aber wegen eines Haltens am anderen Ende des Strafraums zurückgepfiffen wurde. Kurz vor dem Seitenwechsel musste Mark Siering noch einmal eingreifen, als Dominik Höhmann auf seinem Weg in Richtung Sechzehner nicht gestört wurde und einen satten Schuss aus etwa 25 Metern abließ. Mark musste sich ganz lang machen, um an diesen Ball zu kommen, konnte ihn aber links am Pfosten vorbei lenken.<br>Nach der Pause zeigten wir ein deutlich solideres Spiel. Die Räume im Mittelfeld, die wir in der ersten Halbzeit auch bereits gehabt haben, nutzten wir nun deutlich besser unsd erspielten uns diverse Chancen, die wir aber teilweise stümperhaft vergaben. Malte Schriefer und Max Nitze scheiterten kurz nacheinander frei vor dem Torwart der Gastgeber kläglich. In der 73. Minute belohnten wir uns dann aber doch noch. Wieder hatten wir extrem viel Platz in der zentrale und Max Nitze konnte einen Ball zentral vor den Sechzehner von Geversdorf auf den gerade eingewechselten Daniel Neumann spielen. Die beiden Verteidiger schauten bestenfalls zu und so musste Daniel sich nur noch drehen und schloss direkt ab. Den Ball konnte Martin Jagusch im Tor der Hausherren noch mit einem Fuß abwehren. Den Nachschuss von Tobias Budel dann aber nicht mehr, sodass wir verdient mit 2:0 in Führung gingen. Nur fünf Minuten später war es diesmal Tobias Budel, der den Treffer von Jan Radnitz vorbereitete. Beide spielten sich mit zwei Doppelpässen an allen Verteidigern vorbei und Jan schoss schließlich durch die Beine des herauskommenden Schlussmanns ins Tor zum 3:0. In der 84. Minute erhöhten wir dann sogar noch auf 4:0 durch ein Eigentor von Christian Scheibel. Manolito Schork führte einen Einwurf schnell auf Max Nitze aus, der direkt im Sechzehner, nahe der Grundlinie, war. Er wollte den Ball zurück auf den Fünfer legen, wo Jan Radnitz und Tobias Budel bereit standen, aber der Fuß des Verteidigers war dazwischen, von dem der Ball direkt im Tor landete.<br><br>Vom Ergebnis war es sicherlich ein Einstand in die Saison, wie wir ihn uns vorgestellt haben. Spielerisch bot das Spiel aber vor allem in der ersten Hälfte wenige gute Aspekte. Gegen schwache Geversdorfer konnten wir in der zweiten Hälfte etwas mehr Spaß am Spiel zeigen und kombinierten uns oftmals gut von hinten in die Spitze. Hier war vor allem die Torausbeute ein Manko. Am zweiten Spieltag (morgen) wird die dritte Vertretung von Rot-Weiß Cuxhaven bei uns zu Gast sein. hier werden wir wahrscheinlich ein spielerisch anders auftretendes Team zu Gesicht bekommen. Wenn wir aber auf der zweiten Hälfte aufbauen, werden wir auch hier sicherlich ein gutes Bild abgeben.")

News.create(
  title: 'Zwei Tore nicht gegeben',
  subtitle: '1. Herren gewinnt knapp mit 1:0 gegen den FC Neuenkirchen/Ihlienworth II',
  author: max,
  editor: nil,
  edit_count: 0,
  abstract: 'Etwas ersatzgeschwächt reisten wir vor drei Wochen zum Spiel beim 1. Kreisklasse-Absteiger FC Neuenkirchen/Ihlienworth II an. Am Ende stand ein verdientes 1:0 für uns auf der Anzeige.',
  text: "In der ersten Hälfte sind wir bereits gut ins Spiel gekommen. Nach eine platzierten Schuss von Max Nitze aus der zweiten Reihe setzt Jan Radnitz in der 21. Minute nach. Der Torwart kann den Schuss aus fünf Metern aber stark am linken Pfosten vorbei lenken. Zehn Minuten später brachte Jan Radnitz einen Freistoß auf den Elfmeter-Punkt, wo Michael Hubrich den Ball verlängert. Der Torwart kann den Ball erst hinter der Linie festhalten, gibt dies aber zu dem Zeitpunkt noch nicht zu (nach dem Spiel schon) und der Unparteiische konnte dies aus seiner Position nicht sehen, sodass er nicht auf Tor entschied. Die Hausherren agierten vor Allem mit langen Bällen auf ihren Zehner, der zwar keinen großen Bewegungsradius hatte, aber die Bälle meistens clever verteilte. Wir konnten diese Bälle in die Spitze aber zumeist entschärfen.<br>In der zweiten Hälfte setzen wir das Spiel fast genauso fort wie im ersten Durchgang und in der 66. Minute belohnten wir uns dann auch dafür. Paul Paatz hinterlief Malte Schriefer auf der rechten Seite und bekam den Ball. Die Flanke die er daraufhin rein gebracht hat kam genau auf dem Kopf von Tobias Budel am zweiten Pfosten an, der diesen am kurzen Pfosten im Tor unter bringt. Auch in der Folge haben wir weiter Druck gemacht und sind auch noch weiter zu Chancen gekommen, wie in der 83. Minute, als ein Freistoß von Max Nitze in den Sechzehner kommt wo wieder Michael Hubrich diesen ins Tor verlängert. Der ankommende Schlussmann trifft ihn dabei außerhalb des Fünfers ohne dabei den Ball zu spielen, aber Scheidsrichter Wübbo Zierow entscheidet auf Stürmerfoul und gibt auch dieses Tor nicht. In den letzten Minuten haben die Hausherren nioch einmal den Druck erhöht, konnten den Ausgleich aber nicht mehr erzielen.<br><br>Knappen, aber verdientes Ergebnis. Wichtig nach der desolaten Leistung in dem Spiel in der Vorwoche. Mit 6 Punkten aus drei Spielen haben wir damit aber einen ordentlichen Saisonstart hingelegt, den wir gegen die vierte Vertretung von Rot-Weiß Cuxhaven in der kommenden Woche noch ausweiten wollen.")

News.create(
  title: 'Der vierfache Budel',
  subtitle: 'Tobias Budel macht alle vier Tore gegen Rot-Weiß Cuxhaven III',
  author: max,
  editor: nil,
  edit_count: 0,
  abstract: 'Vor etwas mehr als einer Woche war die vierte Vertretung von Rot-Weiß Cuxhaven bei uns zum Ligaspiel zu Gast. In einer etwas hitzigen Partie gingen wir schlussendlich mit 4:1 als Sieger vom Platz.',
  text: "Taktisch waren wir darauf eingestellt die Gäste in ihrer Hälfte spielen zu lassen und erst an der Mittellinie drauf zu gehen um dann mit schnellen Kontern die Hintermannschaft auszuhebeln. Dies gelang uns auch direkt von Beginn an gut und Fabian Ferle hatte nach diesem Schema bereits in der 15. Minute den Führungstreffer auf dem Fuß. Vier Minuten später machte Tobias Budel es dann besser, als er wieder nach einem Konter den Ball von Jan Radnitz quer an den Sechzehner gelegt bekommt und platziert links ins Tor einschießt.<br>Unsere Hintermannschaft stand eigentlich das gesamte Spiel über solide und wir ließen nicht viele Chancen zu, aber in der 32. Minute waren es Philipp Kömpel, der nicht energisch gegen den Mann verteidigte, und Robert Dettloff, der zu ungestüm auf den Gegener zulief und sich so sehr schnell ausspielen ließ. So hatte Sebastian Sperling nur noch unseren Keeper vor sich, an dem er aber unten rechts vorbei ins kurze Eck legen konnte.<br>Nur fünf Minuten später konnten wir aber durch einen Standard die alte Führung wieder herstellen. Tobias Budel versenkte den Ball von einem indirekten Freistoß im gegnerischen Sechzehner, nachdem Jan Radnitz diesen zur Seite gelegt hatte, humorlos oben links im kurzen Winkel. Der Schlussmann hatte keine Chance diesen abzuwehren.<br>In der Folge wurde das Spiel sehr zerfahren. Nicht nur durch den indirekten Freistoß fühlten sich die Cuxhavener vom Schiedsrichter benachteilt und zeigten das verbal und durch Foulspiele, wovon wir uns auch teilweise anstecken ließen.<br>Nach dem Seitenwechsel konnten wir unsere Führung dann noch durch zwei Strafstöße, die nicht zur Besserung der Stimmung der Gäste beitrugen, auf 4:1 ausbauen. Zuerst wurde Manolito Schork bei einem Eckball von Zwei Gegenspielern in die Mangel genommen (59.). In der 70. konnte Tim Skebe einen Freistoß im Sechzehner mit dem Knie ins Tor weiter lenken. Dabei wurde er aber vom Torwart umgehauen und der Unparteiische entschied, bevor der Ball im Tor war, auf Strafstoß. Beide Elfmeter verwandelte Tobias Budel souverän und markierte damit sein drittes und viertes Tor in dem Spiel!<br><br>Das hatten wahrscheinlich nicht viele vor der Saison erwartet. Trotz eines Lazaretts mit acht Spielern haben wir aus den ersten vier Spielen neun Punkte geholt und stehen punktgleich mit dem Tabellenführer auf dem vierten Rang. In der kommenden Woche kommt es dann in Groden zu Spitzenspiel gegen einen der Favoriten auf die Meisterschaft in der 2. Kreislklasse.")

News.create(
  title: '0:0 der besseren Art',
  subtitle: '1. Herren spielt Unentschieden beim Tabellenführer Grodener SV',
  author: max,
  editor: nil,
  edit_count: 0,
  abstract: 'Am fünften Spieltag spielten wir das Topspiel gegen den Grodener SV, die genauso wie wir mit neun Punkten aus den ersten vier Spielen am oberen Ende der Tabelle standen. Nach 90 Minuten endete ein gutes Spiel mit einem verdienten 0:0.',
  text: "In der ersten Hälfte verhielten wir uns taktisch sehr diszipliniert und zwangen die Hausherren immer wieder zu langen Bällen. Nur wenige davon kamen an und, zumindest in der ersten Hälfte, führte keiner zu einer wirklichen Torchance. Wir hingegen konnten uns einige gute Chance heraus spielen. Tobias Budel wurde in der Offensive fast immer gedoppelt, was immer wieder Räume für Tim Skebe eröffnete. In der 28. Minute dringt er von links in den Sechzehner ein und scheitert etwas zu verspielt erst am Fünfer an einem der Verteidiger. Nur kurze Zeit später bringt Jan Radnitz eine Flanke aus dem Halbfeld auf den zweiten Pfosten, wo wieder Tim Skebe völlig frei zum Kopfball kommt. Der Ball geht aber knapp am rechten Pfosten vorbei.<br>Nach dem Seitenwechsel verloren wir etwas die Ordnung in unserem Spiel. Die kräftezehrende erste Hälfte hinterließ vor allem in der Defensive spuren und für die Grodener eröffneten sich einige Freiräume aus dene sie immer wieder Chancen heraus spielen konnten. Der letzte Pass fand aber oftmals nicht den Adressaten. In der 78. Minute hatten sie dann ihre größte Chance, als Firat Bicer nach einem Eckball am Elfer direkt zum Schuss kommt und Florian Ermler den Ball mit einer unglaublichen Parade noch über die Latte lenkte.<br><br>Somit stand nach 90 Minuten ein 0:0 der besseren Art auf der Anzeige. Beide Mannschaften haben eine Halbzeit auf ihrer Seite gehabt. Somit können auch beide mit dem Ergebnis zufrieden sein. Am kommenden Sonntag bestreiten wir unser nächstes Heimspiel gegen die zweite Mannschaft des TSV Germania Cadenberge. Hier wollen wir unseren super Start in die Aufstiegs-Saison weiter fortsetzen.")

News.create(
  title: 'Drei Punkte ohne gespielt zu haben',
  subtitle: 'TSV Germania Cadenberge II tritt bei uns nicht an',
  author: max,
  editor: nil,
  edit_count: 0,
  abstract: '',
  text: "Aufgrund des Mangels an Spielern kann der TSV Germania Cadenberge II in dieser Woche nicht bei uns antreten. Selbst mit Hilfe von den Altsenioren würden nicht genügend Spieler zusammen kommen. Deshalb findet das Spiel heute in Oxstedt nicht statt. Gerne hätten wir das Spiel heute ausgetragen. Wir wünschen dem TSV Germania Cadenberge, dass sich die Personalsituation in den kommenden Wochen wieder entspannt.<br><br>Nächste Woche sind wir dann beim TSV Otterndorf II zu Gast. Die Mit-Aufsteiger aus der 3. Kreisklasse aus der letzten Saison sind ähnlich gut in die Saison gestartet. Durch den Sieg am Freitag gegen den Tabellenführer aus der Wingst haben sie 3 Siege und 2 Unentschieden aus den ersten sechs Spielen geholt. ")
