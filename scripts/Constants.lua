
--Damage types
RPG_DMG_FIRE 			= 1
RPG_DMG_COLD			= 2
RPG_DMG_ACID			= 3
RPG_DMG_ELECTRICAL		= 4
RPG_DMG_POISON			= 5
RPG_DMG_DISEASE			= 6
RPG_DMG_MAGICAL			= 7
RPG_DMG_DRAIN			= 8
RPG_DMG_UNSTOPPABLE		= 9
RPG_DMG_PHYSICAL		= 10
RPG_DMG_SLASHING		= 11
RPG_DMG_PIERCING		= 12
RPG_DMG_BASHING			= 13
RPG_DMG_CLAWS			= 14
RPG_DMG_BITE			= 15

--RESISTS
RPG_RESIST_MAGICAL		= 1
RPG_RESIST_FIRE			= 2
RPG_RESIST_COLD			= 3
RPG_RESIST_ACID			= 4
RPG_RESIST_POISON		= 5
RPG_RESIST_DISEASE		= 6
RPG_RESIST_ELECTRICAL	= 7
RPG_RESIST_DRAIN		= 8
RPG_RESIST_UNSTOPPABLE	= 9
RPG_RESIST_PHYSICAL		= 10
RPG_RESIST_SLASHING		= 11
RPG_RESIST_PIERCING		= 12
RPG_RESIST_BASHING		= 13
RPG_RESIST_CLAWS		= 14
RPG_RESIST_BITE			= 15

--Drop rate CONST
RPG_FREQ_QUEST			= 1 		--used for quest items that need to drop every time
RPG_FREQ_COMMON			= 2 		
RPG_FREQ_UNCOMMON		= 3
RPG_FREQ_RARE			= 4
RPG_FREQ_LEGANDARY		= 5
RPG_FREQ_IMPOSSIBLE		= 6 		--used for NPC items that the use can not get

--QUALITY CONST
RPG_QUALITY_BROKEN		= 1
RPG_QUALITY_WORN		= 2
RPG_QUALITY_NORMAL		= 3
RPG_QUALITY_FINE		= 4
RPG_QUALITY_PRISTINE	= 5

--SPELL TYPES
RPG_SPELL_HELPFUL		= 2
RPG_SPELL_HARMFUL		= 3 
RPG_SPELL_PERSISTENT	= 5 

RPG_TARGET_SELF			= 1
RPG_TARGET_OTHER		= 2
RPG_TARGET_AREA			= 3

--ITEM types 					--items my have more then one item type
RPG_ITEM_SOULBOUND		= 1
RPG_ITEM_UNIQUE			= 2 	--can only have one of these items
RPG_ITEM_ETHEREAL		= 3
RPG_ITEM_INDESTRUCTIBLE	= 4
RPG_ITEM_ARTIFACT		= 5    	--this type of item will not be random generated
RPG_ITEM_ENCHANTED		= 6
RPG_ITEM_LITERATURE		= 8

--ITEM TRIGGERS
RPG_ITEM_TRIGGER_WORN		= 1
RPG_ITEM_TRIGGER_ATTACK		= 2
RPG_ITEM_TRIGGER_DAMAGED	= 3
RPG_ITEM_TRIGGER_USE		= 4
RPG_ITEM_TRIGGER_POISON		= 5

--ITEM PROC TYPES
RPG_ITEMPROC_POISON			= 1
RPG_ITEMPROC_ENCHANTMENT	= 2

--EFFECT TYPES
RPG_EFFECT_WATERBREATHING 	= 1
RPG_EFFECT_LEVITATE			= 2
RPG_EFFECT_PARALYSIS		= 3 		--can not move attack or cast spells
RPG_EFFECT_ROOT				= 4 		--can not move
RPG_EFFECT_RESURRECTION		= 5
RPG_EFFECT_STUN				= 6         --can not attack or cast spells movement is slowed
RPG_EFFECT_SLEEP			= 7         
RPG_EFFECT_CHARM			= 8 
RPG_EFFECT_INTERRUPT		= 9         --can not cast
RPG_EFFECT_BANISH			= 10  
RPG_EFFECT_SUMMONMONSTER	= 11
RPG_EFFECT_SUMMONALLY		= 12

--CHAR SLOTS
RPG_SLOT_HEAD		= 1
RPG_SLOT_LEAR		= 2
RPG_SLOT_REAR		= 3
RPG_SLOT_NECK		= 4
RPG_SLOT_SHOULDERS	= 5
RPG_SLOT_BACK		= 6
RPG_SLOT_CHEST		= 7
RPG_SLOT_ARMS		= 8
RPG_SLOT_HANDS		= 9
RPG_SLOT_LFINGER	= 10
RPG_SLOT_RFINGER	= 11
RPG_SLOT_PRIMARY	= 12
RPG_SLOT_SECONDARY	= 13
RPG_SLOT_RANGED		= 14
RPG_SLOT_AMMO		= 15
RPG_SLOT_WAIST		= 16
RPG_SLOT_LEGS		= 17
RPG_SLOT_FEET		= 18
RPG_SLOT_LWRIST		= 19
RPG_SLOT_RWRIST		= 20
RPG_SLOT_SHIELD		= 21
RPG_SLOT_LIGHT		= 22

--INVENTORY SLOTS
RPG_SLOT_CARRY1		= 23
RPG_SLOT_CARRY2		= 24
RPG_SLOT_CARRY3		= 25
RPG_SLOT_CARRY4		= 26
RPG_SLOT_CARRY5		= 27
RPG_SLOT_CARRY6 	= 28
RPG_SLOT_CARRY7		= 29
RPG_SLOT_CARRY8		= 30
RPG_SLOT_CARRY9		= 31
RPG_SLOT_CARRY10	= 32
RPG_SLOT_CARRY11	= 33
RPG_SLOT_CARRY12	= 34
RPG_SLOT_CARRY13	= 35
RPG_SLOT_CARRY14	= 36
RPG_SLOT_CARRY15	= 37
RPG_SLOT_CARRY16	= 38
RPG_SLOT_CARRY17	= 39
RPG_SLOT_CARRY18	= 40
RPG_SLOT_CARRY19	= 41
RPG_SLOT_CARRY20	= 42
RPG_SLOT_CARRY21	= 43
RPG_SLOT_CARRY22	= 44
RPG_SLOT_CARRY23	= 45
RPG_SLOT_CARRY24	= 46
RPG_SLOT_CARRY25	= 47
RPG_SLOT_CARRY26	= 48
RPG_SLOT_CARRY27	= 49
RPG_SLOT_CARRY28	= 50
RPG_SLOT_CARRY29	= 51
RPG_SLOT_CARRY30	= 52
RPG_SLOT_CARRY31	= 53
RPG_SLOT_CARRY32	= 54
RPG_SLOT_CARRY33	= 55
RPG_SLOT_CARRY34	= 56
RPG_SLOT_CARRY35	= 57

RPG_SLOT_BANK1		= 58
RPG_SLOT_BANK2		= 59
RPG_SLOT_BANK3		= 60
RPG_SLOT_BANK4		= 61
RPG_SLOT_BANK5		= 62
RPG_SLOT_BANK6		= 63
RPG_SLOT_BANK7		= 64
RPG_SLOT_BANK8		= 65
RPG_SLOT_BANK9		= 66
RPG_SLOT_BANK10		= 67
RPG_SLOT_BANK11		= 68
RPG_SLOT_BANK12		= 69
RPG_SLOT_BANK13		= 70
RPG_SLOT_BANK14		= 71
RPG_SLOT_BANK15		= 72
RPG_SLOT_BANK16		= 73
RPG_SLOT_BANK17		= 74
RPG_SLOT_BANK18		= 75
RPG_SLOT_BANK19		= 76
RPG_SLOT_BANK20		= 77
RPG_SLOT_BANK21		= 78
RPG_SLOT_BANK22		= 79
RPG_SLOT_BANK23		= 80
RPG_SLOT_BANK24		= 81
RPG_SLOT_BANK25		= 82
RPG_SLOT_BANK26		= 83
RPG_SLOT_BANK27		= 84
RPG_SLOT_BANK28		= 85
RPG_SLOT_BANK29		= 86
RPG_SLOT_BANK30		= 87
RPG_SLOT_BANK31		= 88
RPG_SLOT_BANK32		= 89
RPG_SLOT_BANK33		= 90
RPG_SLOT_BANK34		= 91
RPG_SLOT_BANK35		= 92

--LOOT SLOTS
RPG_SLOT_LOOT1	= 93
RPG_SLOT_LOOT2	= 94
RPG_SLOT_LOOT3	= 95
RPG_SLOT_LOOT4	= 96
RPG_SLOT_LOOT5	= 97
RPG_SLOT_LOOT6	= 98
RPG_SLOT_LOOT7	= 99
RPG_SLOT_LOOT8	= 100
RPG_SLOT_LOOT9	= 101
RPG_SLOT_LOOT10	= 102
RPG_SLOT_CURSOR	= 103

--TITLES
RPG_NAME_TITLES = []

RPG_STAT_STR = 1
RPG_STAT_CON = 2
RPG_STAT_DEX = 3
RPG_STAT_WIS = 4
RPG_STAT_INT = 5
RPG_STAT_CHA = 6

--SKILLS  AND LANGUAGE

RPG_SKILL_MAX	= 500
RPG_SKILLS		= ['Appraise', 'Balance', 'Bluff', 'Climb', 'Concentration', 'Decipher Script', 'Diplomacy', 'Disable Device', 'Disguise', 'Escape Artist', 'Forgery', 'Gather Information', 'Handle Animal', 'Heal', 'Hide', 'Intimidate', 'Jump', 'Listen', 'Sneak', 'Lockpick', 'Perform', 'Ride', 'Search', 'Sense Motive', 'Spellcraft', 'Spot', 'Survival', 'Use Magic Device', 'Use Rope', 'Craft Armor', 'Craft Weapon', 'Craft Potion', 'Craft Jewelry', 'Craft Scroll', 'Craft Wand', 'Craft Staff', 'Knowledge History', 'Knowledge Plants', 'Knowledge Animals', 'Knowledge Monsters', 'Knowledge Divinity', 'Knowledge Genral',] 
RPG_LANGUAGE	= ['Common', 'Dwarven', 'Elven', 'Gnome', 'Halfling', 'Undercommon', 'Draconic', 'Goblin', 'Gnoll', 'Giant', 'Orc', 'Elemental',]



------------------------------------------
--------		SPAWN RELATED		------
------------------------------------------

--SPAWN MODE
RPG_SPAWN_NPC			= 1
RPG_SPAWN_MONSTER		= 2
RPG_SPAWN_NAMEDNPC		= 3
RPG_SPAWN_NAMEDMONSTER	= 4

--FACTION RATING
RPG_FACTION_HATED		= -250
RPG_FACTION_DISLIKED	= -50
RPG_FACTION_UNDECIDED	= 0
RPG_FACTION_LIKED		= 100
RPG_FACTION_ADORED		= 500

--FACTION NAMES NPC's may belong to more then one
RPG_FACTION_RATHNORRAIDER_NAME	= "Rathnor Raiders"  
RPG_FACTION_RATHNORRAIDER_TITLE = "Raider"
RPG_FACTION_RATHNORRAIDER_RANKS	=['Initiat', 'Novice', 'Leader' ]



RPG_FACTION_DARKRIDERS_NAME		= "Dark Riders"
RPG_FACTION_DARKRIDERS_TITLE	= "Rider"
RPG_FACTION_DARKRIDERS_RANKS	=['Initiat', 'Novice', 'Leader' ]





--NAMES names are not sorted by male or female or race and should be
RPG_NAMES_FIRST	=['Abaxe', 'Abekecev', 'Abikovyt', 'Abirurez', 'Abiser', 'Abiuz', 'Abixin', 'Abxaz', 'Acatuton', 'Aclen', 'Aconeri', 'Acudux', 'Acuvi', 'Adamir', 'Adbak', 'Adcin', 'Addal', 'Adetubi', 'Adiketu', 'Adili', 'Adiniya', 'Adiray', 'Adirot', 'Adirulor', 'Admif', 'Adore', 'Adrod', 'Aducguap', 'Adurib', 'Adydadel', 'Aetanie', 'Aetucanele', 'Afase', 'Afdyn', 'Afeyo', 'Afosate', 'Aganrour', 'Aggeah', 'Ahady', 'Ahcut', 'Ahicivara', 'Ahihyxor', 'Ahiob', 'Ahnak', 'Airebrcal', 'Akabudib', 'Akafuler', 'Akamarek', 'Akarado', 'Akaram', 'Akavenaz', 'Akazekox', 'Akedebit', 'Akemyret', 'Akera', 'Aketanar', 'Akide', 'Akirafe', 'Akoer', 'Akorur', 'Akovuzys', 'Akoyik', 'Akrek', 'Akrid', 'Akrom', 'Akusici', 'Alaheya', 'Alali', 'Alamid', 'Alaranei', 'Aleda', 'Alenaninat', 'Aleval', 'Alfar', 'Alieh', 'Aliok', 'Aliro', 'Alisa', 'Alisma', 'Alron', 'Aludenit', 'Aluseie', 'Alytedot', 'Alyze', 'Amaze', 'Amoet', 'Amonuco', 'Amtux', 'Amxit', 'Anabet', 'Anaex', 'Anaib', 'Anamane', 'Anaoc', 'Ancuk', 'Andagi', 'Aneco', 'Anererul', 'Angeliat', 'Anhif', 'Anibarosa', 'Anicobe', 'Anifener', 'Aniid', 'Anirabyn', 'Aniranax', 'Anirokah', 'Anlat', 'Anonindali', 'Antef', 'Antieb', 'Anuka', 'Anyheve', 'Anykikod', 'Apdael', 'Araad', 'Araaz', 'Aranal', 'Araned', 'Aranil', 'Ararek', 'Ararik', 'Arata', 'Arate', 'Aravorin', 'Araxeko', 'Ardag', 'Ardir', 'Aredovi', 'Arefo', 'Aregnoed', 'Arenirab', 'Aressiol', 'Arlem', 'Arore', 'Arostrde', 'Aroxif', 'Arulis', 'Aruteoh', 'Aruvani', 'Aseseko', 'Atader', 'Aterid', 'Atiru', 'Atoez', 'Avain', 'Axaek', 'Ayadunok', 'Azarcop', 'Azotim', 'Baban', 'Bacarde', 'Bacer', 'Bagelusa', 'Bahononie', 'Balan', 'Balanti', 'Balueos', 'Banem', 'Banth', 'Barar', 'Barelel', 'Baridubl', 'Basen', 'Bebrdeli', 'Bedaneoh', 'Benilie', 'Bentan', 'Beracah', 'Beselibe', 'Besmar', 'Betiusel', 'Bidahzax', 'Biteteem', 'Borudix', 'Brala', 'Buteel', 'Cagdema', 'Cahigdoel', 'Calei', 'Calesm', 'Calik', 'Canatusan', 'Catiares', 'Catitilg', 'Cazanelae', 'Cehined', 'Cehteel', 'Celerar', 'Cenie', 'Cerlalelur', 'Chasora', 'Chelemina', 'Chesanisal', 'China', 'Cidazet', 'Ciebanorco', 'Ciebard', 'Cierlele', 'Cilaik', 'Cisaven', 'Ciseriht', 'Cobixaey', 'Conelarone', 'Conenebral', 'Congda', 'Conion', 'Copha', 'Cophor', 'Corendor', 'Corlicalem', 'Cornd', 'Costa', 'Cylacrin', 'Dakbo', 'Dalebagd', 'Danenode', 'Daneterdo', 'Dasargab', 'Dasfe', 'Davaz', 'Dedireox', 'Delesaro', 'Denahir', 'Deneoph', 'Desan', 'Desele', 'Devaza', 'Dibar', 'Dikra', 'Direkora', 'Dize', 'Dohaszor', 'Doliele', 'Dophandrt', 'Dora', 'Dorasa', 'Doshani', 'Dosteleie', 'Dramoram', 'Drdal', 'Drdraz', 'Drenelic', 'Drlichal', 'Dronth', 'Drorelicha', 'Drueluc', 'Duceken', 'Dylco', 'Ebeuk', 'Ecuver', 'Edanirul', 'Edceit', 'Edena', 'Edoir', 'Ehaod', 'Eivanter', 'Ekeen', 'Ekitaheb', 'Ekunirak', 'Elali', 'Elazaero', 'Elelazanar', 'Elene', 'Elenigial', 'Elerdala', 'Elidilot', 'Elisali', 'Eluch', 'Elulanah', 'Eluluenur', 'Emalelarar', 'Emzer', 'Enala', 'Engari', 'Enidien', 'Enisala', 'Enitafal', 'Eniuele', 'Enykarur', 'Eravaku', 'Ereba', 'Erena', 'Ererul', 'Erobi', 'Eroresar', 'Esarilt', 'Esendrana', 'Esihavi', 'Esmane', 'Etalaro', 'Etenius', 'Etetelend', 'Etidota', 'Evebeli', 'Exayz', 'Ezarur', 'Ezaxol', 'Face', 'Febah', 'Febam', 'Febesor', 'Feielesa', 'Feira', 'Feiust', 'Felaneb', 'Feleba', 'Felelelaev', 'Felerda', 'Felernos', 'Feliri', 'Felis', 'Felusena', 'Femaxeiv', 'Femid', 'Fenaletis', 'Fenanies', 'Fenanthole', 'Fenereli', 'Fenganel', 'Fercard', 'Ferda', 'Ferdeiaelu', 'Feresontal', 'Ferga', 'Fergal', 'Feronthica', 'Ferucanag', 'Fesebard', 'Fesmanar', 'Festian', 'Festulid', 'Fezaba', 'Fezaco', 'Fihomdel', 'Focilier', 'Furerez', 'Fylil', 'Gagatb', 'Galeont', 'Ganene', 'Gdaluei', 'Gdantela', 'Gdole', 'Gdonan', 'Gdorgde', 'Gdrailele', 'Gdran', 'Gdrdo', 'Gebalenda', 'Gelebarca', 'Geluel', 'Gelus', 'Gendosaniu', 'Gerciemana', 'Geval', 'Giceve', 'Gieidese', 'Giene', 'Gioraro', 'Gisavaenav', 'Gismarn', 'Gison', 'Giusetisha', 'Habrlen', 'Hacibhinh', 'Hady', 'Hanaz', 'Haneba', 'Hanelan', 'Hanilue', 'Hanolane', 'Hanteniole', 'Hardarebav', 'Harlicano', 'Harni', 'Harordan', 'Harorue', 'Harus', 'Hathalen', 'Havak', 'Havine', 'Hazki', 'Hehiran', 'Heletiv', 'Hetodek', 'Hikatole', 'Hisarelirn', 'Hisidnith', 'Hisraad', 'Hiulican', 'Hixecnuv', 'Honev', 'Hosesta', 'Hurazayd', 'Ialetuesh', 'Iananusan', 'Ianevases', 'Iberuryr', 'Ibetibah', 'Ibicheth', 'Icenosan', 'Iciagdosm', 'Icokade', 'Idaleid', 'Idetober', 'Idoan', 'Ieiue', 'Ielei', 'Ielelelel', 'Ielezaza', 'Iemezale', 'Ienirtri', 'Ierdo', 'Ietarin', 'Ifohaz', 'Ihagudirn', 'Ikamala', 'Ikear', 'Ikoab', 'Ikron', 'Ikroph', 'Ikyor', 'Ileme', 'Ilinab', 'Ilotocan', 'Imdox', 'Inabohof', 'Ineen', 'Inocead', 'Inodik', 'Inuliro', 'Inuselu', 'Iraxabil', 'Irchieli', 'Irihova', 'Irintr', 'Irona', 'Irudi', 'Isaicagie', 'Isalusol', 'Isanads', 'Isano', 'Isanosaco', 'Isanthang', 'Isesavone', 'Isosemi', 'Itdueh', 'Itoak', 'Iturax', 'Iucichari', 'Ivirara', 'Ixesin', 'Iyobeso', 'Izivakul', 'Jeisan', 'Jelev', 'Jendr', 'Jeorleisa', 'Jerali', 'Jesenelu', 'Jeshardri', 'Jucanulel', 'Jucieosman', 'Juciv', 'Jucor', 'Juelu', 'Jueneles', 'Juler', 'Julernt', 'Julianen', 'Juravianan', 'Jusal', 'Jusarc', 'Jusarl', 'Jusaroriu', 'Jusmoro', 'Jusor', 'Kadilefe', 'Kakinier', 'Kanan', 'Kanix', 'Karoliat', 'Kator', 'Kebol', 'Kelunlyr', 'Keniroav', 'Kerra', 'Kinyx', 'Kisetral', 'Kobinoak', 'Koronkut', 'Kotra', 'Krale', 'Kralethabe', 'Kraliais', 'Krarardebe', 'Krdarenu', 'Krdophord', 'Krdordo', 'Krdos', 'Krdrisar', 'Krdrus', 'Kriet', 'Krlend', 'Krndenar', 'Krneven', 'Kropham', 'Krora', 'Krordal', 'Krosenal', 'Krtes', 'Krtisang', 'Kuyi', 'Lagiesman', 'Lahro', 'Lalyruk', 'Lanan', 'Lanelelerg', 'Lapreeg', 'Larenoir', 'Lebrnd', 'Ledinnit', 'Lekusion', 'Leleos', 'Lelosr', 'Leluson', 'Lenachan', 'Leniane', 'Leral', 'Lertico', 'Lesemama', 'Letec', 'Letiarne', 'Letisma', 'Levacortu', 'Levaha', 'Levaro', 'Lezal', 'Lezarer', 'Liagicebe', 'Liame', 'Liceieba', 'Liciacon', 'Lidro', 'Lietiesh', 'Lihediar', 'Lihle', 'Lihteil', 'Lileiaiet', 'Linavi', 'Lirer', 'Lisotied', 'Liulebes', 'Lodibveh', 'Lorri', 'Lukre', 'Mabanusa', 'Mabed', 'Mairenas', 'Malel', 'Maleses', 'Mamarler', 'Mandebeb', 'Maniue', 'Marden', 'Maxitedo', 'Melemac', 'Melivnih', 'Menetantir', 'Metrlagd', 'Miaru', 'Micev', 'Miend', 'Miliethona', 'Mizilyot', 'Monar', 'Mondraha', 'Morariopha', 'Moxi', 'Nadrihd', 'Nadte', 'Nalazul', 'Nanan', 'Nandr', 'Naroc', 'Natimeor', 'Nazelare', 'Ndales', 'Ndatetarir', 'Ndrninen', 'Nedotax', 'Nenikial', 'Nerigh', 'Nexodour', 'Nicarnthi', 'Nilezay', 'Niliso', 'Niondrar', 'Niraxbon', 'Nirto', 'Nivalela', 'Nive', 'Nobe', 'Noli', 'Nosut', 'Nthar', 'Nucarleb', 'Nugotbatl', 'Nukazryk', 'Nuve', 'Obaka', 'Odeniser', 'Ofiki', 'Okane', 'Okoza', 'Olanirne', 'Olebri', 'Oletrd', 'Oliaf', 'Onaketat', 'Onanarirar', 'Ondrial', 'Onelem', 'Oneneteli', 'Ongeondone', 'Ongesh', 'Onico', 'Ontra', 'Onurdrdore', 'Opharti', 'Orakir', 'Orarnti', 'Orasatenn', 'Ordanesa', 'Ordaram', 'Ordix', 'Ordricis', 'Oribasors', 'Orizeric', 'Ormur', 'Oruke', 'Osano', 'Osavies', 'Osazardaro', 'Osenal', 'Osholusa', 'Osmanu', 'Ososm', 'Otinorex', 'Ovaleri', 'Oxareze', 'Oxeok', 'Ozadat', 'Ozkat', 'Phaes', 'Phaikrth', 'Phalesandr', 'Phalicer', 'Phalist', 'Phalu', 'Phane', 'Phanei', 'Phardarano', 'Pharntre', 'Phelelie', 'Phercalele', 'Phole', 'Phonan', 'Phonicha', 'Phophaca', 'Phosevang', 'Phosoliv', 'Rada', 'Rakeroir', 'Rakxa', 'Rananar', 'Ranaxer', 'Randebeb', 'Ranisg', 'Raniu', 'Rarabik', 'Rareleat', 'Raro', 'Raruz', 'Ratem', 'Raxek', 'Rceles', 'Rcosevis', 'Rderei', 'Rdoph', 'Rdrdahieri', 'Rdrnulei', 'Reca', 'Redsigd', 'Refva', 'Rekakati', 'Relebeil', 'Reliacava', 'Renetein', 'Renialesah', 'Reniln', 'Rerku', 'Resaplads', 'Retanrak', 'Revi', 'Rgidebe', 'Ribyxer', 'Ridoc', 'Rikorote', 'Rinien', 'Riophar', 'Riraf', 'Rirerlen', 'Ritec', 'Ritelapd', 'Rivazdal', 'Rliceba', 'Rnonevonth', 'Rohik', 'Rona', 'Ronendro', 'Rorarbik', 'Rosetnak', 'Rozurake', 'Rteseval', 'Ruha', 'Rumil', 'Ruroh', 'Ruxetiud', 'Rykorete', 'Rysikoir', 'Sacevoneo', 'Saderiir', 'Sahiraeg', 'Saleleme', 'Saliesanac', 'Salix', 'Sandan', 'Sararc', 'Sardonaic', 'Sarutyim', 'Sazac', 'Secal', 'Selerteth', 'Seline', 'Selisezaz', 'Senalikrae', 'Seneli', 'Seveteeb', 'Shaneth', 'Shorda', 'Sirobir', 'Smahaluc', 'Smalan', 'Smale', 'Smani', 'Smielule', 'Smiesali', 'Smisale', 'Smophiv', 'Sokenen', 'Songa', 'Sosalicale', 'Sthielie', 'Sticesa', 'Sukev', 'Tadeb', 'Tafadium', 'Tagderan', 'Tahele', 'Talise', 'Talky', 'Tamardor', 'Taniar', 'Tantulana', 'Tarenrex', 'Tatodfik', 'Teisan', 'Tele', 'Telucen', 'Teros', 'Tevom', 'Thare', 'Thatet', 'Thavo', 'Thiule', 'Tiala', 'Ticelixa', 'Tidse', 'Tielalic', 'Tielaniceo', 'Tiero', 'Tiniyah', 'Tipreil', 'Tiste', 'Titaduix', 'Tiuriuco', 'Tiusamaca', 'Tokenuad', 'Tore', 'Toturh', 'Tozuvyad', 'Triagerdos', 'Tulene', 'Tuluci', 'Tusan', 'Tusand', 'Ubika', 'Ucardrcen', 'Udnas', 'Ueiei', 'Ueletete', 'Uelic', 'Ukazuyaz', 'Ulaliaz', 'Ulaor', 'Ulelele', 'Ulend', 'Ulenerga', 'Unuil', 'Upteen', 'Urdrdophan', 'Urgisar', 'Uridiat', 'Urirehir', 'Usalebenti', 'Usani', 'Usasarl', 'Usave', 'Usefav', 'Usernie', 'Userusa', 'Usesmaza', 'Useza', 'Usihonl', 'Usmare', 'Utesit', 'Uvera', 'Uyrem', 'Vacoror', 'Vaist', 'Valeiel', 'Valonkid', 'Vamana', 'Vanes', 'Vardo', 'Varidone', 'Varnane', 'Varoh', 'Vaseluel', 'Vazanari', 'Veke', 'Verzo', 'Veteicana', 'Vianor', 'Vibanelio', 'Vicandose', 'Vidrar', 'Vietelenan', 'Vilikr', 'Vingende', 'Vini', 'Virtinde', 'Viusmosa', 'Voreriha', 'Vorne', 'Vorone', 'Vortiemo', 'Vosanticir', 'Vunux', 'Xabar', 'Xabele', 'Xaican', 'Xalaboot', 'Xalebale', 'Xaleman', 'Xalinama', 'Xaluez', 'Xamal', 'Xanalenai', 'Xanaries', 'Xanercosam', 'Xanevel', 'Xanicelie', 'Xaniniceo', 'Xarabrd', 'Xaresmane', 'Xaries', 'Xatarobo', 'Xeco', 'Xenaz', 'Xibra', 'Xirot', 'Xotez', 'Xutaveno', 'Ydate', 'Yidinar', 'Yloxi', 'Yoxaloh', 'Yudo', 'Zacelebemi', 'Zacesang', 'Zaicabav', 'Zalehuux', 'Zalesmi', 'Zaletuse', 'Zaliev', 'Zalind', 'Zaluch', 'Zalusari', 'Zanaro', 'Zandanie', 'Zandavi', 'Zarch', 'Zardo', 'Zareoliu', 'Zarineo', 'Zazanda', 'Zazareb', 'Zede', 'Zezor', 'Zilaxkor', 'Zoror', 'Zuxyrofu']
RPG_NAMES_LAST 	=['Angrybeak', 'Archercaster', 'Archermaker', 'Archertracer', 'Arrowmaster', 'Ashbull', 'Ashfinder', 'Ashtracker', 'Banedash', 'Bardhunter', 'Bardseeker', 'Bardtwister', 'Battlegrass', 'Battlemark', 'Battlescar', 'Battlesnake', 'Battracker', 'Beakeater', 'Beakfollower', 'Blackblade', 'Blackboar', 'Blackbrood', 'Blackclaw', 'Blackcoffin', 'Blackcoffin', 'Blackcurser', 'Blackdragon', 'Blackfang', 'Blackfang', 'Blackfire', 'Blackghoul', 'Blackgrave', 'Blackheart', 'Blackhell', 'Blackmaw', 'Blackmist', 'Blackmoon', 'Blackmurk', 'Blackpoison', 'Blackrend', 'Blackrule', 'Blackseer', 'Blackshadow', 'Blacksinner', 'Blackspell', 'Blackwind', 'Blackwing', 'Bladeeye', 'Bladejewel', 'Bleakblow', 'Bleakhand', 'Bleakmark', 'Bleaktaker', 'Bloodhand', 'Bloodraven', 'Bloodstalk', 'Bloodvoid', 'Bloodvoid', 'Blowmolder', 'Blowruler', 'Boarstealer', 'Boarthief', 'Bonebull', 'Bonecaster', 'Boneclaw', 'Bonedreamer', 'Bonefate', 'Bonerend', 'Bonerod', 'Boneruler', 'Bonetouch', 'Bonetraveller', 'Boneworm', 'Bravedive', 'Breakwarrior', 'Breezelance', 'Brushlash', 'Brushsmile', 'Brushwolf', 'Cairnbane', 'Cairnbane', 'Cairnbattle', 'Cairndreamer', 'Cairngrief', 'Cairnrain', 'Cairnshade', 'Cairntooth', 'Catfinder', 'Catpacer', 'Cattraveller', 'Caverncutter', 'Cavernsailor', 'Cavernseer', 'Cavernsinger', 'Cavetraveller', 'Chainbane', 'Chaindoom', 'Chantbeast', 'Chantcairn', 'Chantclaw', 'Chantfury', 'Chantrip', 'Chaosdragon', 'Chaosdragon', 'Chaosfighter', 'Chaoslock', 'Chaosmoan', 'Chaostaker', 'Chilllash', 'Cindertracker', 'Clawfletcher', 'Clawhunter', 'Clawslayer', 'Clawtracer', 'Clawwanderer', 'Clericshooter', 'Coffinfate', 'Coffinfear', 'Coffinmist', 'Coffinwar', 'Coffinwarp', 'Coldbeast', 'Coldbite', 'Coldblade', 'Coldcloud', 'Colddirge', 'Colddrinker', 'Coldfire', 'Coldghast', 'Coldghast', 'Coldghost', 'Coldghost', 'Coldghoul', 'Coldhand', 'Coldhawk', 'Coldhell', 'Coldjackal', 'Coldmurk', 'Coldrain', 'Coldrain', 'Coldrule', 'Coldsnake', 'Cometrat', 'Cometsnake', 'Cometvictor', 'Coralhunter', 'Cruelbite', 'Crueldevil', 'Cruelflame', 'Cruelghoul', 'Cruelmist', 'Cruelrule', 'Cruelsinner', 'Cruelsoul', 'Cruelspawn', 'Cruelspawn', 'Cruelspectre', 'Cruelstalker', 'Cryptfate', 'Cryptgrief', 'Cryptmourner', 'Cryptscream', 'Cryptwing', 'Crystalflame', 'Crystalwit', 'Cursecairn', 'Cursecrypt', 'Cursedeath', 'Curseeye', 'Cursefury', 'Curseghoul', 'Cursegrief', 'Cursemurk', 'Cursescream', 'Cursespell', 'Cursestalk', 'Cursestalk', 'Cursestrike', 'Cursetaker', 'Cursewarp', 'Cursewarrior', 'Cutfang', 'Cutruler', 'Danceblow', 'Dancepacer', 'Dancesnarl', 'Darkbind', 'Darkbite', 'Darkbite', 'Darkbite', 'Darkblood', 'Darkblood', 'Darkblood', 'Darkblood', 'Darkbone', 'Darkcinder', 'Darkcry', 'Darkcry', 'Darkdragon', 'Darkdusk', 'Darkfang', 'Darkfire', 'Darkghast', 'Darkheart', 'Darkknife', 'Darkmist', 'Darkmourner', 'Darkshade', 'Darksmoke', 'Darkspell', 'Darktear', 'Deadbone', 'Deadchain', 'Deadghoul', 'Deadnight', 'Deadrain', 'Deadrune', 'Deadshadow', 'Deadshadow', 'Deadskull', 'Deadspell', 'Deadspell', 'Deadtomb', 'Deadvenom', 'Deadwind', 'Deathbrood', 'Deathcoffin', 'Deathfire', 'Deathflame', 'Deathgem', 'Deathghost', 'Deathhand', 'Deathrat', 'Deathshade', 'Deathshriek', 'Deathweeper', 'Deerhunter', 'Demonslayer', 'Devilblade', 'Devilcloud', 'Devildream', 'Devileater', 'Devilknife', 'Devilpain', 'Devilsinger', 'Devilsinger', 'Devilslayer', 'Devilspawn', 'Deviltracer', 'Direcurse', 'Diredemon', 'Diredemon', 'Diredemon', 'Diredevil', 'Diredragon', 'Direeye', 'Direeye', 'Direfire', 'Direghast', 'Direhand', 'Diremourner', 'Direspawn', 'Dirgeclaw', 'Dirgehunter', 'Dirgemourner', 'Dirgescream', 'Dirgewing', 'Diveseer', 'Doombreaker', 'Doomdirge', 'Doomfog', 'Doomghast', 'Doomice', 'Doommace', 'Doommaw', 'Doommourn', 'Doomrider', 'Doomwolf', 'Dragonruler', 'Dreadbrood', 'Dreadclaw', 'Dreadclaw', 'Dreadcoffin', 'Dreaddemon', 'Dreaddragon', 'Dreaddragon', 'Dreadghoul', 'Dreadmark', 'Dreadmaw', 'Dreadmurk', 'Dreadnight', 'Dreadskull', 'Dreadspawn', 'Dreadvenom', 'Dreadwind', 'Dreadwing', 'Dreambat', 'Dreambreak', 'Dreamdemon', 'Dreamdragon', 'Dreamtomb', 'Dreamwing', 'Duneflail', 'Duskblade', 'Duskclaw', 'Duskclaw', 'Duskcry', 'Duskghoul', 'Duskskull', 'Duskstrike', 'Duskwand', 'Earthdragon', 'Earthmoan', 'Ebonbind', 'Ebonchain', 'Eboncoffin', 'Eboncry', 'Eboncrypt', 'Eboncrypt', 'Eboncurse', 'Ebondevil', 'Ebondrinker', 'Ebonfire', 'Ebonhowl', 'Ebonmist', 'Ebonmourner', 'Ebonrune', 'Ebonrune', 'Ebonshade', 'Ebonstalker', 'Embercat', 'Emberhammer', 'Embermoan', 'Embervoyager', 'Evilbind', 'Evilbite', 'Evildirge', 'Evildusk', 'Evilfury', 'Evilghast', 'Evilmourn', 'Evilmourner', 'Evilrain', 'Evilrune', 'Evilslayer', 'Evilstalk', 'Evilwolf', 'Eyesinger', 'Fairdreamer', 'Fairkiller', 'Falcontraveller', 'Farbane', 'Farbone', 'Farbrood', 'Farcry', 'Fardevil', 'Fardirge', 'Farfang', 'Farfog', 'Farghoul', 'Farghoul', 'Fargrave', 'Farkiller', 'Farknife', 'Farmaw', 'Farmist', 'Farmourn', 'Farmurk', 'Farpaw', 'Farrain', 'Farrip', 'Farsnake', 'Farspawn', 'Farstorm', 'Farvictor', 'Farwolf', 'Fatespawn', 'Fatevenom', 'Fearmourner', 'Fearshadow', 'Fearshriek', 'Fearstalk', 'Fearstrike', 'Fearwind', 'Fearwolf', 'Firearrow', 'Firebreak', 'Firefang', 'Fireslayer', 'Firesnake', 'Firestealer', 'Flameblade', 'Flamefire', 'Flamefury', 'Flameghast', 'Flameraven', 'Flamestrike', 'Flametracer', 'Fogbeast', 'Fogdragon', 'Fogmurk', 'Fogrip', 'Foxmolder', 'Frostbite', 'Frostclaw', 'Frostpoison', 'Froststaff', 'Frostwind', 'Gembrewer', 'Gemjackal', 'Gemlizard', 'Ghostthief', 'Ghosttracker', 'Ghoulcurser', 'Gloommist', 'Gloomspawn', 'Grandjackal', 'Grandmage', 'Grandpriest', 'Grandsnake', 'Graveclaw', 'Graveghast', 'Graverain', 'Gravesin', 'Grayclaw', 'Grayspine', 'Greatwound', 'Greenrain', 'Griefcoffin', 'Griefeye', 'Griefkill', 'Griefsnake', 'Grimbane', 'Grimbane', 'Grimblow', 'Grimchant', 'Grimclaw', 'Grimclaw', 'Grimcloud', 'Grimcry', 'Grimdirge', 'Grimeater', 'Grimfog', 'Grimgrave', 'Grimhell', 'Grimmark', 'Grimmurk', 'Grimmurk', 'Grimmurk', 'Grimnight', 'Grimskull', 'Grimslayer', 'Grimspectre', 'Grimstalk', 'Grincurser', 'Grincurser', 'Hailruler', 'Hammerthief', 'Handruler', 'Hawkvictor', 'Heartflail', 'Heartghost', 'Hellblood', 'Helldirge', 'Hellghoul', 'Hellrain', 'Highbane', 'Highbat', 'Highjackal', 'Highwand', 'Hopegrin', 'Hornbreaker', 'Hornwarper', 'Horrorbeast', 'Horrorbone', 'Horrorcloud', 'Horrordirge', 'Horrorfire', 'Horrorhunter', 'Horrorrain', 'Horrorscar', 'Horrorshade', 'Horrortear', 'Horsestealer', 'Huntbreaker', 'Icebite', 'Iceblade', 'Icedream', 'Icefear', 'Icehand', 'Icehaunter', 'Icehorn', 'Icepaw', 'Icequester', 'Iceslash', 'Icesnake', 'Icespirit', 'Icestalk', 'Icesting', 'Ironbeast', 'Ironbone', 'Ironcurse', 'Irondemon', 'Ironfury', 'Ironghost', 'Ironhaunter', 'Ironkill', 'Ironmist', 'Ironrend', 'Ironrune', 'Ironscar', 'Ironsinner', 'Ironstalk', 'Irontear', 'Ironvenom', 'Ironweeper', 'Ironwing', 'Ivoryheart', 'Ivoryrat', 'Ivoryshade', 'Ivoryslash', 'Ivorytwister', 'Jackalcutter', 'Jackaldreamer', 'Jackalruler', 'Jadeflute', 'Jademask', 'Jademolder', 'Jadepotion', 'Jaderoot', 'Jadeseer', 'Jadeshine', 'Jadeshooter', 'Jewelcaster', 'Jewelwarper', 'Kickdreamer', 'Kickmaker', 'Kickpacer', 'Lanceseeker', 'Leafwand', 'Leapcurser', 'Lizarddreamer', 'Lizardfinder', 'Lizardsinger', 'Lockcarver', 'Lockdreamer', 'Loneshine', 'Lonewarper', 'Longdirge', 'Lostbone', 'Lostlance', 'Lowfalcon', 'Lowrain', 'Lowspine', 'Lowvenom', 'Macetracker', 'Madkick', 'Madscribe', 'Magekiller', 'Magevictor', 'Magicflute', 'Maguscaster', 'Magusmolder', 'Magustraveller', 'Maskcarver', 'Mawfinder', 'Mightydevil', 'Mightytooth', 'Mightywarrior', 'Mightyweasel', 'Mightyworm', 'Mightywound', 'Mistbind', 'Mistdragon', 'Mistmourner', 'Mistmurk', 'Mistspirit', 'Mistvoid', 'Mistweeper', 'Moonbind', 'Moonchant', 'Moondream', 'Moonhunter', 'Moonkick', 'Moonlance', 'Moonmaker', 'Moonmaw', 'Moonpacer', 'Moonphoenix', 'Moonskull', 'Moontouch', 'Moontraveller', 'Moonwarper', 'Murkbeast', 'Murkbite', 'Murkgrave', 'Murkhand', 'Murkhunter', 'Murkknife', 'Murkrain', 'Murkscar', 'Murkskull', 'Murkspawn', 'Nestbreaker', 'Nestmaker', 'Nestthief', 'Nightbeast', 'Nightcat', 'Nightcutter', 'Nightdoom', 'Nightember', 'Nightgrowl', 'Nightheart', 'Nightrip', 'Nightscream', 'Nightskull', 'Nightstalk', 'Nightsting', 'Nighttear', 'Nightwing', 'Paincloud', 'Paindevil', 'Paindragon', 'Painkill', 'Painmourn', 'Painrune', 'Painsoul', 'Painstrike', 'Painvenom', 'Panthermaster', 'Panthermolder', 'Pathbull', 'Pathstreak', 'Pathtraveller', 'Pathwolf', 'Pawshooter', 'Pearlrift', 'Pearlrod', 'Pearltracker', 'Plaguebone', 'Plaguefang', 'Plaguekill', 'Plaguemist', 'Plaguerend', 'Plaguerune', 'Plaguestalk', 'Plaguetomb', 'Poisonrat', 'Poisonraven', 'Poisonstrike', 'Ragebat', 'Ragehand', 'Ragevictor', 'Raincat', 'Rainmagus', 'Ratquester', 'Redbone', 'Redclaw', 'Reddemon', 'Reddruid', 'Reddusk', 'Redeye', 'Redeye', 'Redflame', 'Redflame', 'Redghast', 'Redghost', 'Redhand', 'Redheart', 'Redmaw', 'Redrain', 'Redrip', 'Redscar', 'Redshadow', 'Redshriek', 'Redweeper', 'Redwhip', 'Rifttooth', 'Rodvictor', 'Rotbreaker', 'Rothawk', 'Rotsailor', 'Rottwister', 'Runewar', 'Sailormaker', 'Sailormolder', 'Sailorruler', 'Scardeath', 'Scardemon', 'Scardirge', 'Scardirge', 'Scarhunter', 'Scarkiller', 'Scarsin', 'Scribedancer', 'Searoot', 'Shadejackal', 'Shadesnake', 'Shadowcloud', 'Shadowdreamer', 'Shadowhammer', 'Shadowhorn', 'Shadowplague', 'Shadowshade', 'Shadowshine', 'Shinefinder', 'Shinetracer', 'Shinetracker', 'Shinevoyager', 'Silentrat', 'Silverember', 'Silverlance', 'Silvermaster', 'Sinbite', 'Sindragon', 'Sinfury', 'Sinknife', 'Sinmurk', 'Sinrend', 'Sinrend', 'Skulldevil', 'Skullhawk', 'Skyraven', 'Skyshine', 'Smiledeer', 'Smokefang', 'Smokehaunt', 'Smokerip', 'Smokestorm', 'Snakecutter', 'Snakeeater', 'Snakequester', 'Snakerider', 'Snakesinger', 'Snakesinger', 'Snaketracker', 'Snakewanderer', 'Snarlkiller', 'Snarlsinger', 'Songjewel', 'Songmoan', 'Songshot', 'Songvictor', 'Songvictor', 'Songwhip', 'Songwhip', 'Songworm', 'Spellbind', 'Spelldragon', 'Spelldream', 'Spellmolder', 'Spellpacer', 'Spellstalk', 'Spinebreaker', 'Spinefinder', 'Stafffletcher', 'Starbear', 'Starboar', 'Starmagus', 'Starseeker', 'Starstreak', 'Startraveller', 'Steelbane', 'Steelbrood', 'Steelclaw', 'Steeldusk', 'Steelhaunt', 'Steelhunter', 'Steelmark', 'Steelmoon', 'Steelmourn', 'Steelmurk', 'Steelshriek', 'Steelstrike', 'Steelstrike', 'Steelweeper', 'Steelwind', 'Stonecinder', 'Stonefinder', 'Stonegash', 'Stonemage', 'Stonepath', 'Stonescar', 'Stoneseer', 'Stormarcher', 'Stormarrow', 'Stormbull', 'Stormghost', 'Stormseer', 'Streakdancer', 'Streakwanderer', 'Strikehunter', 'Strongcutter', 'Strongmaster', 'Swampember', 'Swampice', 'Swampmolder', 'Swamprat', 'Swordclaw', 'Swordmace', 'Swordpotion', 'Taildevil', 'Tailhammer', 'Tailsting', 'Tearfall', 'Tearfang', 'Tearfletcher', 'Tearmagus', 'Tearwarper', 'Tearwing', 'Terrorbind', 'Terrormist', 'Terrornight', 'Terrorshadow', 'Tombbite', 'Tombeye', 'Tombskull', 'Tombstorm', 'Tombwarp', 'Toothcaster', 'Touchjuggler', 'Touchmolder', 'Twistbane', 'Twistdemon', 'Twistkill', 'Twistmourn', 'Twistscar', 'Twistshade', 'Twistsmoke', 'Twiststalker', 'Twisttomb', 'Twisttomb', 'Underfire', 'Underhail', 'Undermace', 'Undermolder', 'Unholydirge', 'Unholyjewel', 'Unholyrift', 'Venombind', 'Venombrood', 'Venomclaw', 'Venomdeath', 'Venomdirge', 'Venomfear', 'Venomnest', 'Venomrend', 'Venomsinner', 'Venomspawn', 'Venomstrike', 'Venomtooth', 'Venomwoe', 'Vilefinder', 'Vileghoul', 'Vileseer', 'Vinedancer', 'Vinefighter', 'Vinefletcher', 'Vinemolder', 'Voidchain', 'Voidhaunt', 'Voidkill', 'Voidslayer', 'Wandpacer', 'Wandseer', 'Warcurse', 'Wardemon', 'Wardragon', 'Warfang', 'Warfighter', 'Warflame', 'Wargrave', 'Warhowl', 'Warmaw', 'Warpfalcon', 'Warpfury', 'Warphowl', 'Warpscream', 'Warptomb', 'Warriorwanderer', 'Warsnarl', 'Wartouch', 'Waterlance', 'Waterrot', 'Watertooth', 'Weaseleater', 'Whipfletcher', 'Whiteflame', 'Whitemark', 'Whitepaw', 'Whiterat', 'Whitestaff', 'Whiteworm', 'Wildbone', 'Wildchain', 'Wildcloud', 'Wildcrypt', 'Wildeye', 'Wildghoul', 'Wildheart', 'Wildhowl', 'Wildmist', 'Wildmist', 'Wildmourner', 'Wildrend', 'Wildrip', 'Wildscream', 'Wildsinner', 'Wildsnake', 'Wildtear', 'Wildvenom', 'Wildweasel', 'Windgrin', 'Windpacer', 'Windslayer', 'Windstrike', 'Wisehunter', 'Wiserat', 'Witscribe', 'Witvoyager', 'Woemist', 'Woemist', 'Wolfhunter', 'Woundseeker', 'Woundwolf']





--Material Constants
RPG_MATERIALS = [	"Oak","Pine","Ironwood"
					"Copper","Silver","Gold","Iron","Steel","Mithril",
					"Bone","Crystal","Stone"
					"Alexandrite","Aquamarine","Diamond","Emerald","Opal","Pearl","Ruby","Sapphire","Spinel","Topaz",
				]


--Item Constants
ITEM_RING_ALLOWED_RARITIES 	= []
ITEM_RING_ALLOWED_QUALITIES	= []
ITEM_RING_MAX_MATERIALS		= 3
ITEM_RING_ALLOWED_MATERIALS = []
ITEM_RING_ALLOWED_EFFECTS	= []







--[[ 


VSTAT_SUFFIXES = {}
VSTAT_SUFFIXES["str"]=("of Impotence","of Feebleness","of Weakness","of Failing","of Deficiency","of Strength","of Might","of Clout","of Force","of Power")
VSTAT_SUFFIXES["dex"]=("of Ineptitude","of Uncoordination","of Clumsiness","of Awkwardness","of Tribulation","of Dexterity","of Proficiency","of Handiness","of Adroitness","of Finesse")
VSTAT_SUFFIXES["agi"]=("of Oafishness","of Ungainliness","of Gawkiness","of Inelegance","of Gracelessness","of Agility","of Briskness","of Nimbleness","of Spryness","of Alacrity")
VSTAT_SUFFIXES["ref"]=("of Lethargy","of Sluggishness","of Listlessness","of Languidness","of Stiffness","of Reflex","of Response","of Impulse","of Spontaneity","of Instinct")
VSTAT_SUFFIXES["bdy"]=("of Consumption","of Infirmity","of Sickness","of Affliction","of Hardship","of Fortitude","of Chutzpah","of Hardiness","of Perseverance","of Stability",)
VSTAT_SUFFIXES["wis"]=("of Foolishness","of Folly","of Silliness","of Triviality","of Rashness","of Wisdom","of Sense","of Discernment","of Prudence","of Judgement")
VSTAT_SUFFIXES["mys"]=("of Materialism","of Mundaneness","of Temporalness","of Corporealness","of Normality","of Mysticism","of Abstruseness","of Esotericism","of Spirtiualism","of Trancendence")
VSTAT_SUFFIXES["mnd"]=("of Stupidity","of Idiocy","of Dumbness","of Dullness","of Denseness","of Comprehension","of Understanding","of Savvy","of Ingenuity","of Sagacity")
VSTAT_SUFFIXES["maxMana"]=("of Presage","of Thaumaturgy","of Thaumaturgy","of Invocation","of Sorcery","of Channeling","of Incantation","of Allurement","of Soothsaying","of Enlightenment")
VSTAT_SUFFIXES["maxHealth"]=("of Zeal","of Verve","of Hardiness","of Robustness","of Wholeness","of Heroism","of Tenacity","of Perseverance","of Persistance","of Permanence")

VSTAT_PREFIXES = {}
VSTAT_PREFIXES["resistPhysical"]=("Obstinate","Steadfast","Reliable","Staunch","Unwavering","Unyielding","Resolute","Unfaltering","Faithful","Eternal")
VSTAT_PREFIXES["resistMagical"]=("Shimmering","Lustrous","Luminous","Radiant","Dazzling","Scintillating","Opalescent","Prismatic","Chromatic","Astral")
VSTAT_PREFIXES["resistFire"]=("Flickering","Ardent","Fervent","Sizzling","Fiery","Blazing","Conflagrant","Searing","Scalding","Torrid")
VSTAT_PREFIXES["resistCold"]=("Shivering","Frigid","Numbing","Bitter","Frosty","Icy","Frozen","Polar","Arctic","Glacial")
VSTAT_PREFIXES["resistElectrical"]=("Tingling","Insulated","Grounded","Arcing","Isolating","Dissipating","Capacitive","Recalcitrant","Resistive","Anionic")
VSTAT_PREFIXES["resistDisease"]=("Filthy","Repulsive","Feculent","Viral","Infectious","Festering","Putrid", "Pestilent","Corrupt","Vile")
VSTAT_PREFIXES["resistPoison"]=("Toxic","Toxic","Noxious","Noxious","Lethal","Septic","Tainted","Viperous","Nocuous","Envenomed")
VSTAT_PREFIXES["resistAcid"]=("Biting","Biting","Caustic","Caustic","Corrosive","Corrosive","Consumptive","Pungent","Trenchant","Acerbic")
VSTAT_PREFIXES["armor"]=("Hardened","Sturdy","Strong","Noble","Glorious","Blessed","Saintly","Holy","Divine","Godly")


VWEAPON_TEXT = {}
VWEAPON_DEBUFFS_VALUES = (5,15,25,50,75,100)
VWEAPON_DEBUFFS = (RPG_RESIST_PHYSICAL,RPG_RESIST_MAGICAL,RPG_RESIST_FIRE,RPG_RESIST_COLD,RPG_RESIST_POISON,RPG_RESIST_DISEASE,RPG_RESIST_ACID,RPG_RESIST_ELECTRICAL)
VWEAPON_TEXT["debuff"]=("of Lucidity","of Warding","of Warmth","of Frost","of Remedy","of Vigor","of Corrosion","of Conductivity")
VWEAPON_DAMAGE_VALUES = (1,2,3,5,10,15)
VWEAPON_TEXT["dmg"]=("Savage","Vicious", "Ruthless", "Cruel","Merciless","Vorpal")
VWEAPON_RATE_VALUES = (1,2,3,4,5,6)
VWEAPON_TEXT["rate"]=("Snappy","Swift","Quick", "Rapid","Screaming", "Velocious")


VBANEWEAPON_RACES = ("Undead","Giant","Human","Dwarf","Elf","Halfling","Drakken","Ogre","Troll","Goblin","Orc","Gnome","Plant","Animal","Dark Elf","Titan")
VBANEWEAPON_MODS = (0,2,3,4,6,8)
VBANEWEAPON_TEXT = ("of %s Butchering","of %s Slaughtering","of %s Slaying","of %s Annihilation","of %s Eradication","of %s Bane")

# list of quality prefixes, 'raw' is not yet enchanted item (Coal, Sandstone, ...), raw can't be dropped, only gained from disenchanting and the prefix won't be used anyway.
ENCHANT_QualityPrefix = ["Raw ","Fractured ","Rough ","Jagged ","Smooth ","Clear ","Pristine ","Exquisite "]

UNIQUE_NAMES = {
'DWARF':(
'Bfaky Warlockhunter','Dah Silverfist','Def Quartzgrinder','Dirake Steelkiller','Falule Grimminer',
'Fegeri Dragonsmiter','Fmidr Grimtracker','Gol Stonetunnel','Hadtu Foesmiter','Hesreh Goblinsmiter',
'Heti Warlockslayer','Hgah Goblinslayer','Iode Grayforger','Kared Ogreslasher','Kir Warlockslayer',
'Kortud Doomfighter','Lam Slatehunter','Murela Rockbreaker','Nar Redslasher','Nutlir Bronzecut',
'Redet Cairnslasher','Rih Cairnfighter','Rleds Devilcrusher','Rures Graymolder','Yirari Ironkiller',
),

'TREANT':(
'Alderbriar','Alderfoot','Aldershoot','Armfrond','Armgrove','Armhedge','Ashbriar','Ashheel','Ashtalon','Ashtooth',
'Baldbramble','Baldhazel','Beamclaw','Beamclaw','Beamlock','Beammane','Beardbramble','Bentseed','Berrybraid',
'Berryfury','Birchshoot','Birchsmile','Birchtrunk','Blackbush','Bonebriar','Braidgrove','Bramblehand','Branchsmile',
'Briarmane','Briarsmile','Brightbramble','Brownherb','Brownpalm','Brownshrub','Brownskin','Brownsmile','Browntalon',
'Brownwillow','Budclaw','Calmseed','Calmyew','Cedarclaw','Cedarroot','Cedarsprig','Cedarsprig','Clawleaf','Copsehand',
'Copseskin','Craftbirch','Craftbraid','Craftbriar','Craftclaw','Craftlimb','Craftlock','Crownherb','Crownroot',
'Elmbraid','Elmfury','Elmhand','Elmlimb','Elmsprig','Fallcedar','Fallshrub','Fallweed','Farblossom','Footgrove',
'Footjungle','Foresthazel','Forestoak','Furyjungle','Gladstaff','Grandfrond','Grandmaple','Grandpalm','Grandpine',
'Greatblossom','Greenash','Greenbirch','Greenbriar','Greenpalm','Greenrowan','Handthorn','Hazelbark','Hazelgrove',
'Hazeltwig','Hedgebraid','Hedgefoot','Herbbeam','Herbbirch','Herbcrown','Herbheel','Herbleg','Herblimb','Herbmane',
'Herbmoss','Herboak','Herbpine','Herbpine','Herbskin','Herbwood','Highcraft','Highelm','Highwillow','Hollyhedge',
'Hollyherb','Hollyjungle','Hollylock','Honeyherb','Junglearm','Junglefury','Jungleoak','Jungleskin','Limbbranch',
'Limblock','Limbmarrow','Lowcraft','Madcraft','Maplebramble','Maplemane','Marrowbloom','Marrowfrond','Marrowthicket',
'Marrowthorn','Marrowtwig','Oaklimb','Oddbriar','Oddgrove','Oddthicket','Oldbush','Oldroot','Palmsmile','Pinefoot',
'Quickmoss','Quickshoot','Quickshrub','Rootbone','Rootlock','Rowanbud','Rowanclaw','Rowancrown','Rowanleg','Rowanmane',
'Sadcopse','Saphazel','Sapholly','Saplimb','Shootfoot','Shoottooth','Shrubalder','Shrubmoss','Smilebloom','Sprigbraid',
'Springcedar','Springcrown','Springcrown','Springhazel','Springmarrow','Springsmile','Strangebark','Strangemaple',
'Strangeyew','Summerbeard','Summerlock','Summerrowan','Talonbloom','Talonherb','Talonthicket','Talonthicket',
'Thorncrown','Timberheel','Timberleg','Timberpalm','Toothbark','Weedbranch','Weedfoot','Weedhedge','Weedheel',
'Weedmoss','Weedrowan','Weedsmile','Wildlock','Wildrowan','Willowbone','Willowcrown','Willowmarrow','Winterpalm',
'Winterpalm','Winterpine','Wiseherb','Woodarm','Woodmaple','Woodrowan','Woodskin','Wyrdleaf','Yewbeard','Yewcrown',
'Yewhand','Yewtrunk','Youngcraft','Youngshoot',),

'NECROMANCER':(
'Aetanie Moonchant','Aetucanele Redeye','Ahicivara Flamefury','Airebrcal Colddrinker','Alali Ironweeper',
'Alaranei Painvenom','Alenaninat Ebonmist','Aleval Steelmark','Alisa Plaguemist','Alisma Darkspell',
'Aluseie Shadowplague','Amonuco Deadskull','Anabet Scardirge','Andagi Coldhand','Angeliat Dreadmaw',
'Anibarosa Cruelflame','Anonindali Darkbite','Antieb Fogrip','Ardag Farmurk','Arostrde Ironghost',
'Arulis Grimslayer','Azarcop Darkbone','Baban Blackheart','Bacarde Fearwolf','Bacer Farbane','Bagelusa Icefear',
'Bahononie Ironmist','Balan Evilslayer','Balanti Ebonrune','Balueos Scardeath','Banem Darktear',
'Banth Plaguestalk','Barar Cruelghoul','Barelel Deadtomb','Bebrdeli Bonefate','Benilie Irontear',
'Bentan Coldblade','Beracah Deadchain','Beselibe Icespirit','Besmar Sinrend','Betiusel Cruelmist',
'Brala Grimmurk','Cagdema Warptomb','Calei Grimstalk','Calesm Wildrend','Canatusan Sinknife','Catiares Spellstalk',
'Cazanelae Moonbind','Celerar Redscar','Cenie Farmaw','Cerlalelur Helldirge','Chasora Eboncry','Chelemina Coffinfate',
'Chesanisal Warhowl','China Farstorm','Ciebanorco Fogbeast','Ciebard Terrorshadow','Cierlele Devildream',
'Cilaik Grimgrave','Cisaven Devilpain','Conelarone Warmaw','Conenebral Dreadnight','Congda Redshadow',
'Copha Twistkill','Cophor Direeye','Corendor Coldrain','Corlicalem Duskghoul','Cornd Wildhowl','Costa Dreaddemon',
'Dalebagd Diredemon','Daneterdo Steelhunter','Dasargab Venombrood','Delesaro Voidkill','Deneoph Cryptfate',
'Desele Ebonchain','Devaza Painsoul','Doliele Darkcry','Dophandrt Colddirge','Dorasa Cursefury',
'Doshani Ironbeast','Dosteleie Cruelsoul','Dramoram Mistbind','Drdal Deathbrood','Drdraz Farwolf',
'Drenelic Darkdragon','Drlichal Griefkill','Dronth Crueldevil','Drorelicha Darkblood','Drueluc Tombstorm',
'Eivanter Wildchain','Elali Darkbind','Elazaero Coldghost','Elelazanar Grimmurk','Elene Windstrike',
'Elerdala Grimbane','Elisali Bonerend','Eluch Venomwoe','Eluluenur Plaguerune','Emalelarar Ebondevil',
'Enala Cairngrief','Engari Darkbite','Enisala Steelshriek','Eniuele Evilwolf','Ereba Dreadwing',
'Esendrana Duskclaw','Esmane Darkfire','Etenius Dreadspawn','Etetelend Doomfog','Ezarur Chantclaw',
'Febah Plaguetomb','Febam Twiststalker','Febesor Deathweeper','Feielesa Venomdirge','Feira Painrune',
'Feiust Venomspawn','Felaneb Deadwind','Feleba Dreadcoffin','Felelelaev Deadrune','Felerda Cryptmourner',
'Felernos Evilrain','Feliri Sinbite','Felis Wildcloud','Felusena Blackhell','Femid Blackwing','Fenaletis Dreadmurk',
'Fenanies Grimcry','Fenanthole Coldghoul','Fenereli Cruelbite','Fenganel Fearstrike','Fercard Chaindoom',
'Ferda Darkblood','Ferdeiaelu Icehand','Feresontal Murkhunter','Ferga Grimnight','Fergal Horrorfire',
'Feronthica Devilspawn','Ferucanag Fogmurk','Fesebard Coffinmist','Fesmanar Tombeye','Festian Deadshadow',
'Festulid Duskstrike','Fezaba Diredevil','Fezaco Farknife','Galeont Nightheart','Ganene Wildmourner',
'Gdaluei Blackmoon','Gdantela Smokefang','Gdole Icebite','Gdonan Chantfury','Gdorgde Steelweeper',
'Gdrailele Tombbite','Gdran Blackghoul','Gdrdo Cairnbane','Gebalenda Nightstalk','Gelebarca Ironrend',
'Geluel Farkiller','Gelus Terrorbind','Gendosaniu Evilrune','Gerciemana Deathcoffin','Geval Voidchain',
'Giceve Horrorbeast','Gieidese Mistweeper','Giene Blacksinner','Gioraro Fearshadow','Gisavaenav Mistdragon',
'Gismarn Scardemon','Gison Deadshadow','Giusetisha Voidslayer','Habrlen Smokehaunt','Hanaz Steelclaw',
'Haneba Murkbite','Hanelan Dreadwind','Hanilue Cursestalk','Hanolane Irondemon','Hanteniole Murkknife',
'Hardarebav Direhand','Harlicano Deadrain','Harni Plaguerend','Harordan Horrorrain','Harorue Coldsnake',
'Harus Deadvenom','Hathalen Mistspirit','Havine Cairnshade','Heletiv Fardirge','Hisarelirn Graveghast',
'Hiulican Steelhaunt','Hosesta Chantrip','Ialetuesh Wildsinner','Iananusan Cairnbane','Ianevases Steelstrike',
'Ibetibah Mistmourner','Icenosan Darkfang','Iciagdosm Warflame','Ieiue Horrortear','Ielei Sinmurk',
'Ielelelel Murkrain','Ielezaza Redheart','Iemezale Cruelsinner','Ienirtri Eboncurse','Ierdo Coffinwarp',
'Ietarin Twistshade','Ikron Devilslayer','Ikroph Redclaw','Ilinab Venomrend','Inuselu Steeldusk',
'Irchieli Darkheart','Irintr Murkskull','Isaicagie Woemist','Isalusol Deathshade','Isanosaco Voidhaunt',
'Isanthang Cruelspawn','Isesavone Direfire','Isosemi Darkshade','Iucichari Flamestrike','Jeisan Farghoul',
'Jelev Chantcairn','Jendr Darkmourner','Jeorleisa Venomclaw','Jerali Griefsnake','Jesenelu Spelldream',
'Jeshardri Dreadbrood','Jucanulel Blackmaw','Jucieosman Gloomspawn','Juciv Cursestrike','Jucor Darkknife',
'Juelu Painstrike','Jueneles Coffinwar','Juler Fearstalk','Julernt Warphowl','Julianen Smokerip',
'Juravianan Cursewarp','Jusal Dreadvenom','Jusarc Ebonbind','Jusarl Blackdragon','Jusaroriu Grimfog',
'Jusmoro Coffinfear','Jusor Ebonfire','Krale Dirgescream','Kralethabe Blackwind','Kraliais Wildmist',
'Krarardebe Evilstalk','Krdarenu Murkspawn','Krdophord Steelbrood','Krdordo Fogdragon','Krdos Woemist',
'Krdrisar Blackfang','Krdrus Nightrip','Kriet Tombwarp','Krlend Coldhell','Krndenar Wildmist','Krneven Direeye',
'Kropham Painkill','Krora Twistscar','Krordal Graveclaw','Krosenal Redrain','Krtes Doommourn','Krtisang Ironwing',
'Lagiesman Wildvenom','Lanan Tombskull','Lanelelerg Dreadclaw','Lebrnd Doommaw','Leleos Wargrave',
'Leluson Scarhunter','Lenachan Horrorcloud','Leniane Farspawn','Leral Deadnight','Lertico Devilknife',
'Lesemama Wildtear','Letiarne Blackshadow','Letisma Evilfury','Levacortu Cursestalk','Levaha Devilblade',
'Levaro Paincloud','Lezal Blackbrood','Lezarer Grimspectre','Liagicebe Nightdoom','Liame Coldfire',
'Liceieba Redbone','Liciacon Redshriek','Lidro Murkscar','Lietiesh Dreadmark','Lileiaiet Shadowshade',
'Linavi Deathfire','Liulebes Hellblood','Mabanusa Cryptwing','Mairenas Smokestorm','Malel Scardirge',
'Maleses Chantbeast','Mamarler Hellghoul','Mandebeb Blackcoffin','Maniue Twisttomb','Marden Dreadghoul',
'Melemac Dreaddragon','Menetantir Ironvenom','Metrlagd Deadghoul','Miaru Horrordirge','Micev Wildghoul',
'Miend Farcry','Miliethona Farmourn','Monar Plaguebone','Mondraha Griefcoffin','Morariopha Deadbone',
'Nanan Murkbeast','Nandr Dirgehunter','Ndales Fearshriek','Ndatetarir Redflame','Ndrninen Evildirge',
'Nicarnthi Ironcurse','Niliso Deathshriek','Niondrar Ironkill','Nivalela Murkhand','Nthar Warcurse',
'Nucarleb Flameghast','Olanirne Direcurse','Olebri Paindevil','Oletrd Duskclaw','Onanarirar Venomfear',
'Ondrial Ebondrinker','Onelem Dreadskull','Oneneteli Grimbane','Ongeondone Icestalk','Ongesh Coldghast',
'Onico Griefeye','Ontra Venombind','Onurdrdore Ebonstalker','Opharti Ironhaunter','Orarnti Cursecairn',
'Ordanesa Coldrule','Ordaram Runewar','Ordricis Evilmourner','Osano Deadspell','Osavies Blackmurk',
'Osazardaro Bloodstalk','Osenal Redeye','Osholusa Warfang','Osmanu Farfog','Ososm Redmaw','Phaes Evildusk',
'Phaikrth Cruelrule','Phalesandr Fardevil','Phalicer Dirgemourner','Phalist Dreamtomb','Phalu Blackrend',
'Phane Sinfury','Phanei Grimhell','Phardarano Darkblood','Pharntre Dreamdragon','Phelelie Sinrend',
'Phercalele Redrip','Phole Evilbite','Phonan Windslayer','Phonicha Icedream','Phophaca Diredemon',
'Phosevang Cursespell','Phosoliv Cruelspectre','Rananar Chainbane','Randebeb Cryptscream','Raniu Grimcloud',
'Rceles Reddusk','Rcosevis Nightbeast','Rderei Darkbite','Rdoph Farrain','Rdrdahieri Grimskull',
'Rdrnulei Steelmourn','Reliacava Fargrave','Renialesah Cruelstalker','Rgidebe Terrormist','Riophar Steelwind',
'Rliceba Twisttomb','Rnonevonth Fatespawn','Ronendro Steelbane','Rteseval Murkgrave','Sacevoneo Gloommist',
'Saleleme Ebonmourner','Saliesanac Frostbite','Sandan Cursemurk','Sararc Spelldragon','Sardonaic Evilbind',
'Sazac Evilmourn','Selerteth Dreadclaw','Seline Blackgrave','Selisezaz Ebonhowl','Senalikrae Ironfury',
'Seneli Ironscar','Shaneth Nightwing','Shorda Farghoul','Smahaluc Ebonrune','Smalan Sindragon','Smale Cursedeath',
'Smani Mistmurk','Smielule Twistsmoke','Smiesali Venomdeath','Smisale Coldmurk','Smophiv Coldghast',
'Songa Grimclaw','Sosalicale Ironsinner','Sthielie Warpscream','Sticesa Twistmourn','Tagderan Graverain',
'Tahele Icehaunter','Talise Twistbane','Tamardor Coldbeast','Taniar Dreamdemon','Tantulana Warpfury',
'Teisan Flameblade','Telucen Plaguekill','Thare Flamefire','Thatet Deadspell','Thavo Diredemon','Thiule Cursescream',
'Tiala Dreaddragon','Tielalic Wildsnake','Tielaniceo Eboncrypt','Tiero Redweeper','Tiste Duskblade',
'Tiuriuco Eboncoffin','Tiusamaca Blackspell','Triagerdos Mistvoid','Tulene Evilghast','Tuluci Dirgewing',
'Tusan Duskcry','Tusand Darkcry','Ucardrcen Steelmoon','Ueiei Direghast','Ueletete Blackfire','Uelic Painmourn',
'Ulaliaz Blackclaw','Ulelele Twistdemon','Ulend Bloodvoid','Ulenerga Darkdusk','Urdrdophan Blackmist',
'Urgisar Wildscream','Usalebenti Fearwind','Usani Doomdirge','Usasarl Coldrain','Usave Moonhunter',
'Usernie Eboncrypt','Userusa Ironrune','Usesmaza Terrornight','Useza Cryptgrief','Usmare Dirgeclaw',
'Vacoror Gravesin','Vaist Fearmourner','Valeiel Bloodvoid','Vamana Grimclaw','Vanes Wildrip','Vardo Farmist',
'Varidone Moonskull','Varnane Scarsin','Vaseluel Devilcloud','Vazanari Farrip','Veteicana Coldbite',
'Vianor Venomsinner','Vibanelio Darkblood','Vicandose Wildcrypt','Vidrar Wildeye','Vietelenan Blackcoffin',
'Vilikr Diremourner','Vingende Redhand','Virtinde Steelstrike','Viusmosa Deathghost','Vorne Farfang',
'Vorone Horrorbone','Vortiemo Horrorscar','Vosanticir Grimmurk','Xabar Curseeye','Xabele Paindragon',
'Xaican Doomghast','Xalebale Darkghast','Xaleman Darkmist','Xalinama Farbrood','Xaluez Horrorshade',
'Xamal Deathhand','Xanalenai Redghost','Xanaries Hellrain','Xanercosam Blackrule','Xanevel Cursegrief',
'Xanicelie Grimdirge','Xaniniceo Iceblade','Xarabrd Direspawn','Xaresmane Bloodhand','Xaries Dreamwing',
'Zacelebemi Redghast','Zacesang Cursecrypt','Zaicabav Ironstalk','Zalesmi Steelmurk','Zaletuse Diredragon',
'Zaliev Duskskull','Zalind Cruelspawn','Zaluch Nightscream','Zalusari Fatevenom','Zanaro Plaguefang',
'Zandanie Ebonshade','Zandavi Coldcloud','Zarch Darksmoke','Zardo Spellbind','Zareoliu Moondream',
'Zarineo Shadowcloud','Zazanda Blackblade','Zazareb Horrorhunter',),

'ELF':(
'Aducguap Fairkiller','Aganrour Reddruid','Apdael Grimblow','Aregnoed Heartflail','Baridubl Brushlash',
'Buteel Snakesinger','Catitilg Breezelance','Cehteel Foxmolder','Ciseriht Dreambat','Conion Magicflute',
'Elenigial Brushsmile','Hisidnith Duskwand','Ibicheth Jadepotion','Ihagudirn Brushwolf','Inocead Touchjuggler',
'Isanads Stormarrow','Itdueh Fairdreamer','Lelosr Deerhunter','Lihediar Icesting','Lihteil Leafwand',
'Nadrihd Swordpotion','Ranisg Searoot','Reniln Gembrewer','Sahiraeg Arrowmaster','Usihonl Pathbull',
'Aggeah Smiledeer','Aressiol Blowmolder','Aruteoh Duneflail','Cahigdoel Moonmaker','Edceit Doommace',
'Enidien Boarstealer','Esarilt Hawkvictor','Gagatb Clericshooter','Hacibhinh Coralhunter','Hisraad Starstreak',
'Idaleid Horsestealer','Lapreeg Vinefighter','Nerigh Snakerider','Nugotbatl Grandpriest','Orasatenn Cometsnake',
'Oribasors Greenrain','Redsigd Beakfollower','Relebeil Battlegrass','Resaplads Grandsnake','Rinien Moonphoenix',
'Ritelapd Starbear','Tipreil Moonlance','Toturh Tearwing','Upteen Swordclaw','Uridiat Scribedancer',
),

'DARKELF':(
'Abaxe Sailormolder','Abekecev Jademolder','Abikovyt Strikehunter','Abirurez Weaseleater','Abiser Clawwanderer',
'Abiuz Ghosttracker','Abixin Jewelcaster','Abxaz Wandseer','Acatuton Cavernsinger','Aclen Bardseeker',
'Aconeri Shadowshine','Acudux Bardtwister','Acuvi Jadeshooter','Adamir Embervoyager','Adbak Starmagus',
'Adcin Tearwarper','Addal Pathtraveller','Adetubi Handruler','Adiketu Mightytooth','Adili Tearmagus',
'Adiniya Bardhunter','Adiray Icequester','Adirot Whipfletcher','Adirulor Mightyweasel','Admif Undermolder',
'Adore Bonerod','Adrod Shadejackal','Adurib Mightywound','Adydadel Redflame','Afase Pathwolf','Afdyn Lowvenom',
'Afeyo Dragonruler','Afosate Spellpacer','Ahady Diveseer','Ahcut Chaoslock','Ahihyxor Maskcarver',
'Ahiob Unholydirge','Ahnak Swampember','Akabudib Coldjackal','Akafuler Jademask','Akamarek Falcontraveller',
'Akarado Boarthief','Akaram Blowruler','Akavenaz Songwhip','Akazekox Bladejewel','Akedebit Waterrot',
'Akemyret Cometrat','Akera Pearlrift','Aketanar Lostbone','Akide Snakewanderer','Akirafe Ivoryrat',
'Akoer Cairnbattle','Akorur Stonecinder','Akovuzys Redwhip','Akoyik Grincurser','Akrek Stonescar',
'Akrid Darkcinder','Akrom Strongmaster','Akusici Taildevil','Alaheya Kickdreamer','Alamid Stonepath',
'Aleda Gemjackal','Alfar Songshot','Alieh Sailormaker','Aliok Froststaff','Aliro Bonetraveller',
'Alron Nestmaker','Aludenit Venomtooth','Alytedot Mightyworm','Alyze Ivoryheart','Amaze Madkick',
'Amoet Vilefinder','Amtux Witvoyager','Amxit Lanceseeker','Anaex Woundseeker','Anaib Frostclaw',
'Anamane Madscribe','Anaoc Chaosfighter','Ancuk Deviltracer','Aneco Whitestaff','Anererul Battracker',
'Anhif Magekiller','Anicobe Snarlsinger','Anifener Woundwolf','Aniid Jadeseer','Anirabyn Cairnrain',
'Aniranax Huntbreaker','Anirokah Wildheart','Anlat Wildbone','Antef Swampmolder','Anuka Wardragon',
'Anyheve Emberhammer','Anykikod Ashtracker','Araad Lowrain','Araaz Cursetaker','Aranal Bleakblow',
'Araned Curseghoul','Aranil Tearfang','Ararek Farsnake','Ararik Hornbreaker','Arata Mightydevil',
'Arate Whitepaw','Aravorin Stoneseer','Araxeko Panthermaster','Ardir Lizardsinger','Aredovi Cattraveller',
'Arefo Highjackal','Arehebal Battlelash','Areil Fangcarver','Arekac Fallcarver','Aremirar Breakeye',
'Arenirab Heartghost','Arerik Earthhorn','Arifih Bleakbone','Arifo Redruler','Arita Scribetracker',
'Arlem Hornwarper','Arnas Warpwarrior','Arobenad Battleghoul','Aroel Wardreamer','Arora Shadeseeker',
'Arore Shadowdreamer','Aroreb Jadearcher','Arorira Blacksnarl','Arosa Riftmaker','Arote Deathpath',
'Aroxif Firefang','Arrad Banetwister','Arrot Cairnwarper','Arrud Wildcurse','Artod Bravevoyager',
'Aruvani Spinebreaker','Arynir Battlesting','Asaud Ashbone','Aselaca Ivoryseer','Aseor Maceslayer',
'Aseseko Rifttooth','Asodoy Stonecat','Asriv Pearlmage','Astit Lockhunter','Ataba Shadowmark','Atacif Silentwarper',
'Atader Doomrider','Atahol Swordtracer','Atanera Scarshot','Atedolat Streakwanderer','Atelar Starhand',
'Aterid Pathstreak','Ateru Chaosbreaker','Atexu Cavetracker','Atied Growlmolder','Atirozu Dusktwister',
'Atiru Cutruler','Atixosav Hawkrider','Atkeh Battletaker','Atoax Cursehorn','Atobeli Clawtwister',
'Atoez Jadeflute','Atohek Pearldash','Atorodan Firesinger','Atutefir Cavegash','Avahalev Swampghost',
'Avain Skyraven','Avaiy Chantmagus','Avitore Bravebat','Avorarey Hammertracer','Avyad Magevictor',
'Axaek Songworm','Axedo Doomskull','Axeoz Hornpacer','Axidi Cursedragon','Axifeca Earthrat','Axufiter Redshadow',
'Ayadunok Blackcurser','Ayiro Chillscar','Azalodax Whitefletcher','Azobaket Banewhip','Azosor Ravenseeker',
'Azotim Starseeker','Azral Doomwit','Azuku Chaosweasel','Balolovy Irondash','Banetiak Warbull','Baror Chillcat',
'Basen Magustraveller','Basor Grimblow','Bavelifo Madchaos','Baxod Moonhunter','Bayanlel Wildtracer',
'Bedaneoh Undermace','Berakner Touchdancer','Beredyun Magestealer','Bexaxidi Windfinder','Bezyn Hammermaker',
'Bidahzax Jaderoot','Bide Rainflail','Bilal Rainthief','Birelahe Firehunter','Bisco Locktracker',
'Biteteem Cursewarrior','Bixod Ironraven','Bixri Mawpacer','Bolan Bonebull','Borasrer Warpmolder',
'Borudix Leapcurser','Bozihcat Bleaktracker','Byka Strongtracker','Cacoruk Snarldancer','Cadalude Bullcurser',
'Calik Dancesnarl','Canri Wandhunter','Cata Gemfletcher','Cedayer Cavebeak','Cehastun Nightpanther',
'Cehined Breakwarrior','Cehukave Venomtracer','Cemad Firecarver','Ceto Bladelance','Cexazrar Scardrum',
'Cidazet Ragehand','Cidedoz Spinewolf','Cika Angrykick','Cilunaub Stonehammer','Cime Ashvenom','Ciyel Crystalwarp',
'Cobixaey Bloodraven','Conol Ivorysinger','Cotekiay Startouch','Cudebifa Earthfang','Cufu Warpsling',
'Cylacrin Cairntooth','Dadir Redlash','Dadiz Moonraven','Dahci Coldthief','Dahte Ragehunter','Dakar Tearstaff',
'Dakbo Magevictor','Daker Redraven','Dalik Breakcurser','Dama Spellcurser','Danayoti Vinemaker',
'Danenode Lockcarver','Danva Pearlrat','Dareniaf Hawksinger','Daritys Poisonmask','Darytol Cindertraveller',
'Dasfe Jackaldreamer','Dasli Redskull','Dasutici Waterwarper','Datebesa Chaosrift','Datok Snakesinger',
'Davaz Wartouch','Daxesok Battledemon','Daxro Woundbreaker','Dayaxol Dirgefinder','Dedah Swampmagus',
'Dedireox Grayspine','Dekabuki Grinbreaker','Dekzo Swampmaker','Delihave Longbreak','Demacaek Warpmark',
'Denahir Rodvictor','Denarmif Spinevoyager','Derataf Lancedancer','Derfe Iceclaw','Derim Earthlizard',
'Desan Farvictor','Desec Vinepanther','Deseriza Silverarrow','Devavale Lostghoul','Dexuxlan Pearlshot',
'Dibar Streakwanderer','Dicovin Chaosrod','Dihaymab Kickvoyager','Dikaxez Moonseer','Dikifan Angrywanderer',
'Dikra Blackfang','Dilam Grimstar','Dilnu Growlsinger','Dilu Rootmark','Dinbe Chantflute','Dira Blackwarper',
'Direkora Bleaktaker','Diris Whitesnake','Dita Mawshooter','Ditycur Starmoan','Dixu Loststaff','Dizadhil Wormpacer',
'Dize Grincurser','Dizla Gashwarper','Dizonool Caverngem','Dizuvmod Teararrow','Dobih Bladedragon',
'Dohaszor Jackalcutter','Dokar Darkarcher','Dolarik Angryblade','Dolba Rainpacer','Dora Swamproot',
'Dora Wardemon','Dorollum Chantwand','Dovoz Jadestealer','Doxerhez Ghosttaker','Dozofovu Tearcat',
'Duceken Bleakmark','Duduskey Doomice','Durna Wardemon','Durra Icedancer','Dykekref Witnest','Dykirat Battleice',
'Dylco Lonewarper','Dynuhoal Woundlash','Dyrireid Flutekiller','Dysoren Riftsnake','Ebenoro Graytwister',
'Ebeuk Scarkiller','Eboel Irontraveller','Eboir Shadedevil','Eburit Wardragon','Ecirocek Cometclaw',
'Ecuver Grimchant','Edaaf Chaosrage','Edadidiv Starfinder','Edaet Stingfletcher','Edaib Cindershooter',
'Edanirul Deathflame','Edaon Angryember','Edaot Catvoyager','Edeaz Whiteweasel','Edelo Battlefletcher',
'Edena Ragebat','Ediketi Snarlbreaker','Edile Ghostsinger','Edirik Flamedash','Edofik Grandwarrior',
'Edoir Deathgem','Efarobe Skullseeker','Efeto Cutstrike','Efirer Earthlash','Efutena Strongspine',
'Ehaod Doombreaker','Eherami Farfire','Ehumalex Pathrider','Ekadino Warcarver','Ekate Earthstrike',
'Ekeen Icehorn','Ekelina Shotmaster','Ekexez Spellrider','Ekfox Scarsnake','Ekihysad Chantwand',
'Ekitaheb Chaosdragon','Ekixix Cairnbreaker','Ekoiz Bravefire','Ekolo Clawrider','Ekrih Lancepacer',
'Ekunirak Wildweasel','Ekuradir Highpanther','Eladicif Ghostsinger','Elaty Starrat','Elelotix Wiseseer',
'Elidilot Songjewel','Eliko Granddemon','Eloid Drumtracer','Elovete Cavemagic','Elucimer Fallcurser',
'Elulanah Ratquester','Emaar Farstreak','Emido Eyetracker','Emoar Icekiller','Emuhy Ironhunter',
'Emzer Tearfall','Endax Moonseer','Enerama Longsinger','Enezat Bullcutter','Enidarem Wounddreamer',
'Enitafal Highwand','Enoat Lonevictor','Enomaki Lizardmaster','Enotir Coldflail','Enrat Ivoryhawk',
'Enykarur Poisonrat','Eradaru Bravecomet','Eradiko Catvoyager','Erafaloh Baneblow','Erahol Lostwand',
'Eravaku Nightcat','Erdal Jadeblow','Erdok Silvervictor','Erear Frosthand','Ereki Skytooth','Erekid Battledive',
'Erena Firesnake','Erenul Warriorshooter','Ereor Wildbull','Ereot Devilquester','Ererore Skullwarrior',
'Ererul Icepaw','Eriit Colddancer','Erine Swampmace','Erizonoc Windwand','Erobala Falconbreaker',
'Erobi Nightgrowl','Eroel Cairnmolder','Eroin Vineraven','Erokira Rootbull','Eronoko Pantherthief',
'Eroresar Venomstrike','Erosen Lonemagus','Erote Chaostracker','Erreh Witmask','Eruvotar Moontail',
'Esihavi Snakeeater','Esuir Chaosstealer','Esuur Emberdevil','Etaac Irongrowl','Etadab Wormmaster',
'Etalaro Mightywarrior','Etaronur Starfang','Etatika Grimdusk','Etericas Stormjewel','Etetar Wildquester',
'Etidota Farbone','Etizuk Fangmolder','Etuli Longwarper','Evaraxo Chaosghost','Evaro Darkworm','Evasa Songrod',
'Evebeli Reddemon','Evkat Ashwind','Evoil Flamesnake','Evorito Wildvictor','Evynuta Grimshooter',
'Exayz Cavernsailor','Exedamer Lashmaster','Exvin Grandsnarl','Exyto Unholyrain','Eytan Flailtracer',
'Ezaxol Fireslayer','Ezeca Dragontracer','Ezeseno Pawwarper','Ezunon Curseblow','Fabehid Cairnhunter',
'Face Shinetracer','Fanorait Curseworm','Fase Gemclaw','Feferari Hailfletcher','Fekot Dancelash',
'Femaxeiv Chaostaker','Fenit Cavernrift','Feraheut Cutsinger','Fidik Weaselpacer','Fidokzir Stoneworm',
'Fihomdel Spellmolder','Firulser Unholytwister','Fitos Strongchaos','Fivitayl Strongfighter',
'Focilier Touchmolder','Fokre Shadowcurser','Fokzy Demonruler','Fotak Chaosvenom','Foyidrot Ashblow',
'Furerez Highbat','Futamnar Lockkiller','Fycab Wildrage','Fycefaur Bonecarver','Fydaler Cutwand',
'Fylil Demonslayer','Fyvdu Divecurser','Habudnav Woundwhip','Hadaztoz Jackalpacer','Hadecrer Cursekick',
'Hady Bonebull','Hafu Redgem','Hanit Nestvictor','Harab Swordtooth','Harexahi Pawtwister','Harra Moonsnake',
'Havak Unholyjewel','Havubayi Magethief','Haxirem Lowshine','Hazetsov Greatwand','Hazifis Ironfletcher',
'Hazki Blackseer','Hebocazo Braveslash','Heda Pathbard','Hedalail Mightymaw','Hede Farboar','Hedi Roothunter',
'Hehiran Wolfhunter','Heni Nightfire','Heniviri Cairndive','Herir Strongarrow','Herut Farwanderer',
'Hetodek Clawtracer','Hibanol Cutgrowl','Hibavey Falconruler','Hiforoal Roothorn','Hifovair Bravequester',
'Hikatole Jackalruler','Hiki Rodshooter','Hilon Frostmaker','Hiri Touchseer','Hironaet Coldrod',
'Hixecnuv Rothawk','Hodob Nightdrum','Hokut Warscribe','Holar Warpkiller','Homra Weaselbreaker',
'Honev Wandpacer','Honey Breaktracker','Honivais Cairnshot','Hori Pearlmagus','Horutut Breakbull',
'Hurazayd Coldhawk','Ibakesi Danceblow','Ibaral Battlebreaker','Ibaza Madcaster','Ibdif Firerat',
'Iberuryr Ironbone','Iboov Rootpacer','Icalat Poisonarcher','Icerinir Ragemask','Icidibo Cairnsnake',
'Icokade Pawshooter','Icoredo Nightcutter','Idaer Shotpacer','Idanele Angrydemon','Idear Jademagus',
'Idetober Embercat','Idikekim Cuthawk','Idinelib Dancedragon','Idiricar Hearthorn','Idiry Toothcaster',
'Idoan Nighttear','Idohola Vinelash','Idsar Wardance','Idvet Lostdive','Idxur Cavernquester','Ifadurar Shadecarver',
'Ifohaz Windpacer','Ihabufi Warflute','Ihaty Clawslayer','Iheva Angrymaster','Ihmyt Wildspine','Ikadac Silverstaff',
'Ikamala Warpfalcon','Ikara Fallquester','Ikareru Pearllizard','Ikati Fightertracker','Ikavise Wildslash',
'Ikear Grimmark','Ikesi Demonruler','Ikiab Witbull','Ikidiref Battlemagus','Ikiya Growlseer','Iknek Magusseeker',
'Ikoab Warfighter','Ikodi Tailpanther','Ikorarer Cutworm','Iktid Frostsinger','Ikuak Battletracker',
'Ikyor Stormarcher','Ilalodo Swordstaff','Ilarari Hopekiller','Ilavat Growldancer','Ildir Cursehail',
'Ileme Cutfang','Ilivira Hornvoyager','Ilofeho Growlkiller','Iloik Lockmaker','Ilore Darkfinder',
'Ilotocan Toothcaster','Ilsyd Breakblow','Iluday Growlquester','Ilukali Strikevoyager','Ilynuku Swampworm',
'Imdox Clawhunter','Iminotos Chillfire','Imior Scribevictor','Imulir Watervenom','Inabava Ragedevil',
'Inabohof Jewelwarper','Inael Dirgehail','Inakad Duskhorn','Inatysi Lonerift','Inava Frostpaw','Ineaz Battlecutter',
'Ineen Nightsting','Ineit Venomwing','Inerudi Ratwanderer','Initaki Magewarper','Innuk Silvermark',
'Inodik Caverncutter','Inofil Divehorn','Inokatir Starlock','Inotera Tailgrowl','Inran Ivorycutter',
'Inuliro Silverlance','Inuti Strongchaos','Inynale Devilmaker','Iratak Cometvoyager','Irateru Ironflute',
'Iraxabil Ragevictor','Irdar Rainweasel','Irelo Devilquester','Irenetan Demoncurser','Iriak Scartaker',
'Irihova Skyshine','Irinavih Nightcarver','Irkiz Staffkiller','Iroar Chaosarrow','Iroha Grandwarrior',
'Irona Swordmace','Ironyno Mightymage','Iroryma Boarseer','Irosuzan Bardvoyager','Irrik Farwarp',
'Irudi Underhail','Iruleri Beakvoyager','Iruror Waterjewel','Iryrenet Clawbreaker','Isakirik Stonespine',
'Isano Grayclaw','Isaye Farice','Isoax Ravenvictor','Italo Irontraveller','Itebid Bonefletcher',
'Itoak Whiterat','Itoav Magichunt','Itoek Firefang','Itois Ashdancer','Itoxerad Weaselvictor','Ituen Clawcutter',
'Iturax Doomice','Ivanati Bonequester','Ivedata Pearlstealer','Ivenel Madfall','Iviot Magicmask',
'Ivirara Venomnest','Ivniv Breakweasel','Ixasa Bardmaster','Ixdim Stormclaw','Ixead Caverndancer',
'Ixesin Ivoryshade','Ixhin Wisedancer','Ixilafo Rootmolder','Ixrar Flamethief','Iyenativ Snakestealer',
'Iyobeso Windgrin','Izacid Icestreak','Izaih Embereye','Izeber Chaoslock','Izeda Starsnake','Izeharu Unholybattle',
'Izivakul Bonedreamer','Izoel Ironwing','Izoki Chantdrum','Izurel Jackalvoyager','Izyor Longwand',
'Kadilefe Snakesinger','Kadisixy Waterworm','Kafusety Songdash','Kahdu Cutcaster','Kahivala Vilehunt',
'Kakinier Magusmolder','Kaluzan Magicwarper','Kamidear Rootfletcher','Kamoyera Ratcurser','Kana Pearlpoison',
'Kanan Earthmoan','Kaneruet Battlemage','Kanil Battlehunt','Kanir Warriorbreaker','Kanivtar Cavernmagus',
'Kanix Firebreak','Kanuron Blooddevil','Kanye Demonmolder','Karardak Windshot','Karer Grimstaff',
'Karoliat Rottwister','Karra Cavernwolf','Karu Warstaff','Kasa Taillance','Kates Nightbone','Katidior Bravekiller',
'Kator Earthdragon','Kavicyl Touchquester','Kaxar Embersailor','Kazizita Dragonpacer','Kebalory Starsnake',
'Kebol Iceslash','Kecytoum Icehunter','Kedad Dreamwanderer','Kelaslad Flamebard','Keleheta Hornsinger',
'Kelunlyr Firearrow','Kemekoma Horncurser','Kenabuis Silentvenom','Kenar Watervine','Kenircir Mightymage',
'Keniroav Hailruler','Kenis Silentsnarl','Kenke Cometleap','Kerekiir Waterfire','Kerik Unholyjackal',
'Kerra Banedash','Ketoy Ragemaw','Kicalean Hightear','Kidaf Icelash','Kidekit Ivorydragon','Kinvi Clawrider',
'Kinyx Firestealer','Kirik Blackcutter','Kirik Coldwhip','Kirilar Firesinger','Kiro Bleakcarver',
'Kisetral Tearfletcher','Kivir Hornquester','Kiyza Bonemolder','Kizesiti Rodrider','Kobce Moonrage',
'Kobinoak Ashfinder','Kodetay Woundsnake','Kokutaih Bonebreaker','Koner Songtracer','Korizlax Breakwarper',
'Koronkut Moontraveller','Kosinise Falcontaker','Kosysuk Banetracer','Kotirmel Deathvoyager',
'Kotra Stormbull','Koxinais Jadedive','Koxitile Chaosmage','Koxko Rotwarrior','Kozecuod Warpstaff',
'Kuyi Longdirge','Labak Coldfletcher','Labizik Mooncaster','Laciyib Duskbreak','Lacizkaz Moondance',
'Lahro Underfire','Laka Mawwarper','Lakuvrub Grindancer','Lala Swordclaw','Lalehler Chilltwister',
'Lalyruk Snakequester','Lanan Breakgrin','Lanarbar Warbat','Lanne Venomseer','Larar Highroot','Lared Skydancer',
'Larenoir Spinefinder','Laribiru Starwarper','Lasa Ivoryember','Latatuco Longruler','Latenvin Teartaker',
'Ledinnit Loneshine','Leduc Underscar','Lehenona Starraven','Lekathid Danceflail','Leki Magicstrike',
'Lekusion Catfinder','Lekzi Skulleye','Lenra Bonewhip','Leriv Bravelizard','Leru Kicktraveller',
'Letec Embermoan','Letma Firesnake','Letun Arrowmolder','Liba Cutrider','Lifavrer Bardtwister','Liha Shadehammer',
'Lihle Bladeeye','Likxa Moongrowl','Linaf Wormrider','Linen Warcat','Linenal Chillcaster','Linonzoh Strikequester',
'Lirer Skullhawk','Lirer Stormtouch','Liribidi Swampmaster','Liroxit Fluterider','Lirun Strikecutter',
'Lisotied Wiserat','Lobor Nightdance','Lobycuv Gashfinder','Locirkel Teardemon','Locotnas Spellwanderer',
'Lodibveh Grandjackal','Lohekoax Leapwarper','Loky Loststealer','Lolre Hopehawk','Loralear Gemdragon',
'Lorri Gemlizard','Losadaku Ragenest','Lovariho Greatwhip','Lovifaad Viletaker','Lovro Boneghoul',
'Lukre Lizardfinder','Luledam Frostbattle','Luteredi Divetracker','Lutibafi Whiprider','Lylukkac Bleakstar',
'Mabed Angrybeak','Makirar Clawcutter','Malenoxa Dreamsailor','Manna Warshine','Matno Chillwing',
'Maxitedo Clawslayer','Mayikeb Wildraven','Meba Bravefighter','Medaxani Fighterwanderer','Medireir Streakdancer',
'Melivnih Rainmagus','Mexer Skydreamer','Mibetief Nightwand','Mikavrey Fireblow','Mirro Scarruler',
'Mizilyot Snakecutter','Mokytoha Whitebull','Morodrok Woundfalcon','Motka Beakfletcher','Movoz Highdash',
'Moxi Cairndreamer','Muti Nightcurse','Myderoas Fireworm','Nabahed Chillstorm','Nabyklan Witstrike',
'Nadte Shinetracker','Nake Viledevil','Nakixer Darkwound','Nakuc Dashmolder','Nakudiha Ashsnake',
'Nalazul Songmoan','Nane Chillwanderer','Nanir Chaosmask','Narar Raincarver','Nareraud Whiteshade',
'Naroc Ghostthief','Narti Greatfalcon','Nasa Shadetaker','Nasoz Darkstar','Nasun Cavebull','Nati Bonefall',
'Natimeor Ghoulcurser','Nato Crystalmask','Navra Rainrat','Navur Stormboar','Naxe Stareye','Naxir Nightdreamer',
'Nazelare Maguscaster','Nazha Spinecutter','Necolor Lanceseer','Nedanone Skullseer','Nedariab Shinefinder',
'Nedotax Macetracker','Nehalian Waterwolf','Nehibyni Dirgerider','Neky Doomchaos','Nenar Deviltraveller',
'Nenikial Hopegrin','Nenixnas Horndancer','Nera Unholymaster','Nerivaax Skywanderer','Neryt Coldsnake',
'Nexodour Boneruler','Nidyvdud Gemfighter','Nifirely Shadownest','Nike Stonefire','Nikor Windslayer',
'Nilezay Shadowhammer','Nilmo Spineraven','Nilov Spellhunt','Nilyrove Bravemaker','Nimak Spellcinder',
'Niraxbon Songvictor','Niri Darkstealer','Nirik Magusthief','Nirohaen Icewarper','Nirotecu Coldseeker',
'Nirto Hammerthief','Nisehor Wildarrow','Nital Cursecat','Nitireod Hopeflame','Nivarusa Magedancer',
'Nive Raincat','Nixak Viletooth','Nixiful Shadewand','Nixikita Cutbard','Nixu Divejackal','Nizehix Boarruler',
'Nobe Moonmaw','Nodelrit Warseeker','Nofol Starsting','Nofulyro Bravesling','Nolenet Nightstaff',
'Noli Greatwound','Nonru Hawkwanderer','Norirar Wolfcaster','Noron Dancetraveller','Norti Madfang',
'Nosut Devileater','Notidira Cursebreak','Noxyteki Slingwanderer','Nubam Warmagus','Nufer Dashthief',
'Nukazryk Stormseer','Nukik Handcarver','Nulokkir Mightynest','Nurokedi Bloodbattle','Nusse Chillstrike',
'Nuve Bravedive','Nybre Warsnake','Nydednom Battlesailor','Nydri Poisongrowl','Nylab Bullsinger',
'Obaka Crystalflame','Oboda Bloodgash','Ocrin Duskhunt','Odahu Angrymolder','Odain Rotghost','Odaye Drumtracker',
'Odeniser Pearltracker','Odidiri Bardruler','Odinet Vinerod','Odireto Wildhunter','Odoracid Devilsinger',
'Ofiki Ashbull','Oftes Battlemaster','Ohaal Frostweasel','Ohahyvo Moonjackal','Ohtir Grandrat','Okaiv Warriorvictor',
'Okane Danceblow','Okesaf Witdreamer','Oketukab Falconvoyager','Okhev Duskdevil','Okouy Magusvoyager',
'Okoza Shadesnake','Okudib Scribetraveller','Olalulus Falconsinger','Olarida Lonecutter','Oldan Spellhorn',
'Oliaf Warriorwanderer','Olinabis Cursemaw','Olkox Gemwolf','Olril Lostgash','Olxix Waterrod','Onaic Strikestealer',
'Onaketat Watertooth','Oniit Snakeseeker','Onoduk Eyewarper','Oraceki Stingmolder','Orady Battledancer',
'Orakir Nestbreaker','Orali Blackrot','Orayuka Cairnbreaker','Orber Nightcaster','Ordir Batquester',
'Ordix Rotbreaker','Oremera Nestshooter','Oretada Weaselmaster','Orire Wingsinger','Orixe Grimlock',
'Orizeric Boneworm','Orkar Swordtaker','Orker Hammertracker','Orkir Boneruler','Orlen Dirgesnake',
'Ormur Silverember','Ororar Spinemaker','Oroxa Whitecarver','Orubo Weaselcutter','Orucoyin Bonegrin',
'Oruke Deathrat','Orutehid Wildspell','Oruto Skullsinger','Osiin Frostdemon','Otetab Gasheye','Otexeker Swampsword',
'Otinorex Startraveller','Otivode Blackdreamer','Otlad Whitechaos','Ovaeh Growlvoyager','Ovahucom Whitebattle',
'Ovaleri Flameraven','Ovidema Swordhand','Oviraro Silentflute','Ovoxetah Slingseeker','Oxaaf Moonsting',
'Oxareze Moontouch','Oxaro Gashdrum','Oxatadil Warember','Oxbas Boneraven','Oxekanab Silenttooth',
'Oxeok Vileseer','Oxeza Snakecarver','Oxidi Strongleap','Oxkiv Venombull','Oxror Greatkiller','Oxyat Skullsnake',
'Ozadat Lizarddreamer','Ozazid Bonebeak','Oziev Emberdash','Ozimelit Highquester','Ozioc Leapwanderer',
'Ozkat Nightcutter','Ozker Longflute','Ozoar Coldthief','Ozokyre Silverraven','Rabak Dirgemask',
'Rada Whiteflame','Radih Riftwanderer','Radix Moonfall','Rado Madcat','Radri Cindertwister','Rahokit Cavernhawk',
'Rakeroir Shinefinder','Rakid Grandkiller','Rakitoer Slingruler','Rakivuca Moongrin','Rakre Crystalfalcon',
'Rakxa Jadeshine','Ralurryt Marktwister','Ramek Raventaker','Ramicib Scarmolder','Ramoveor Cavernbane',
'Ranaxer Streakdancer','Ranibol Flutemaster','Raniseat Poisonsnake','Ranobily Lanceslayer','Ranokar Pantherbreaker',
'Rarabik Archercaster','Raral Greattwister','Raralola Cavernruler','Rararece Poisonlock','Rarasox Coldmagus',
'Rareleat Swampice','Rarihiax Venomdreamer','Rarilear Cavernclaw','Rariniur Darkshot','Rarixdat Eyepacer',
'Raro Lockdreamer','Rarod Handseer','Rarodexe Ashghoul','Rarombat Kicktaker','Raron Rootsling','Raros Flailstealer',
'Raruz Stonegash','Rarze Undersnarl','Rasab Bravetail','Rasi Cutfalcon','Rasin Panthershooter','Rasitedo Pawmaker',
'Ratem Dancepacer','Ravevyac Undercat','Ravikiri Tearsling','Ravo Battleweasel','Raxabim Snakeslayer',
'Raxek Coldghost','Raxer Bonewing','Razaroro Ragefang','Razek Heartwolf','Razeryem Shotmaster','Razulif Bonefletcher',
'Reca Ivoryslash','Recovoh Lowtracker','Redad Nestcurser','Rede Bonecaster','Redot Witdrum','Refavdik Ivoryruler',
'Refva Vinefletcher','Reheruar Windcutter','Rehinrat Swordclaw','Rehumur Warwise','Rekah Skybull',
'Rekakati Nestthief','Reko Ironscar','Relet Breakwarrior','Relne Ironscribe','Relti Lostwing','Remanuac Undersnarl',
'Renetein Vinemolder','Renir Lonecutter','Rerexet Divecinder','Rerit Gemlizard','Rerke Tearcarver',
'Rerku Witscribe','Rero Rootdash','Resa Ashbard','Resmi Lostslash','Reson Highfinder','Retahah Jackalmolder',
'Retanrak Starboar','Retar Nightraven','Retaz Bonewanderer','Reter Jackalsinger','Reve Unholywit',
'Revi Chilllash','Rexde Pearlgrin','Rexoskir Breakbard','Rexoxar Bonefletcher','Ribon Jadeghoul',
'Ribyxer Tailsting','Rida Deathskull','Ridakcys Warmaker','Ridakel Pearllizard','Ridir Vinefang',
'Ridoc Frostpoison','Rihinuor Riftlizard','Rikezem Hopejackal','Rikivos Dragoncaster','Rikmu Loneice',
'Rikorote Rotsailor','Rikur Eyerider','Rilud Wilddrum','Rimki Wisesting','Rinidot Mawtaker','Rinuh Wolftraveller',
'Riraf Stafffletcher','Rirarufa Vineraven','Rirca Magefletcher','Rirebit Fallthief','Rirec Wildbat',
'Rirerlen Lostlance','Rireyrab Cavernshadow','Riromiro Whitesling','Riroxxur Bardmolder','Risax Falconseeker',
'Ritec Grimeater','Riter Mooncomet','Riteraih Silentsnake','Riti Moonstaff','Rito Wingseer','Ritsi Magetaker',
'Rivazdal Battlemark','Rizobavu Snakevictor','Robazixi Mawmaster','Rofar Nightclaw','Rofesoxa Spellrat',
'Rohik Poisonraven','Rohozron Farblow','Rola Ratthief','Rola Witbull','Role Bleakarrow','Roledin Hopehunter',
'Rona Pearlrod','Ronir Duskpacer','Rono Divemark','Ronsi Waterweasel','Rorakyer Nightlance','Roranol Dragonkiller',
'Rorarbik Boneclaw','Roril Blackwhip','Rorlo Bonefire','Rorofrit Coldfletcher','Rorohyl Skulldemon',
'Rosetnak Silvermaster','Rosit Chaospaw','Rota Cavernrider','Rotac Lasheater','Rotit Lowdemon','Royakita Blackstealer',
'Rozurake Sailorruler','Rubeloab Dreamhawk','Rubi Skycomet','Rucorlif Silentvenom','Rudor Lonepacer',
'Ruha Shinevoyager','Ruhalcol Riftmaster','Rukitret Magicfall','Rule Nestcarver','Ruli Tearhawk',
'Rumil Songwhip','Runle Firemace','Rurakiek Ironmask','Rurenoxo Underghost','Rurin Taildemon','Ruriroam Ragedemon',
'Ruroh Farpaw','Ruta Bonetraveller','Ruteyifu Swampdance','Rutovzor Farheart','Rutu Spinestealer',
'Ruxetiud Grandmage','Ruyar Shadowcaster','Ruza Ironrain','Rydar Tearvictor','Rykanira Pearlsong',
'Rykorete Crystalwit','Ryluhov Chaoscarver','Rynedaix Riftfang','Ryravuat Shadowsailor','Ryruhcik Witmolder',
'Rysikoir Moonwarper','Rytireen Darkboar','Rytodtol Bravedash','Ryvurir Redgrin','Ryxordav Bonenest',
'Saderiir Tailhammer','Sadikrox Vineflail','Safa Arrowseeker','Safuxker Clawcurser','Salirnod Ironruler',
'Salix Bonecaster','Samaroti Clawthief','Sane Grayshine','Saromiit Coldseeker','Sarsa Fangmaster',
'Sarutyim Nightember','Satne Banemaker','Savahbar Magicquester','Savud Weaselcarver','Sazi Bravestealer',
'Secal Shadowhorn','Sedovinu Teareater','Senazoot Magicpaw','Seririaz Greatmaster','Setuzib Catkiller',
'Seveteeb Battlesnake','Sibarer Bladetooth','Sidarote Hailseer','Sindo Gemscribe','Sirazbal Crystaldevil',
'Sirobir Kickpacer','Sizosiye Redwarrior','Sodukala Watergrin','Sofor Shadowmolder','Sohid Flailwarper',
'Sokenen Whitemark','Sokir Ashflail','Sorir Bonecurse','Sory Coldscribe','Soselac Stargrin','Sotiruon Jadeice',
'Sukev Unholyrift','Surim Ragestealer','Syhke Ivoryfalcon','Syrev Underwit','Tabodune Frostvictor',
'Tadeb Beakeater','Tadel Scribepacer','Tadha Silverfinder','Tadro Icelock','Tadur Tearthief','Taduroka Fardragon',
'Tafadium Dreambreak','Takek Ragehunter','Takri Hornstealer','Talef Nightrain','Taliduk Grayblow',
'Talky Lowspine','Tamik Stonebreaker','Tanikavy Riftruler','Tanut Cursedragon','Tararuz Ironwarrior',
'Tarenrex Moonpacer','Tarideno Frosthawk','Tarma Silverwit','Tase Vilecat','Taticxex Starlance',
'Tatodfik Highbane','Tazab Ivoryvictor','Tazinooh Cavesnake','Tebe Bleakdevil','Tecru Touchtraveller',
'Tele Skulldevil','Tenaveum Heartfalcon','Tenit Dirgeshot','Teri Witdemon','Terol Silentshooter',
'Teros Ivorytwister','Teryrir Dashvoyager','Tetihfer Bloodsting','Tetri Lostpacer','Tetulain Cuttaker',
'Tevom Chaosdragon','Tezfu Ivoryghoul','Tibikih Fangtraveller','Tibodnor Snarlcaster','Tiburik Gashcaster',
'Ticelixa Lowfalcon','Ticra Cutcarver','Tidadoki Wildmolder','Tidinari Vilehammer','Tiditud Ashshot',
'Tidse Warsnarl','Tikor Boarseeker','Tilad Riftmage','Tileh Ivoryskull','Tinetar Cursebat','Tinih Battlespine',
'Tiniyah Frostwind','Tinot Vilefletcher','Tireyaav Clawtwister','Tirizcub Fardream','Tirso Tailbard',
'Titaduix Mawfinder','Titevbar Coldseeker','Titor Ironcat','Tixbe Banedash','Todi Lostfighter','Toduriya Riftboar',
'Tokenuad Whiteworm','Tokok Wandvictor','Tokon Whippacer','Toldo Cairnstaff','Toradale Chaosquester',
'Tore Strongcutter','Torerair Bonecutter','Tove Spellseer','Tovu Mawtaker','Toxaned Ivorylance',
'Tozuvyad Panthermolder','Tufadeex Stormraven','Tura Starnest','Tuzy Weaselmaster','Ubasale Cometwarrior',
'Ubika Doomwolf','Ucael Eyeseer','Ucerir Battleworm','Udeir Tailquester','Udetan Dirgehorn','Uditi Ratfinder',
'Udnas Cindertracker','Udoxa Bonetracer','Ufezac Nightraven','Uhidave Angrypanther','Ukaro Lonetraveller',
'Ukazuyaz Clawfletcher','Ukera Icedrum','Ukese Ashtooth','Ukiay Angryshine','Ukror Ragemask','Ukymalit Lizardtracker',
'Ulaor Stormghost','Umirited Nightcat','Umori Lashthief','Umvat Wisemagus','Unalit Cutsting','Unari Snarltraveller',
'Unuil Devilsinger','Urear Greatsailor','Urerad Blooddragon','Urikik Skullcurser','Urinafe Longroot',
'Urirehir Silentrat','Urtox Starhand','Urvev Silenthammer','Usaar Toothfinder','Usatihi Whipcurser',
'Usefav Poisonstrike','Useom Ravensinger','Usodado Farcomet','Utahen Scribecarver','Utavakir Wingbreaker',
'Utesit Blackpoison','Utikiser Warriorbreaker','Utiril Drumfinder','Utohu Moanruler','Utvic Nightthief',
'Uvera Bleakhand','Uvirox Ghoulstealer','Uvoal Catcutter','Uxlyt Banedragon','Uxuav Eyecurser','Uxyhadad Macedancer',
'Uyrem Wisehunter','Uzenifut Rothunter','Uzihateb Wardusk','Uzlak Dirgeseeker','Vadirare Roottracker',
'Valonkid Snarlkiller','Varadaal Stonerat','Vararero Doomwarrior','Varerkin Unholymace','Varko Snarlmolder',
'Varoh Stonemage','Vasymoto Masktwister','Vazuriik Witmolder','Vefu Underbreak','Vehry Warwarper',
'Veke Vinedancer','Vekibrir Bleakwhip','Venohar Witslayer','Veraz Warriorfletcher','Verurir Slashslayer',
'Verzo Blackboar','Vibanin Clawmaker','Viblo Starmaster','Vidyn Caverntraveller','Vikzo Waterhammer',
'Vini Flametracer','Vocik Falconhunter','Vokisair Chantraven','Vomazos Chantshooter','Vonan Woundseeker',
'Voreriha Eyesinger','Votyriod Greatstreak','Voyi Riftwhip','Vudat Bravefalcon','Vunozer Bladetracer',
'Vunux Archertracer','Vykodido Jeweltwister','Xable Startaker','Xahez Riftvictor','Xakac Ravenstealer',
'Xalaboot Vileghoul','Xalxe Bloodsting','Xamerol Moontraveller','Xarot Pawtraveller','Xarukaor Jeweldancer',
'Xatarobo Swamprat','Xatilod Moondash','Xatulrok Wildvine','Xazeryit Staffcurser','Xebareko Divemaw',
'Xeco Catpacer','Xedat Chaosrage','Xedyr Bardfinder','Xehomah Fightereater','Xelo Clawwanderer',
'Xenaz Devilsinger','Xenuk Wildtwister','Xerasol Understealer','Xerid Silentquester','Xeyirat Bleaklance',
'Xibra Cometvictor','Xiharato Stonejackal','Xilat Unholyscar','Xilohior Silentfalcon','Xiretoxi Mightymark',
'Xirot Kickmaker','Xitanrix Staffshooter','Xiveduki Vinequester','Xoradiam Starwarper','Xoseruir Chilltouch',
'Xotez Cavernseer','Xotox Undertraveller','Xuber Scarkick','Xuliz Skullvictor','Xunamuol Handwanderer',
'Xutaveno Battlescar','Xutku Gemseer','Yatel Cutrod','Yaza Touchfinder','Ybanaki Lowmolder','Ybaok Banehunt',
'Ydate Snaketracker','Yedaseav Bloodraven','Yerol Icescar','Yerucaat Banetouch','Yhsir Blackstorm',
'Yidinar Icesnake','Yidod Duskhunt','Yizokavi Shadecutter','Ykureno Watermask','Ylait Underpaw',
'Yloxi Cavetraveller','Ylrah Gashhorn','Ynikisa Gashtaker','Yninoko Longcinder','Ynmih Fallcurser',
'Yoxaloh Moonkick','Yoxxo Rotdemon','Yrato Ivoryvoyager','Ytcar Hawkwarper','Ytetehed Ivorydreamer',
'Yudo Songvictor','Zadertun Duskhail','Zahnu Cutdragon','Zaki Beakruler','Zalad Cavernblow','Zaladiis Fallvictor',
'Zalehuux Archermaker','Zarba Nestvictor','Zati Venomseer','Zatyrak Strongdancer','Zaze Silvervictor',
'Zede Chaosmoan','Zerak Caveraven','Zeslu Gemshooter','Zetidcis Undersinger','Zexaled Vileghoul',
'Zezor Stonefinder','Zibinrah Banemaw','Zidetex Bulltaker','Zikifaro Dashseer','Zila Blackdemon',
'Zilaxkor Nightskull','Zines Embervoyager','Zoked Hornmaker','Zora Rodtraveller','Zoribezy Starblow',
'Zoror Bonetouch','Zotidar Poisonwhip','Zoxo Cometcinder','Zulitiza Eyetracker','Zusaz Battleghoul',
'Zuxyrofu Waterlance','Zynos Skydusk',),

'VILLIANESS':(
'Alessandra Winter','Aphra Noire','Aphra the Poisonous','Astarte Vixenia','Cornelia Blackheart',
'Cyrilla Wynter','Damia the Obscene','Delilah the Unclean','Editha Nyx','Emeraude Wynter','Gertrude de Sangria',
'Hildegarde the Serpent','Huldah the Ill-Famed','Huldah von Garvel','Huldah von Malheur','Isadora the Ill-Mannered',
'Kali the Shadow','Leila Grendel','Lilith Viridian','Lobelia the Temptress','Lucretia the Obscene',
'Lydia Viridian','Magda the Grotesque','Maudetta the Hellcat','Morgause Cygne','Morgause Falkwing',
'Morgiana of Mourne','Natasha the Raven','Olga Wynter','Prunella Helborne','Ravenna Helborne','Rubella the Gruesome',
'Rufina del Mourne','Sophronia the Succubus','The Deadly Fury','The Fanged Shrew','The Festering Banshee',
'The Forsaken Harridan','The Gruesome Serpent','The Infamous She-Wolf','The Infectious Hag','The Terrible Hag',
'The Unclean Tigress','The Unpleasant Hellcat','The Vicious Virago','Theodora Corvida','Ursula Tempest',
'Vanessa de Blackheart','Zelda the Vixen','Zsazsa Drear',),

'GNOME':(
'Berenbell','Bleewinkle','Bunkkor','Bunko','Bunktwiss','Corynottin','Daermut','Dalbur','Dalkor','Dimbjon','Dwobmut',
'Ellyjowinkle','Elmip','Errkin','Errwocket','Fonman','Fudnab','Garman','Gerbur','Gergel','Glimdo','Glimmadge','Hednig',
'Hodgeji','Klemwicket','Lindjon','Loopder','Loopger','Looppen','Loopzig','Lumman','Mardmut','Minnijon','Nambur','Ningel',
'Ninrick','Nobder','Olffnock','Pilder','Piljon','Pilmip','Ranzji','Roonji','Roonnor','Roygel','Seejon','Turjon','Waynottin',
'Wimmottin','Zookwyn',),

'WARRIOR':(
'Paien Swiftstep','Sahak of the Four Devices','Otrygg Pikethrower','Lucan Godsmark','Soroush Farhaan',
'Vagn the Mongoose','Motya the Black','Hjalti the Club','Thorvald Cougartrapper','Vasilii the Boar',
'Etienne Tracethoughts','Bazil of the Fighting Tongue','Lehen the Delirious Wizard','Acennan Oakhome',
'Godric Copperlance','Cheslav Stanislovovich','Sighvat Pigtrapper','Cadmon Goldaxe','Brogan Gaderianson',
'Solvi Aslakson','Marz the Unspeakable Wizard','Faran Axewielder','Kari the Lance','Edlin the Jeweler',
'Maule of the Frigid Waters','Majnun of the Eight Eyes','Attor Beechson','Ivan the Nimble','Pruet Nimblestep',
'Besyrwan Foxtooth','Lar the Tinker','Semyon Vanechkaov','Ingi Lizardseeker','Semyon Armanovich',
'Chretien Traceflight','Ekaitz of the Red Hand','Garabed of the Swarming Faces','Jasha the Trickster',
'Hrypa the Shopkeeper','Dragon Aldredson','Bodvar Godssword','Zivon the Poisoner','Deniska the Guardian',
'Rognvald Greenmark','Ranie Bijan','Hadrian Darklash','Vermund Blackmark','Deogol Pikethrasher',
'Finn Daggerthruster','Eguen of the Lightning Hollows','Hakim Mika','Cougar Aartsson','Govannon Graybird',
'Edlin Lucanson','Ulf Lancethruster','Besyrwan Athelstanson','Jermija of Malotin','Yrre Yellowhelm',
'Yngvar the Sword','Monkey Eriansson','Hord the Arrow','Ormod Moonbody','Kjell Stillstick','Lar Knifebreaker',
'Ogier Ghostmover','Jakue of the Green Spirit','Gremian Clubthruster','Gildas Elderleaf','Odon Eldergold',
'Nadir Fadil','Torr Gaderianson','Thorgrim the Turtle','Inguma of the Ethereal Tongue','Bogdashka the Bear',
'Aart the Painter','Ingolf Turtlechaser','Einar Axewielder','Majnun of the Four Masters','Grani Starsword',
'Rafiki Amal','Snorri Weaselkiller','Kolbein Doghead','Hring Steinkelsson','Herjolf Snorrissen',
'Arnlaug Greenarrow','Ferragus Phantomtouch','Maore of the Night Face','Aslak Pantherseeker',
'Onbera of the Western Valley','Hroald the Staff','Itzaina the Blood Sorceror','Tamar Graystick',
'Solvi Hjaltison','Fisk Graybody','Athelstan Demonford','Arman the Gamesman','Ozur the Cougar','Vanechka Danyaovich',
'Alfgeir Strongmark','Slean Eaglerunner','Erian Fishtrapper','Jacques Phantomstep','Jal Yasir','Gildas Daggerthrower',
'Hedeon the Nomad','Olezka the Seeker','Eder the Ivory Sorceror','Gasteiz the Storm Wizard','Bedrosian of the Six Colors',
'Bogdashka of Homel','Raziq Shareef','Itzaina the Blue Wizard','Grim the Crow','Rabican Phantomtouch',
'Grimbold the Stonecutter','Yrre Staffthruster','Wregan Hogtrainer','Sarlic Wolfhunter','Finn Vandradson',
'Erruki of the Golden Eye','Alvar Blackgarden','Besyrwan Bluecloud','Nuxila the Battle Sorceror',
'Grimbold Aartsson','Pyotr the Hare','Brand Weaselherder','Finn Macethrasher','Valdemar Darkflower',
'Yurik the True','Torsten Goldspot','Penrith Daggerwielder','Tellan Cedargold','Odon Elmson','Talon Slightflight',
'Maju the Dawn Wizard','Aslak Ratmaster','Atol Elmgrove','Gunnlaug Arrowbreaker','Gizur Valgardssen',
'Jaizki the Unspeakable Wizard','Banning Oakheart','Ragnar Grayson','Jamshaid Nafis','Vassi the Wildcat',
'Deniska of Ust-Vym','Jakobe of the Golden Soul','Hibai of the Timeless Land','Hring the Mace',
'Torr Firehammer','Svein the Pike','Odon Redclub','Romochka the Nimble','Raven Maccusson','Maccus Ironknife',
'Urtun the Undying Sorceror','Yasha of the Watch','Kevork of the Eight Fires','Zigor of the Eternal Place',
'Zarif Talya','Wyrm Athelstansson','Erramu of the Gray Body','Geir Illugison','Finn Swordthrasher',
'Orixe of the Bright Forest','Ketil Firesaber','Ilya of Trepol','Endura of the Delirious Body',
'Glum the Shark','Bellinus Sarlicsson','Oxa Selwynson','Derian Beechgold','Amundi the Staff','Grisha of Slobodskoi',
'Mustafa Mubaarak','Otsoa of the Pale Shore','Itamar Rasul','Olaf the Saber','Tamar Bluebody','Fadeyka of Mikulin',
'Manton the Archer','Galan Lancethrower','Osric Bluedagger','Valerik the Wyrm','Raaghib Mannan',
'Edric Tellansson','Arnfinn Silverarrow','Luzea of the Shadow Spirit','Zeru of the Middle Spirit',
'Hrypa Beechgrove','Baiardo of the Fighting Tongue','Nuno of the Glowing City','Ibrahim Miksa',
'Strang Aldergrove','Ozur Macewielder','Harkaitz the Laughing Warlock','Alain Cleverflight','Possum Banningson',
'Mikhail the Doomsayer','Errando of the Icy Ocean','Manton Redwater','Fridgeir the Axe','Tellan the Chandler',
'Hauk Strongdagger','Ragnar Tostison','Steinthor Bluemark','Torr Cedarwood','Hovan of the Many Devices',
'Gurutz the Gray Magician','Hawk Sleansson','Osric Littlespot','Vartan of the Eight Rings','Bernat the Middle Wizard',
'Gasteiz of the Unspeakable Sea','Geir the Fish','Garabed of the Three Winds','Shawar Zemar',
'Maccus Dragonmaster','Bikendi the Ninth Wizard','Indar of the Ethereal Body','Besyrwan Tinclub',
'Strang the Fisherman','Dimitri of Chertoryisk','Cyrus of the Seven Powers','Erlend Bluemace',
'Thorir Ratmaster','Hakon the Pike','Vachel Smooththoughts','Viktor the Deer','Sigurd Sumarlidisson',
'Derian Swordthrasher','Harald Moonarrow','Nechtan the Farmer','Marlon Phantomthoughts','Rheged Pikethrasher',
'Harek Lancethrasher','Edur the Evening Wizard','Ander of the Ancient Island','Borya of Driutesk',
'Gremian Staffwielder','Hastein the Arrow','Assim of the Six Eyes','Sarlic the Assassin','Lucan Birdtrapper',
'Hogni Ingolfssen','Ivan the Possum','Bjorn the Frog','Gaur of the White Hand','Chanler Quicktouch',
'Nishan of the Eight Wonders','Lukyan the Strong',),

'HALFLING':(
'Boirry','Frappi','Drogo','Fragrin','Periam','Riabo','Budoc','Merebo','Bem','Suppi','Merodo','Driagrin','Friabo','Sudo','Siarry',
'Meredoc','Ribo','Froibo','Siado','Fribo','Surry','Perodoc','Frubo','Dragrin','Meroido','Drubo','Bogrin','Rirry','Peroibo',
'Fridoc','Droigrin','Perum','Sarry','Perubo','Merago','Drarry','Berry','Perago','Soim','Meribo','Rugo','Dredoc','Suppi','Drum',
'Rigrin','Dragrin','Meredoc','Driado','Meram','Drabo',),

'MONSTER':(
"Bigslime","Bonerot","Darkbane","Darkmaw","Darkstomach","Fouldweller","Foulshade","Foulshadow","Ghostdrool",
"Giantclub","Greatscum","Greattongue","Irondrool","Madshade","Metalscum","Pukegouger","Screamjeer","Shademaw",
"Spineooze","Vomitbreaker","Aep'tshallelh","Bbhanorh","Catllliga","Eg'bhulaugtho","Eho-ggu","Hoacthuar","K'delak",
"Keghulhabotl","Kego-ughol","Mazh-stlzo","Ntulloskr-hac","Oithachat","Othiqudep","Otllama","Phameha","Phug-mmm",
"R'lolathua","Ra-ul","Rsakruaru","Sthabonakit","Ugotho","Ulleita","Yin'sammmone","Zhomarnygo","Zoth-abo","Chainmourn",
"Chantmoon","Cursechain","Darkmark","Darkstorm","Deadbeast","Deadbrood","Deathcairn","Deathscar","Direstalk",
"Dreadbone","Dreadfury","Dreadhaunter","Ebonmark","Ebonshade","Ebonspectre","Ebonspectre","Evilheart","Fardusk",
"Farhaunter","Fatemourner","Grimbone","Ironcrypt","Redcry","Wildkill","Blackbind","Coldspectre","Cursefury",
"Darkdusk","Deadrule","Devilspawn","Direbeast","Direcry","Dreaddusk","Dreadmoon","Dreadstalker","Dreamknife",
"Ebonscream","Evilspirit","Farrip","Farstrike","Fogkiller","Gloomscar","Griefshadow","Icegloom","Ironfog","Reddirge",
"Wildcairn","Wildmurk","Woeghast","Blackhowl","Blackspawn","Coldweeper","Cruelspawn","Cursefire","Darkchain",
"Darkhowl","Evilbind","Evilshade","Fatesoul","Fogpain","Gloomsoul","Grimsoul","Hellbrood","Hellgloom","Murkhand",
"Nightdoom","Plaguebrood","Plaguescream","Redrule","Scarfate","Shadowwoe","Sinspell","Steelbite","Wildshade",
"Aulko","Beth","Cargi","Doria","Durdela","Dutur","Eglinglaulk","Egori","Glrntug","Gweg","Haelutuglimman","Hangon","Indorca",
"Kaeturianglath","Kalitun","Kori","Laurchur","Moruit","Olonchan","Rgland","Sandetu","Shmatha","Valortha","Vandrorg",
"Vathmo","Shin-Chewer","Thrall-Taster","Helm-Hammer","Helm-Tenderizer","Knee-Eater","King-Stomper","Skull-Mangler",
"Neck-Chewer","Sword-Reaper","Knee-Chopper","Goat-Taker","Thrall-Taker","Spine-Chewer","Bone-Folder","Dog-Snapper",
"Man-Stalker","Arm-Tenderizer","Skin-Smasher","Head-Breaker","Tooth-Gnawer","Face-Tenderizer","Face-Chopper",
"Head-Stealer","Corpse-Crusher","Light-Tenderizer","Horn-Gnawer","Khelguzun","Binarakh","Barukgundil",
"Khelguluth","Barukloth","Mornigin","Rorthin","Bizardithil","Kelekzanik","Muzarduruk","Arzarath","Thukzizil",
"Ibiznizil","Khelednuz","Erekgundag","Nukulu","Innuzum","Guzibmoruk","Khimilagul","Ibinzukum","Izukgul","Ranmor",
"Kelekmud","Erekmormuk","Agazthidul","Guzibmormuk","Patchpale","Kilpad","Stalemuck","Foulor","Rotcloud",
"Sickpad","Gapclawer","Rotgnawer","Kirmcrawl","Frotheater","Palemuk","Rotas","Kokmuck","Rotstomach","Onegnawer",
"Kilcraw","Palecraw","Bitefury","Sickmaw","Quiverom","Goreph","Stalerott","Stalecrawler","Kilos",)}


--]]