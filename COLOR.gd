extends Node
var all
func _init():
	var green000 = ["#000000 Black","#010203 Rich black (FOGRA39)","#010B13 Rich black (FOGRA29)","#100C08 Smoky black","#16161D Eigengrau","#1B1811 Black chocolate","#1B1B1B Eerie black"]
	var green001 = []
	var green002 = ["#195905 Lincoln green"]
	var green003 = ["#006400 Dark green (X11)","#006600 Pakistan green"]
	var green004 = ["#008000 Green (web)","#009900 Islamic Green","#138808 India green"]
	var green005 = []
	var green006 = []
	var green007 = ["#00FF00 Lime (web) (X11 green)","#09F911 Free Speech Green"]
	var red00 = [green000,green001,green002,green003,green004,green005,green006,green007]
	var green010 = ["#321414 Seal Brown","#3A181A Rustic Red","#3C1414 Dark sienna","#3D0C02 Black bean"]
	var green011 = ["#35281E Cocoa Brown","#363E1D Turtle Green","#3C241B Brown Pod","#3D2B1F Bistre"]
	var green012 = ["#21421E Myrtle"]
	var green013 = []
	var green014 = ["#299617 Slimy green"]
	var green015 = ["#30B21A Yellow-green (Color Wheel)"]
	var green016 = []
	var green017 = ["#39FF14 Neon green","#3FFF00 Harlequin"]
	var red01 = [green010,green011,green012,green013,green014,green015,green016,green017]
	var green020 = ["#5D1F1E Red Oxide"]
	var green021 = ["#4F301F Indian Tan","#53331E Brown Bramble","#59260B Seal brown","#5C3317 Baker's Chocolate"]
	var green022 = ["#48531A Verdun Green"]
	var green023 = []
	var green024 = ["#568203 Avocado"]
	var green025 = ["#4CBB17 Kelly green"]
	var green026 = []
	var green027 = []
	var red02 = [green020,green021,green022,green023,green024,green025,green026,green027]
	var green030 = ["#65000B Rosewood","#660000 Blood red","#7   #3 Olive Drab","#701C1C Prune","#7B1113 UP maroon","#7C0A02 Barn red"]
	var green031 = ["#6C2E1F Liver (organ)","#733D1F Peru Tan","#7B3F00 Chocolate (traditional)"]
	var green032 = ["#644117 Pullman Brown (UPS Brown)","#665D1E Antique bronze","#6C461F Antique Brass","#6C541E Field drab","#704214 Sepia","#734A12 Raw Umber"]
	var green033 = []
	var green034 = []
	var green035 = ["#71A91D Christi"]
	var green036 = []
	var green037 = ["#66FF00 Bright green","#7CFC00 Lawn green","#7FFF00 Chartreuse (web)"]
	var red03 = [green030,green031,green032,green033,green034,green035,green036,green037]
	var green040 = ["#800000 Maroon (web)","#801818 Falu red","#841617 OU Crimson red","#8B0000 Dark red","#92000A Sangria","#960018 Carmine","#9B111E Ruby red"]
	var green041 = ["#882D17 Sienna"]
	var green042 = ["#80461B Russet","#87421F Fuzzy Wuzzy","#88540B Brown","#8B4513 Saddle brown"]
	var green043 = ["#967117 Sand dune","#996515 Golden brown"]
	var green044 = ["#808000 Olive"]
	var green045 = ["#8DB600 Apple green","#9FA91F Citron","#9FB70A Citrus"]
	var green046 = ["#8FD400 Sheen green"]
	var green047 = []
	var red04 = [green040,green041,green042,green043,green044,green045,green046,green047]
	var green050 = ["#A81C07 Rufous","#A91101 Rojo Spanish red","#B31B1B Cornell red","#BA160C International orange (engineering)"]
	var green051 = ["#AA381E Chinese red"]
	var green052 = ["#A75502 Windsor tan","#B7410E Rust"]
	var green053 = ["#A57C00 Gold"]
	var green054 = ["#AB9A1C Lucky","#B8860B Dark goldenrod","#BC9B1B Buddha Gold"]
	var green055 = ["#B0BF1A Acid green"]
	var green056 = ["#A9C01C Bahia","#B7C61A Rio Grande","#BAC00E La Rioja"]
	var green057 = ["#A7FC00 Spring bud","#B0E313 Inch Worm","#BFFF00 Lime (color wheel)"]
	var red05 = [green050,green051,green052,green053,green054,green055,green056,green057]
	var green060 = ["#C00000 Free Speech Red","#C80815 Venetian red","#D40000 Rosso corsa"]
	var green061 = ["#C93413 Harley Davidson Orange","#D9381E Vermilion"]
	var green062 = ["#C04000 Mahogany","#CB410B Sinopia","#CC5500 Burnt orange","#CD5700 Tenné (tawny)","#D44500 Syracuse Orange"]
	var green063 = ["#C46210 Alloy orange","#D2691E Cocoa brown"]
	var green064 = ["#DA9100 Harvest gold"]
	var green065 = ["#CCA01D Lemon curry"]
	var green066 = ["#D0C117 Bird Flower","#D2C61F Barberry","#DAC01A Sunflower"]
	var green067 = ["#CAE00D Bitter lemon","#CCFF00 Electric lime","#CEFF00 Volt","#D0FF14 Arctic lime","#DFFF00 Chartreuse Yellow"]
	var red06 = [green060,green061,green062,green063,green064,green065,green066,green067]
	var green070 = ["#FF0000 Red","#FF0800 Candy apple red"]
	var green071 = ["#FE2712 Red (RYB)","#FF2400 Scarlet","#FF3800 Coquelicot"]
	var green072 = ["#EC5800 Persimmon","#FF4500 Red-orange (Color wheel)","#FF4D00 Vermilion","#FF4F00 International orange (aerospace)","#FF5800 Orange (Pantone)"]
	var green073 = ["#E77200 Mango Tango","#E86100 Spanish orange","#FF6600 Safety Orange","#FF6700 Safety orange (blaze orange)","#FF681F Red-orange (Crayola)","#FF7518 Pumpkin","#FF7800 Safety orange","#FF7A00 Heat Wave","#FF7E00 Amber (SAE/ECE)","#FF7F00 Orange"]
	var green074 = ["#E48400 Fulvous","#E49B0F Gamboge","#F28500 Tangerine","#FF8C00 Dark orange","#FF9505 Yellow Orange (Color Wheel)","#FF9F00 Orange peel"]
	var green075 = ["#F5BD1F Orange-yellow","#FDBE02 Mango","#FFA000 Orange Peel","#FFA500 Orange (web)","#FFA700 Chrome yellow","#FFA812 Dark Tangerine","#FFAA1D Bright yellow (Crayola)","#FFB200 Chinese yellow","#FFBA00 Selective yellow","#FFBF00 Amber"]
	var green076 = ["#E4D00A Citrine","#EED202 Safety yellow","#EFCC00 Yellow (Munsell)","#F4CA16 Jonquil","#FCC200 Golden poppy","#FEDF00 Yellow (Pantone)","#FFC40C Mikado yellow","#FFCC00 Tangerine Yellow","#FFD300 Yellow (NCS)","#FFD700 Gold (web) (Golden)","#FFD800 School bus yellow","#FFDB00 Sizzling Sunrise","#FFDF00 Golden yellow"]
	var green077 = ["#EEE600 Titanium yellow","#EEED09 Xanthic","#FDE910 Lemon","#FDEE00 Aureolin","#FDFF00 Lemon glacier","#FFEB00 Middle yellow","#FFEF00 Yellow (process)","#FFF600 Cadmium yellow","#FFF700 Yellow Sunshine","#FFFF00 Yellow"]
	var red07 = [green070,green071,green072,green073,green074,green075,green076,green077]
	var blue0 = [red00,red01,red02,red03,red04,red05,red06,red07]
	var green100 = []
	var green101 = ["#013220 Dark green","#043927 Sacramento State green","#123524 Phthalo green","#193925 Deep Fir","#1A2421 Dark jungle green","#1B3427 Cardin Green","#1D393C Nordic","#1E272C Black Pearl","#1E2F3C Tangaroa"]
	var green102 = ["#004225 British racing green","#00563F Castleton green","#014421 UP Forest green","#165B31 Crusoe","#17462E Zuccini","#18453B MSU green","#19443C Deep Teal","#1B4636 Sherwood Green","#1B4B35 County Green","#1B4D3E English green"]
	var green103 = ["#006B3C Cadmium green","#00703C Dartmouth green","#15633D Fun Green"]
	var green104 = []
	var green105 = []
	var green106 = ["#03C03C Dark pastel green"]
	var green107 = []
	var red10 = [green100,green101,green102,green103,green104,green105,green106,green107]
	var green110 = ["#2E183B Blackcurrant","#301934 Dark purple"]
	var green111 = ["#20392C Palm Green","#21263A Midnight Express","#21303E Midnight","#232B2B Charleston green","#232E26 Black Bean","#232F2C Racing Green","#242124 Raisin black","#24252B Black Russian","#242A2E Cinder","#242E28 Midnight Moss","#252525 Nero","#252F2F Swamp","#25342B Holly","#262B2F Blue Charcoal","#28353A Oxford Blue","#29292F Jaguar","#292C2F Bunker","#29332B Gordons Green","#293432 Aztec","#2A2725 Bokara Grey","#2A2922 Maire","#2A2F23 Pine tree","#2a3439 Gunmetal","#2B2E25 Rangoon Green","#2B2E26 Marshland","#2B3230 Woodsmoke","#2B3F36 Celtic","#2C2A35 Haiti","#2C2C32 Bastille","#2C2D24 Green Waterloo","#2C2D3C Black Rock","#2C3227 Black Forest","#2C3539 Gunmetal","#2D2D24 Karaka","#2D2F28 Eternity","#2D3032 Cod Grey","#2D383A Outer space (Crayola)","#302621 Wood Bark","#312A29 Livid Brown","#313330 Oil","#313337 Ebony","#322C2B Diesel","#323438 Ebony Clay","#332C22 Black Magic","#332E2E Night Rider","#342931 Melanzane","#343434 Jet","#34363A Shark","#352235 Mardi Gras","#35312C Acadia","#353839 Onyx","#362D26 Coffee Bean","#36383C Vulcan","#372528 Aubergine","#373332 Gondola","#37363F Revolver","#382C38 Valentino","#383428 Graphite","#393227 Creole","#39392C El Paso","#393B3C Montana","#393D2A Green Kelp","#393E2E Log Cabin","#3A3532 Kilamanjaro","#3B2B2C Havana","#3B2E25 Sambuca","#3B2F2F Black coffee","#3B3C36 Black olive","#3B3C38 Zeus","#3C2126 Temptress","#3C2F23 Cola","#3C3B3C Fuscous Grey","#3C3D3E Baltic Sea","#3E2631 Toledo","#3F3623 Mikado","#3F3726 Birch","#3F3939 Eclipse"]
	var green112 = ["#234537 Burnham","#245336 Kaitoke Green","#254636 Bottle Green","#264334 Everglade","#274234 English Holly","#305D35 Parsley","#324336 Timber Green","#34533D Goblin","#354230 Kombu green","#355E3B Hunter green","#36482F Palm Leaf","#37412A Seaweed","#3A4531 Mallard","#3D4031 Scrub"]
	var green113 = ["#206937 Camarone","#2C6E31 San Felix","#2F7532 Japanese Laurel","#3E6334 Green House"]
	var green114 = ["#228B22 Forest green (web)","#3E8027 Bilbao"]
	var green115 = []
	var green116 = ["#32CD32 Lime green"]
	var green117 = []
	var red11 = [green110,green111,green112,green113,green114,green115,green116,green117]
	var green120 = ["#43182F Blackberry","#4C1C24 Bordeaux"]
	var green121 = ["#413628 Jacko Bean","#42342B Slugger","#43302E Old burgundy","#44232F Castro","#442D21 Morocco Brown","#44362D Tobago","#443736 Cowboy","#452E39 Barossa","#453430 Rebel","#45362B Dark Rum","#463430 Cedar","#463623 Clinker","#463629 Woodburn","#463D3E Jon","#473E23 Madras","#482427 Bulgarian Rose","#483C32 Taupe","#4A2E32 Cab Sav","#4B3621 Café noir","#4D3E3C Crater Brown","#4E2728 Volcano","#4E312D Espresso","#4F2A2C Heath","#4F3835 Cocoa Bean","#522426 Lonestar","#522C35 Wine Berry","#523936 Van Cleef","#532934 Black Rose","#543D37 Dark liver (horses)","#582124 Burnt Crimson","#582F2B Moccaccino","#592720 Caput mortuum","#5B342E Redwood","#5B3A24 Carnaby Tan","#5B3D27 Bracken","#5D3B2E Cioccolato","#5F2C2F Jazz"]
	var green122 = ["#434C28 Bronzetone","#444C38 Rifle green","#45402B Woodrush","#46473E Heavy Metal","#47562F Clover","#48412B Onion","#4A5D23 Dark moss green","#4B433B Space Shuttle","#4B5320 Army green","#4C4E31 Waiouru","#4D503C Kelp","#4F4037 Paco","#4F4D32 Camouflage","#51412D Deep Bronze","#534931 Punga","#544E31 Thatch Green","#544F3A Panda","#554A3C Metallic Bronze","#555B2C Saratoga","#584C25 Bronze Olive","#594537 Brown Derby","#5C4033 Very Dark Brown","#5C512F West Coast"]
	var green123 = ["#486531 Dell","#507D2A Sap green","#526B2D Green Leaf","#556B2F Dark olive green"]
	var green124 = ["#428929 La Palma","#5E8C31 Maximum green","#5F9228 Vida Loca","#5F9727 Limeade"]
	var green125 = []
	var green126 = []
	var green127 = []
	var red12 = [green120,green121,green122,green123,green124,green125,green126,green127]
	var green130 = ["#651C26 Pohutukawa","#66023C Tyrian purple","#701F28 Red Berry","#7F1734 Claret"]
	var green131 = ["#633528 Hairy Heath","#662A2C Red Devil","#683332 Persian Plum","#69293B Siren","#6B252C Monarch","#6C322E Kenyan Copper","#6C3736 Sanguine Brown","#6D3B24 New Amber","#6E2233 Claret","#6E3326 Pueblo","#6E3D34 Metallic Copper","#6F372D Mocha","#712F2C Auburn","#722F37 Wine","#73343A Merlot","#752B2F Tamarillo","#763C33 Crown Of Thorns","#782E2C Lusty","#7C2D37 Paprika","#7E2530 Scarlett"]
	var green132 = ["#62422B Irish Coffee","#625D2A Costa Del Sol","#654321 Dark brown","#664228 Van Dyke brown","#664A2D Dallas","#674834 Jambalaya","#6A4928 Cafe Royale","#6B4226 Semi-Sweet Chocolate","#6B4423 Kobicha","#6C4F3F Spice","#6D562C Horses Neck","#6F4E37 Tuscan brown","#73503B Old Copper","#745937 Shingle Fawn","#75442B Bull Shot","#75482F Cape Palliser","#77422C Copper Canyon","#784430 Cumin","#79443B Bole","#7A4434 Peanut","#7D4138 Red Robin","#7D4E38 Cigar","#7E4A3B Nutmeg"]
	var green133 = ["#62603E Verdigris","#636F22 Fiji Green","#667028 Rain Forest","#736330 Himalaya","#73633E Yellow Metal","#747028 Olivetone","#77712B Crete","#7A7229 Pesto"]
	var green134 = ["#6B8E23 Olive Drab","#7C9F2F Sushi","#7E8424 Trendy Green"]
	var green135 = ["#66B032 Green (RYB)","#7AAC21 Lima"]
	var green136 = []
	var green137 = []
	var red13 = [green130,green131,green132,green133,green134,green135,green136,green137]
	var green140 = ["#800020 Oxblood","#841B2D Antique ruby","#9E1B32 Crimson (UA)","#9F1D35 Vivid burgundy"]
	var green141 = ["#833D3E Stiletto","#842833 Shiraz","#853534 Tall Poppy","#86282E Flame Red","#87382F Crab Apple","#883C32 Prairie Sand","#8A3324 Burnt umber","#8A3335 Old Brick","#8E2323 Mandarian Orange","#8E3537 Well Read","#8F3F2A Fire","#922A31 Bright Red","#922B3E Red-violet (Color wheel)","#923830 Thunderbird","#952E31 Guardsman Red","#9B3D3D Mexican Red","#9D2933 Japanese carmine","#9E3332 Milano Red"]
	var green142 = ["#804E2C Korma","#815B28 Hot Curry","#864B36 Paarl","#87413F Brandy","#8D5F2C Rusty Nail","#8E593C Rope","#905E26 Afghan Tan","#954535 Chestnut","#954E2C Alert Tan","#95532F Chelsea Gem","#97422D Tia Maria","#97463C Mojo","#99522B Hawaiian Tan","#9A463D Cognac","#9C5B34 Indochine","#9D442D Rock Spray","#9D5432 Piper"]
	var green143 = ["#807532 Spanish bistre","#81613C Coyote brown","#826A21 Yukon Gold","#8C6338 McKenzie","#8D702A Corn Harvest","#9C7C38 Metallic Sunburst","#9D702E Buttered Rum"]
	var green144 = ["#849137 Wasabi","#8E9A21 Citron","#928C3C Highball","#968428 Lemon Ginger","#9E8022 Hacienda"]
	var green145 = ["#89AC27 Limerick"]
	var green146 = ["#9ACD32 Yellow-green","#9CD03B Atlantis"]
	var green147 = ["#87FF2A Spring Frost","#9EFD38 French lime"]
	var red14 = [green140,green141,green142,green143,green144,green145,green146,green147]
	var green150 = ["#A50021 University of Pennsylvania red"]
	var green151 = ["#A52A2A Brown","#A83731 Sweet Brown","#AE2029 Upsdell red","#B22222 Firebrick"]
	var green152 = ["#A0522D Sienna","#A15226 Rich Gold","#A15F3B Desert","#A85335 Orange Roughy","#A85533 Vesuvius","#AC512D Rose Of Sharon","#AD522E Red Stage","#AF4035 Medium carmine","#B1592F Fiery Orange","#BB5F34 Smoke Tree"]
	var green153 = ["#A56531 Mai Tai","#A7752C Hot Toddy","#AF6C3E Bourbon","#B26E33 Reno Sand","#B57B2E Mandalay","#B86D29 Liver (dogs)","#B87333 Copper","#BA782A Pirate Gold","#BB7431 Meteor","#BF652E Christine"]
	var green154 = ["#A98D36 Reef Gold","#AB8D3F Luxor Gold","#AD8A3B Alpine","#B79826 Sahara","#B88A3D Marigold","#BB8E34 Hokey Pokey","#BC9229 Nugget","#BF8D3C Pizza"]
	var green155 = ["#B8A722 Earls Green"]
	var green156 = ["#A4C639 Android green"]
	var green157 = ["#A7F432 Green Lizard","#ADFF2F Green-yellow"]
	var red15 = [green150,green151,green152,green153,green154,green155,green156,green157]
	var green160 = ["#C40233 Red (NCS)","#C41E3A Cardinal","#CE1620 Fire Engine Red","#CF1020 Lava","#DC143C Crimson"]
	var green161 = ["#C0362C International orange (Golden Gate Bridge)","#CA3435 Mahogany","#CC3333 Persian red","#CC3336 Madder Lake","#CE2029 Fire engine red","#D3212D Amaranth red","#D92121 Maximum red"]
	var green162 = ["#C14D36 Grenadier","#C54F33 Trinidad","#D05E34 Chilean Fire"]
	var green163 = ["#C6723B Zest","#C96138 Ecstasy","#CC7722 Ochre","#CD7F32 Bronze","#D46F31 Tango","#D56C30 Gold Drop","#DC722A Tahiti Gold","#DD6B38 Sorbus"]
	var green164 = ["#C5832E Geebung","#C68E3F Anzac","#CA8136 Golden Bell","#CD8431 Dixie","#CD853F Peru","#D19033 Fuel Yellow","#DA9429 Buttercup"]
	var green165 = ["#CBA135 Satin sheen gold","#CFB53B Old gold","#D3AF37 Metallic gold","#D4AF37 Metallic Gold","#D8A723 Galliano","#DAA520 Goldenrod"]
	var green166 = ["#C2D62E Fuego","#C6DA36 Las Palmas","#D2DB32 Bitter Lemon","#D6CA3D Wattle"]
	var green167 = ["#D1E231 Pear"]
	var red16 = [green160,green161,green162,green163,green164,green165,green166,green167]
	var green170 = ["#E2062C Medium candy apple red","#E30022 Cadmium red","#E60026 Spanish red","#ED1C24 Red (pigment)","#F2003C Red (Munsell)","#FD0E35 Torch Red"]
	var green171 = ["#E03C31 CG red","#E12C2C Permanent Geranium Lake","#E23D28 Chocolate Cosmos","#E32636 Rose madder","#ED2939 Red (Pantone)","#FF3F34 Red Orange"]
	var green172 = ["#E25822 Flame","#E34234 Vermilion","#FA5B3D Orange soda","#FF5A36 Portland Orange"]
	var green173 = ["#E57F3D Pizazz","#FF6037 Outrageous Orange","#FF7034 Burnt Orange","#FF7538 Orange (Crayola)"]
	var green174 = ["#E2813B Tree Poppy","#E5823A West Side","#E98C3A California","#ED872D Cadmium orange","#ED9121 Carrot orange","#EF8E38 Sun","#F49F35 Yellow Sea","#F58025 Princeton orange","#FF9933 Neon Carrot"]
	var green175 = ["#E2B227 Gold Tips","#E3AC3D Tulip Tree","#EAA221 Marigold","#ECBD2C Bright Sun","#F7A233 Lightning Yellow","#FFB437 Supernova"]
	var green176 = ["#E3DD39 Starship","#EBDE31 Golden Fizz","#EECC24 Broom","#F0C420 Moon Yellow","#F1CC2B Golden Dream","#F4C430 Saffron","#F5CC23 Turbo","#FFCC33 Sunglow"]
	var green177 = ["#FAFA37 Maximum yellow","#FDE336 Gorse","#FEFE33 Yellow (RYB)"]
	var red17 = [green170,green171,green172,green173,green174,green175,green176,green177]
	var blue1 = [red10,red11,red12,red13,red14,red15,red16,red17]
	var green200 = []
	var green201 = ["#002147 Oxford blue","#003153 Prussian blue","#1D2951 Space cadet","#1E3442 Blue Whale"]
	var green202 = ["#004040 Rich black","#004242 Warm black","#00494E Sherpa Blue","#004953 Midnight green (eagle green)","#004B49 Deep jungle green","#005F5B Mosque","#064E40 Blue-green (color wheel)","#0F4645 Cyprus","#184343 Tiber"]
	var green203 = ["#006A4E Bottle green","#006E4E Watercourse","#00755E Tropical rainforest","#007F5C Spanish viridian","#136843 Jewel","#177245 Dark spring green","#177B4D Salem"]
	var green204 = ["#009150 Spanish green"]
	var green205 = ["#00A550 Pigment Green","#00AD43 Green (Pantone)"]
	var green206 = ["#0BDA51 Malachite"]
	var green207 = ["#00FF40 Erin"]
	var red20 = [green200,green201,green202,green203,green204,green205,green206,green207]
	var green210 = ["#32174D Russian violet"]
	var green211 = ["#203F58 Regal Blue","#243640 Elephant","#253C48 Tarawera","#253F4E Nile Blue","#273C5A Catalina Blue","#292D4F Lucky Point","#2A2551 Paua","#2A2B41 Valhalla","#2B3449 Bunting","#2D2541 Tolopea","#2D3C54 Madison","#2E2249 Violent Violet","#2E3749 Licorice","#2F3C53 Biscay","#343F5C Gulf Blue","#353E4F Cloud Burst","#372D52 Cherry Pie","#373E41 Mine Shaft","#373F43 Mirage","#383740 Black Marlin","#3C3748 Martinique","#3D325D Jacarta","#3F2E4C Jagger"]
	var green212 = ["#214559 Astronaut Blue","#23414E Green Vogue","#254855 Teal Blue","#274A5D Arapawa","#2B4B40 Te Papa Green","#2C4641 Gable Green","#2F4F4F Dark Slate Grey","#314643 Firefly","#334046 Big Stone","#35514F Blue Dianne","#36454F Charcoal","#375D4F Spectra","#394043 Charade","#395555 Oracle","#3A4E5F Cello","#3B444B Arsenic","#3C4354 Blue Zodiac","#3D4653 Rhino","#3D4B52 Atomic","#3E594C Plantation","#3F545A Casal"]
	var green213 = ["#26604F Evening Sea","#266242 Green Pea","#266255 Eden","#387B54 Amazon","#3B7A57 Amazon"]
	var green214 = ["#2E8B57 Sea green"]
	var green215 = []
	var green216 = []
	var green217 = []
	var red21 = [green210,green211,green212,green213,green214,green215,green216,green217]
	var green220 = []
	var green221 = ["#413D4B Grape","#443240 Voodoo","#4A2D57 Scarlet Gum","#4C3347 Loulou","#4C3D4E Bossanova","#4E2E53 Hot Purple","#563C5C English violet","#5B3256 Japanese violet","#5D3954 Dark byzantium"]
	var green222 = ["#404048 Payne's Grey","#404D49 Corduroy","#43464B Steel Grey","#454642 Tuatara","#464646 Charcoal","#46494E Tuna","#465352 Dark Slate","#465945 Grey-Asparagus","#484753 Gun Powder","#484A46 Armadillo","#4A4B46 Gravel","#4B5F56 Viridian Green","#4C5356 Trout","#4C5544 Cabbage Pont","#4D4D4B Thunder","#4D5D53 Feldgrau","#4E4E4C Ship Grey","#4E5541 Lunar Green","#4E5552 Cape Cod","#4E5D4E Nandor","#4F4E48 Merlin","#50404D Purple Taupe","#50494A Emperor","#505555 Mako","#514F4A Dune","#51574F Battleship Grey","#524B4B Matterhorn","#524D5B Mulled Wine","#534B4F Liver","#554545 Woody Brown","#554D42 Mondo","#555555 Davy's grey","#555D50 Ebony","#565051 Mortar","#57534B Masala","#57595D Bright Grey","#585452 Tundora","#595648 Millbrook","#5A4C42 Cork","#5A4D41 Rock","#5A4F51 Don Juan","#5B5D56 Chicago","#5D4E46 Saddle","#5D5346 Judge Grey"]
	var green223 = ["#406356 Stromboli","#49764F Killarney","#4C785C Como","#4F6348 Tom Thumb","#4F7942 Fern green","#506355 Mineral Green","#5A6E41 Chalet Green","#5B6F55 Cactus"]
	var green224 = ["#419F59 Chateau Green","#4C9141 May green","#4D8C57 Middle green","#5F8151 Glade Green"]
	var green225 = ["#4BA351 Fruit Salad"]
	var green226 = []
	var green227 = []
	var red22 = [green220,green221,green222,green223,green224,green225,green226,green227]
	var green230 = ["#6A1F44 Pompadour","#78184A Pansy purple"]
	var green231 = ["#643A48 Tawny Port","#673147 Wine dregs","#703642 Catawba","#7A2E4D Flirt"]
	var green232 = ["#614051 Eggplant","#635147 Umber","#654D49 Congo Brown","#674846 Rose ebony","#674C47 Liver","#694554 Finn","#695F50 Makara","#6A5445 Quincy","#6B5A5A Zambezi","#6C5B4C Domino","#6C5E53 Kabul","#6D5843 Tobacco Brown","#6E5150 Buccaneer","#6E5A5B Falcon","#6E5F56 Dorado","#744042 Tosca","#7C4848 Tuscan red"]
	var green233 = ["#607C47 Dingley","#61755B Finlandia","#626746 Woodland","#63775A Axolotl","#65645F Storm Dust","#686B50 Siam","#69684B Hemlock","#69755C Willow Grove","#6F634B Soya Bean","#706950 Crocodile","#726751 Coffee","#756556 Pine Cone","#75785A Finch","#766D52 Peat","#786D5F Sandstone","#786E4C Go Ben","#7A715C Pablo","#7B785A Kokoda","#7D655C Russett","#7D6757 Roman Coffee"]
	var green234 = ["#608A5A Hippie Green"]
	var green235 = ["#66B348 Apple","#7BA05B Asparagus"]
	var green236 = ["#7FC15C Mantis"]
	var green237 = []
	var red23 = [green230,green231,green232,green233,green234,green235,green236,green237]
	var green240 = []
	var green241 = ["#803A4B Camelot","#892D4F Disco","#893843 Solid pink","#893F45 Cordovan","#8A2D52 Rose Bud Cherry","#8E3A59 Quinacridone magenta","#962C54 Lipstick","#9C2542 Big dip o'ruby"]
	var green242 = ["#845C40 Potters Clay","#85494C Solid Pink","#855E42 Dark Wood","#865040 Ironstone","#884F40 Mule Fawn","#8B504B Lotus","#8B5F4D Spicy Mix","#8E4D45 Matrix","#8F4E45 El Salva","#905D5D Rose taupe","#95524C Copper Rust","#9E5B40 Sepia"]
	var green243 = ["#816E5C Donkey Brown","#826644 Raw umber","#837050 Shadow","#856D4D French bistre","#857158 Cement","#85754E Gold Fusion","#897E59 Clay Creek","#8A795D Shadow","#906A54 Leather","#926F5B Beaver","#97694F Dark Tan","#987456 Liver chestnut","#987654 Pale Brown","#9E6759 Au Chico","#9E7E53 Muesli","#9F715F Toast"]
	var green244 = ["#8A9A5B Turtle green"]
	var green245 = ["#88A95B Chelsea Cucumber"]
	var green246 = []
	var green247 = []
	var red24 = [green240,green241,green242,green243,green244,green245,green246,green247]
	var green250 = ["#A50B5E Jazzberry jam"]
	var green251 = ["#A23D54 Night Shadz","#AB274F Amaranth purple"]
	var green252 = ["#A14743 Roof Terracotta","#A45A52 Redwood","#A55353 Middle red purple","#A65648 Crail","#A95249 Apple Blossom","#AB495C Hippie Pink","#AB4B52 English red","#AB4E52 Rose vale","#B94E48 Deep chestnut","#BE5C48 Flame Pea","#BF4F51 Bittersweet shimmer"]
	var green253 = ["#A67B5B Tuscan tan","#A96A50 Sante Fe","#AD6242 Tuscany","#AF6E4D Brown sugar"]
	var green254 = ["#A9844F Muddy Waters","#AB8953 Teak","#AE9041 Turmeric","#B2994B Husk","#B6935C Barley Corn","#B69642 Roti","#BF914B Tussock"]
	var green255 = ["#B5A642 Brass","#B5B35C Olive green"]
	var green256 = ["#B1DD52 Conifer","#B4C04C Celery","#BDDA57 June bud"]
	var green257 = ["#B2EC5D Inchworm"]
	var red25 = [green250,green251,green252,green253,green254,green255,green256,green257]
	var green260 = ["#C21E56 Rose red","#C30B4E Pictorial carmine","#D10047 Spanish carmine","#D10056 Rubine red","#D70040 Carmine (M&P)","#D9004C UA red"]
	var green261 = ["#C02E4C Old Rose","#C32148 Maroon (Crayola)","#C62D42 Brick Red","#C72C48 French raspberry","#DA2C43 Rusty red"]
	var green262 = ["#C0514A Sunset","#C45655 Fuzzy Wuzzy Brown","#C95A49 Cedar Chest","#CB4154 Brick red","#CC474B English vermillion","#CD525B Mandy","#CD5B45 Dark Coral","#CD5C5C Indian red","#D4574E Valencia"]
	var green263 = ["#C07C40 Brandy Punch","#C76155 Sunglo","#CB6D51 Copper red","#CB6F4A Red Damask","#CE7259 Japonica","#D27D46 Raw Sienna","#D8625B Roman"]
	var green264 = ["#C19156 Twine","#D4915D Whiskey Sour","#D68A59 Raw sienna","#D99058 Persian orange","#DF9D5B Porsche"]
	var green265 = ["#C4AA4D Sundance","#C5B358 Vegas gold","#C6A95E Laser","#D3A95C Apache","#DDAD56 Rob Roy"]
	var green266 = ["#DDCB46 Confetti"]
	var green267 = ["#D9E650 Maximum green yellow"]
	var red26 = [green260,green261,green262,green263,green264,green265,green266,green267]
	var green270 = ["#E0115F Ruby","#E30B5C Razzmatazz","#E30B5D Raspberry"]
	var green271 = ["#E52B50 Amaranth","#EE204D Red (Crayola)","#FD3A4A Red Salsa","#FF355E Radical Red","#FF3855 Sizzling Red"]
	var green272 = ["#E95C4B Fire opal","#FB4D46 Tart Orange","#FE4C40 Sunset Orange","#FF4040 Coral Red","#FF5349 Red-orange"]
	var green273 = ["#E1634F Flamingo","#E2725B Terra cotta","#E27945 Jaffa","#E97451 Burnt sienna","#F37A48 Mandarin","#FE6F5E Bittersweet","#FF6347 Tomato","#FF6E4A Outrageous Orange","#FF7F50 Coral"]
	var green274 = ["#E09842 Fire Bush","#EA8645 Flamenco","#EF9548 Sea Buckthorn","#F38653 Crusta","#FA9D49 Sunshade","#FF8243 Mango Tango"]
	var green275 = ["#E1A95F Earth yellow","#E3A857 Indian yellow","#E3AB57 Sunray","#EAB852 Ronchi","#F0B253 Casablanca","#F2BA49 Maximum yellow red","#FCB057 Texas Rose","#FDAE45 My Sin","#FEB552 Koromiko","#FFA343 Neon Carrot","#FFAE42 Yellow Orange"]
	var green276 = ["#E4DB55 Manz","#EACC4A Festival","#EEC051 Cream Can","#F0D555 Portica","#F2C649 Maize (Crayola)","#F5D752 Energy Yellow","#F9D054 Kournikova","#FADA5E Stil de grain yellow","#FED85D Dandelion","#FFC152 Golden Tainoi","#FFDB58 Mustard"]
	var green277 = ["#F5E050 Minion yellow","#FBEB50 Paris Daisy","#FBEC5D Maize","#FCF75E Icterine","#FFF44F Lemon yellow"]
	var red27 = [green270,green271,green272,green273,green274,green275,green276,green277]
	var blue2 = [red20,red21,red22,red23,red24,red25,red26,red27]
	var green300 = ["#191970 Midnight blue"]
	var green301 = ["#002366 Royal blue (dark)","#003366 Prussian Blue","#00356B Yale Blue","#082567 Sapphire"]
	var green302 = ["#00416A Indigo dye","#08457E Dark Cerulean"]
	var green303 = ["#00626F Blue Lagoon","#007474 Skobeloff","#007B77 Surfie Green","#007F66 Generic viridian","#01796F Pine green","#166461 Blue Stone","#167E65 Deep Sea","#1F6A7D Allports"]
	var green304 = ["#008F70 Observatory","#009966 Green-cyan","#009B7D Paolo Veronese green","#009E60 Shamrock green","#009F6B Green (NCS)","#029D74 Free Speech Aquamarine","#1B8A6B Elf Green"]
	var green305 = ["#00A86B Jade","#00A877 Green (Munsell)","#00AB66 GO green","#1CAC78 Green (Crayola)"]
	var green306 = []
	var green307 = ["#00FF7F Spring green"]
	var red30 = [green300,green301,green302,green303,green304,green305,green306,green307]
	var green310 = ["#3) #6B Olive Drab (","#32127A Persian indigo"]
	var green311 = ["#23297A St. Patrick's blue","#312760 Paris M","#323F75 Resolution Blue","#343467 Deep Koamaru","#353D75 Torea Bay","#353E64 Bay Of Many","#382161 Christalle","#3D3F7D Jacksons Purple","#3E3267 Minsk"]
	var green312 = ["#25597F Bahama Blue","#255B77 Orient","#2C5778 Venice Blue","#2C5971 Chathams Blue","#305C71 Blumine","#365C7D Matisse","#3B436C Port Gore"]
	var green313 = ["#297B76 Elm","#2B797A Atoll","#317873 Myrtle green","#31796D Genoa","#36747D Ming"]
	var green314 = ["#2F847C Celadon green","#319177 Illuminating emerald","#329760 Eucalyptus"]
	var green315 = ["#3CB371 Medium sea green"]
	var green316 = []
	var green317 = []
	var red31 = [green310,green311,green312,green313,green314,green315,green316,green317]
	var green320 = ["#4D1A7F Blue-violet (color wheel)"]
	var green321 = ["#462C77 Windsor","#4A3B6A Meteorite","#4B2D72 Blue Diamond","#5C3C6D Honey Flower"]
	var green322 = ["#42426F Corn Flower Blue","#445172 Astronaut","#445761 San Juan","#47526E East Bay","#475877 Chambray","#4B5A62 Fiord","#4C516D Independence","#58427C Cyber grape"]
	var green323 = ["#407577 Ming","#486C7A Bismark","#496267 Smalt Blue","#496569 Tax Break","#49796B Hooker's green","#4A646C Deep Space Sparkle","#4A766E Dark Green Copper","#517B78 Breaker Bay","#536872 Cadet","#536878 Payne's grey","#53736F William","#54626F Black coral","#556061 River Bed"]
	var green324 = ["#40826D Viridian","#56887D Wintergreen Dream","#5C8173 Cutty Sark"]
	var green325 = ["#4CA973 Ocean Green","#5FA777 Forest green (Crayola)","#5FA778 Shiny Shamrock"]
	var green326 = ["#50C878 Paris Green"]
	var green327 = []
	var red32 = [green320,green321,green322,green323,green324,green325,green326,green327]
	var green330 = []
	var green331 = ["#682860 Palatinate purple","#69326E Seance","#6E3974 Eminence","#702670 Midnight","#702963 Byzantium"]
	var green332 = ["#605A67 Mobster","#605D6B Smoky","#625665 Fedora","#794D60 Cosmic","#7E5E60 Deep taupe"]
	var green333 = ["#61666B Shuttle Grey","#62777E Blue Bayoux","#636373 Comet","#636D70 Pale Sky","#666A6D Mid Grey","#666F6F Nevada","#676767 Granite gray","#68766E Sirocco","#696268 Salt Box","#696969 Dim gray","#6A6466 Scorpion","#6A6873 Dolphin","#6B6A6C Scarpa Flow","#6D7876 Rolling Stone","#6F747B Raven","#706E66 Ironside Grey","#716675 Rum","#716E61 Flint","#727472 Nickel","#757575 Sonic silver","#766D7C Mamba","#777672 Dove Grey","#796878 Old lavender","#7A7679 Monsoon","#7A7C76 Gunsmoke","#7C7173 Empress","#7C7C72 Tapa"]
	var green334 = ["#679267 Russian green","#6D9A78 Oxley","#6E8D71 Laurel","#738678 Xanadu","#75876E Xanadu","#78857A Blue Smoke","#78866B Camouflage Green","#788878 Davy's Grey","#7A9461 Highland","#7B8976 Spanish Green","#7C817C Boulder","#7D9D72 Amulet"]
	var green335 = ["#63B76C Fern","#7BB661 Bud green"]
	var green336 = ["#74C365 Mantis","#77DD77 Pastel Green"]
	var green337 = ["#66FF66 Screamin' Green"]
	var red33 = [green330,green331,green332,green333,green334,green335,green336,green337]
	var green340 = ["#871F78 Dark Purple","#990066 Eggplant"]
	var green341 = ["#963D7F Violet (crayola)","#9F2B68 Amaranth (M&P)"]
	var green342 = ["#8A496B Twilight lavender","#8E5164 Cannon Pink","#914E75 Sugar Plum","#915F6D Raspberry glace","#955264 Vin Rouge","#984961 Cadillac","#9E5E6F Rose Dust","#9F4576 Magenta haze"]
	var green343 = ["#807661 Stonewall","#826663 Pharlap","#827A67 Arrowtown","#827F79 Concord","#856363 Light Wood","#867665 Sand Dune","#876A68 Ferra","#8A7D72 Americano","#8B7E77 Hurricane","#8F7777 Bazaar","#8F7D6B Squirrel","#986960 Dark Chestnut","#987D73 Hemp","#987E7E Opium","#996666 Copper rose","#9D7F61 Sorrell Brown"]
	var green344 = ["#86837A Friar Grey","#878466 Bandicoot","#87876F Schist","#888064 Olive Haze","#88896C Bitter","#8B8265 Granite Green","#8D8478 Schooner","#8F9779 Artichoke","#948C7E Heathered Grey","#95986B Avocado","#97976F Malachite Green","#98817B Cinereous","#989171 Gurkha","#989F7A Sage","#9A8678 Almond Frost","#9C8D72 Pale Oyster","#9F8170 Beaver"]
	var green345 = ["#87A96B Asparagus","#9AB973 Olivine","#9CA664 Green Smoke"]
	var green346 = ["#93C572 Pistachio"]
	var green347 = []
	var red34 = [green340,green341,green342,green343,green344,green345,green346,green347]
	var green350 = ["#A2006D Flirt"]
	var green351 = ["#A63A79 Maximum red purple","#B03060 Maroon (X11)"]
	var green352 = ["#A8516E China rose","#A94064 Rouge","#AD4379 Mystic maroon","#B3446C Raspberry rose","#B54B73 Royal Heath","#B55067 Blush","#BE4F62 Popstar"]
	var green353 = ["#A17A74 Burnished brown","#A56E75 Turkish Rose","#A57164 Blast-off bronze","#AB6E67 Coral Tree","#AD6F69 Copper penny"]
	var green354 = ["#A19A7F Grey Olive","#A3876A Sandal","#A39977 Tallow","#A58B6F Mongoose","#A68064 Medium Wood","#AF937D Sandrift","#B6857A Brandy Rose","#BC987E Pale Taupe"]
	var green355 = ["#A7A07E Hillary","#ACBF60 Middle green yellow","#B9AD61 Gimblet","#BBB477 Misty moss","#BDB76B Dark khaki"]
	var green356 = ["#BDC07E Pine Glade","#BECA60 Wild Willow"]
	var green357 = []
	var red35 = [green350,green351,green352,green353,green354,green355,green356,green357]
	var green360 = ["#CA1F7B Magenta (dye)","#D71868 Dogwood rose"]
	var green361 = ["#CC397B Fuchsia purple","#CF3476 Telemagenta","#DE3163 Cerise"]
	var green362 = ["#C74375 Fuchsia rose","#CD526C Cabaret","#CE4676 Ruber","#D0417E Magenta (Pantone)","#DB5079 Cranberry"]
	var green363 = ["#C16F68 Contessa","#CD607E Cinnamon Satin"]
	var green364 = ["#C19A6B Wood brown","#CD9575 Antique brass","#D08363 Burning Sand","#D19275 Feldspar","#D29062 Whiskey","#D7837F New York pink","#D99A6C Tan (Crayola)","#DA8A67 Copper (Crayola)","#DB817E Sea Pink","#DD8374 New York Pink"]
	var green365 = ["#C8AD7F Light French beige","#CDAE70 Putty","#D2B960 Tacha","#DAB160 Equator"]
	var green366 = ["#DBDB70 Goldenrod","#DEC371 Chenin"]
	var green367 = ["#DAEA6F Mindaro"]
	var red36 = [green360,green361,green362,green363,green364,green365,green366,green367]
	var green370 = ["#E40078 Red-purple","#E4007C Mexican pink","#FF007C Winter Sky","#FF007F Rose"]
	var green371 = ["#E3256B Razzmatazz","#E63E62 Paradise pink"]
	var green372 = ["#FD5B78 Wild Watermelon","#FE4164 Neon fuchsia","#FF5470 Fiery rose"]
	var green373 = ["#E4717A Tango pink","#E56D75 Froly","#E77B75 Geraldine","#FB607F Brink pink"]
	var green374 = ["#E58E73 Middle red","#E9967A Dark salmon","#F88379 Tea rose","#FA8072 Salmon","#FF9966 Atomic tangerine"]
	var green375 = ["#E5AA70 Fawn","#EAB76A Harvest Gold","#ECB176 Middle yellow red","#F4A460 Sandy brown","#F6AE78 Tacao","#F8B878 Mellow apricot","#FBAB60 Rajah","#FCAE60 Rajah","#FDA470 Hit Pink","#FFA07A Light salmon","#FFB97B Macaroni And Cheese"]
	var green376 = ["#E3D474 Wild Rice","#E4D96F Straw","#E9D66B Hansa yellow","#EACE6A Golden Sand","#F8D568 Orange-yellow (Crayola)","#F8DE7E Mellow yellow","#F9D77E Golden Glow","#FFC878 Chardonnay","#FFCD73 Grandis","#FFD67B Salomie"]
	var green377 = ["#E8ED69 Honeysuckle","#ECE67E Texas","#F5F171 Dolly","#F9E176 Sweet Corn","#FBF073 Witch Haze","#FFFF66 Unmellow yellow"]
	var red37 = [green370,green371,green372,green373,green374,green375,green376,green377]
	var blue3 = [red30,red31,red32,red33,red34,red35,red36,red37]
	var green400 = ["#000080 Navy blue","#00008B Dark Blue","#00009C New Midnight Blue","#000F89 Phthalo blue","#120A8F Ultramarine"]
	var green401 = ["#002387 Resolution blue","#003399 Smalt"]
	var green402 = ["#004F98 USAFA blue"]
	var green403 = ["#0A7E8C Metallic Seaweed","#126180 Blue sapphire"]
	var green404 = ["#008080 Teal","#00879F Eastern Blue","#008B8B Dark cyan","#009698 Viridian green"]
	var green405 = ["#00A693 Persian green","#1AB385 Mountain Meadow"]
	var green406 = ["#00CC99 Caribbean Green"]
	var green407 = ["#00FA9A Medium spring green"]
	var red40 = [green400,green401,green402,green403,green404,green405,green406,green407]
	var green410 = []
	var green411 = ["#2E2787 Picotee blue","#2E2D88 Cosmic cobalt","#333399 Blue (pigment)"]
	var green412 = ["#26428B Dark cornflower blue","#29598B Endeavour","#2E5090 YInMn Blue","#2E5894 B'dazzled blue","#325482 St Tropaz","#335083 Fun Blue","#374E88 Tory Blue"]
	var green413 = ["#26619C Lapis lazuli","#367588 Teal blue","#376F89 Astral","#3D7188 Calypso"]
	var green414 = ["#259797 Java","#399F86 Gossamer"]
	var green415 = ["#29A98B Niagara","#29AB87 Jungle green","#30BA8F Mountain Meadow","#39A78E Zomp","#3AB09E Keppel","#3EB489 Mint"]
	var green416 = ["#33CC99 Shamrock"]
	var green417 = []
	var red41 = [green410,green411,green412,green413,green414,green415,green416,green417]
	var green420 = ["#4B0082 Indigo"]
	var green421 = ["#483D8B Dark Slate Blue","#4B3C8E Blue Gem","#4C2882 Spanish violet","#512888 KSU purple","#583580 Kingfisher Daisy","#5B3E90 Daisy Bush"]
	var green422 = ["#4E5180 Purple navy","#51559B Governor Bay","#564786 Gigas","#564985 Victoria"]
	var green423 = ["#42639F Mariner","#436B95 Queen blue","#44798E Jelly Bean","#4C6B88 Wedgewood","#4E6C9D San Marino","#576D8E Kashmir Blue","#5B6E91 Waikawa Grey"]
	var green424 = ["#408F90 Blue Chill","#488084 Paradiso","#489084 Lochinvar","#49889A Hippie Blue","#558F93 Half Baked","#5F8A8B Steel Teal"]
	var green425 = ["#48BF91 Ocean green","#5DA493 Polished Pine","#5FB69C Keppel"]
	var green426 = []
	var green427 = []
	var red42 = [green420,green421,green422,green423,green424,green425,green426,green427]
	var green430 = []
	var green431 = ["#663399 Rebecca Purple","#6C3082 Eminence","#733380 Maximum purple"]
	var green432 = ["#68578C Butterfly Bush","#695D87 Kimberly","#745085 Affair"]
	var green433 = ["#647D86 Hoki","#666699 Dark blue-gray","#697D89 Lynch","#747880 Storm Grey","#777696 Rhythm"]
	var green434 = ["#639283 Patina","#648894 Horizon","#698890 Gothic","#6F8C9F Bermuda Grey","#708090 Slate Grey","#718F8A Gumbo","#74918E Juniper","#778899 Light Slate Grey","#798488 Regent Grey","#7B948C Granny Smith"]
	var green435 = ["#67BE90 Silver Tree","#75AA94 Acapulco","#7BB18D Bay Leaf","#7EB394 Padua"]
	var green436 = []
	var green437 = []
	var red43 = [green430,green431,green432,green433,green434,green435,green436,green437]
	var green440 = ["#800080 Purple (web)","#880085 Mardi Gras","#8B008B Dark magenta"]
	var green441 = ["#803790 Vivid Violet"]
	var green442 = ["#805D80 Trendy Pink","#8D4E85 Razzmic Berry","#8E4585 Plum","#915C83 Antique fuchsia","#9F5F9F Violet Blue"]
	var green443 = ["#817C87 Topaz","#856088 Chinese violet","#86608E Pomp and Power","#8A7F80 Rocket metallic","#8B7D82 Venus","#946A81 Strikemaster","#997A8D Mountbatten pink"]
	var green444 = ["#808080 Grey","#818988 Oslo Grey","#838996 Roman silver","#848482 Old silver","#848789 Aluminium","#858885 Stack","#878785 Jumbo","#8B8589 Taupe Grey","#8B8680 Middle grey","#8B8685 Suva Grey","#8C9C9C Submarine","#95879C Amethyst Smoke","#989898 Spanish gray","#999A86 Lemon Grass","#999B95 Delta","#9F9B9D Shady Lady","#9F9D91 Dawn"]
	var green445 = ["#8BA58F Envy","#8DA399 Morning blue","#8FB69C Summer Green","#8FBC8F Dark sea green","#91A092 Pewter","#96A793 Mantle","#97A49A Edward"]
	var green446 = ["#85CA87 De York","#9FD385 Gossip"]
	var green447 = ["#90EE90 Light green","#98FB98 Pale Green","#98FF98 Mint green","#9DE093 Granny Smith Apple"]
	var red44 = [green440,green441,green442,green443,green444,green445,green446,green447]
	var green450 = []
	var green451 = ["#B53389 Fandango","#BB3385 Medium Red Violet"]
	var green452 = []
	var green453 = ["#B37084 Tapestry"]
	var green454 = ["#A09F9C Mountain Mist","#A19986 Nomad","#A29589 Zorba","#A39A87 Napa","#A59784 Malta","#A78199 Bouquet","#A79781 Bronco","#A99A86 Grullo","#A99D9D Nobel","#AC9B9B Dusty Grey","#B1948F Thatch","#B48395 English lavender","#B5998E Del Rio","#BC8F8F Rosy brown"]
	var green455 = ["#A0A197 Star Dust","#A2A580 Locust","#A3BD9C Spring Rain","#A4B88F Norway","#A5A88F Bud","#A7A69D Foggy Grey","#A9AF99 Green Spring","#A9BA9D Laurel green","#AAA583 Neutral Green","#B0A99F Cloudy","#B0AC94 Eagle","#B5AC94 Bison Hide","#B8AD8A Chino","#BAAB87 Pavlova","#BBB58D Coriander","#BCB88A Sage","#BEB29A Akaroa"]
	var green456 = ["#A5D785 Feijoa","#AFC182 Caper","#B8CA9D Sprout","#BFC298 Green Mist"]
	var green457 = []
	var red45 = [green450,green451,green452,green453,green454,green455,green456,green457]
	var green460 = ["#C71585 Red-violet","#DA1884 Barbie Pink"]
	var green461 = ["#DA3287 Deep cerise"]
	var green462 = ["#C0448F Red-violet (Crayola)","#C54B8C Mulberry","#C84186 Smitten","#C8509B Mulberry (Crayola)","#D65282 Mystic","#D74894 Pink (Pantone)","#DE5285 Fandango pink","#DE5D83 Blush"]
	var green463 = ["#CD6D93 Hopbush","#D0748B Charm","#DB7093 Pale Violet Red"]
	var green464 = ["#C08081 Old rose","#C09999 Tuscany","#C28E88 Oriental Pink","#C3988B Quicksand","#C58F9D Viola","#CC8899 Puce","#D08A9B Can Can","#D68B80 My Pink","#D98695 Shimmering Blush","#DA9790 Petite Orchid"]
	var green465 = ["#C2B280 Sand","#C3B091 Khaki (web)","#C7A384 Rodeo Dust","#C7B882 Yuma","#C9B59A Sour Dough","#CCA483 Cameo","#CCB69B Vanilla","#CDA59C Eunry","#D1B399 Cashmere","#D2B48C Tan","#D3A194 Rose","#D5B185 Calico","#DABE82 Straw","#DCB68A Brandy","#DEA681 Tumbleweed","#DEAA88 Tumbleweed","#DEB887 Burlywood","#DFB992 Pancho"]
	var green466 = ["#CCCF82 Deco","#D0C383 Winter Hazel","#D8CC9B Tahuna Sands","#DDC283 Zombie","#DECB81 Sandwisp","#DFC281 Chalky"]
	var green467 = ["#C5E384 Yellow-green (Crayola)","#C6EA80 Sulu","#D1EF9F Reef"]
	var red46 = [green460,green461,green462,green463,green464,green465,green466,green467]
	var green470 = ["#FF0090 Magenta (process)","#FF1493 Deep pink"]
	var green471 = ["#FD3F92 French fuchsia","#FF3399 Wild Strawberry"]
	var green472 = ["#E75480 Dark Pink","#F64A8A French rose","#F7468A Violet Red","#F75394 Violet-red","#F9429E Rose bonbon"]
	var green473 = ["#E36F8A Deep Blush","#ED7A9B Rose Pompadour","#FC6C85 Wild watermelon","#FD6C9E French pink"]
	var green474 = ["#E68095 Carissma","#E79E88 Tonys Pink","#EE918D Sweet Pink","#F08080 Light coral","#F1919A Wewak","#FF9889 Mona Lisa","#FF9980 Vivid Tangerine"]
	var green475 = ["#E2AF80 Manhattan","#E3B982 Maize","#E6BE8A Gold (Crayola)","#E9BA81 Corvette","#EEB39E Wax Flower","#F5B799 Mandys Pink","#FEAB9A Rose Bud","#FFA089 Vivid tangerine","#FFBD88 Macaroni and Cheese"]
	var green476 = ["#E4C385 New Orleans","#E4CF99 Double Colonial White","#E4DE8E Primrose","#E8CD9A Chamois","#EBC79E New Tan","#EBC881 Marzipan","#EEDC82 Flax","#EEDD82 Light Goldenrod","#F0DC82 Buff","#F1D79E Splash","#F5CD82 Cherokee","#FFC69E Romantic","#FFCC99 Peach-Orange","#FFD59A Caramel"]
	var green477 = ["#E3F988 Mindaro","#E8F48C Key lime","#EEF293 Jonquil","#F0E68C Khaki (X11) (Light khaki)","#F0E891 Green-yellow (Crayola)","#F0F590 Tidal","#F4F09B Portafino","#F6F493 Milan","#F8EA97 Picasso","#F9E496 Vis Vis","#F9F59F Pale Prim","#FBEB9B Drover","#FCE883 Yellow (Crayola)","#FFE39B Cream Brulee","#FFFF99 Canary","#FFFF9F Lemon yellow (Crayola)"]
	var red47 = [green470,green471,green472,green473,green474,green475,green476,green477]
	var blue4 = [red40,red41,red42,red43,red44,red45,red46,red47]
	var green500 = ["#0014A8 Zaffre","#0018A8 Blue (Pantone)","#1C05B3 Trypan Blue"]
	var green501 = ["#002FA7 International Klein Blue","#0033AA UA blue","#1034A6 Egyptian blue","#1C39BB Persian blue"]
	var green502 = ["#0047AB Cobalt blue","#0048BA Absolute Zero","#0F52BA Sapphire"]
	var green503 = ["#0067A5 Sapphire blue","#006DB0 Honolulu blue","#0070B8 Spanish blue","#0072BB French blue","#007AA5 CG blue","#007BA7 Cerulean","#007BB8 Star command blue","#1164B4 Green-blue","#1560BD Denim"]
	var green504 = ["#0087BD Blue (NCS)","#0093AF Blue (Munsell)","#0095B6 Bondi Blue","#0D98BA Blue-green"]
	var green505 = ["#0ABAB5 Tiffany Blue"]
	var green506 = []
	var green507 = []
	var red50 = [green500,green501,green502,green503,green504,green505,green506,green507]
	var green510 = []
	var green511 = []
	var green512 = ["#2243B6 Denim blue","#2A52BE Cerulean blue","#324AB2 Violet-blue"]
	var green513 = ["#316EA0 Lochmara"]
	var green514 = ["#2599B2 Pelorous","#308EA0 Scooter","#3D85B8 Curious Blue"]
	var green515 = ["#20B2AA Light Sea Green","#30BFBF Maximum blue green"]
	var green516 = []
	var green517 = []
	var red51 = [green510,green511,green512,green513,green514,green515,green516,green517]
	var green520 = []
	var green521 = []
	var green522 = ["#4F42B5 Ocean Blue","#545AA7 Liberty","#5946B2 Plump Purple","#5959AB Rich Blue"]
	var green523 = ["#5072A7 Blue yonder"]
	var green524 = ["#438EAC Boston Blue","#4682B4 Steel blue","#5D8AA8 Air Force Blue","#5F9EA0 Cadet blue"]
	var green525 = ["#43B3AE Verdigris","#59BAA3 Puerto Rico"]
	var green526 = []
	var green527 = []
	var red52 = [green520,green521,green522,green523,green524,green525,green526,green527]
	var green530 = ["#6A0DAD Purple"]
	var green531 = ["#6B3FA0 Royal Purple"]
	var green532 = ["#6A5BB1 Blue Marguerite","#724AA1 Studio","#7851A9 Royal purple"]
	var green533 = ["#666FB4 Chetwode Blue","#6F63A0 Scampi","#7366BD Blue-violet (Crayola)"]
	var green534 = ["#6082B6 Glaucous","#609AB8 Shakespeare","#778BA5 Shadow blue","#7988AB Ship Cove","#7A89B8 Wild Blue Yonder"]
	var green535 = ["#65ADB2 Fountain Blue","#6DAFA7 Tradewind","#6EAEA1 Green Sheen","#74B2A8 Gulf Stream","#77A8AB Neptune","#78B1BF Glacier"]
	var green536 = ["#66CDAA Medium Aquamarine","#66DDAA Medium aquamarine","#6FD2BE Downy","#7AC5B4 Monte Carlo"]
	var green537 = []
	var red53 = [green530,green531,green532,green533,green534,green535,green536,green537]
	var green540 = ["#8601AF Violet (RYB)"]
	var green541 = []
	var green542 = ["#9955BB Deep Lilac","#9A4EAE Purpureus","#9C51B6 Purple Plum"]
	var green543 = ["#8272A4 Deluge","#8B72BE Middle blue purple","#9271A7 Ce Soir","#9678B6 Purple Mountain's Majesty"]
	var green544 = ["#849CA9 Bali Hai","#8C92AC Cool grey","#8D90A1 Manatee","#9391A0 Grey Suit","#979AAA Manatee","#9998A7 Santas Grey","#9D8ABF Cold Purple","#9D9CB4 Logan"]
	var green545 = ["#81A6AA Ziggurat","#8AAEA4 Sea Nymph","#8BA8B7 Pewter Blue","#8CA8A0 Cascade","#91A3B0 Cadet grey","#92ACB4 Botticelli","#93A2BA Rock Blue","#93AAB9 Nepal","#9CACA5 Tower Grey","#9DB4AA Skeptic","#9FA3A7 Grey Chateau"]
	var green546 = ["#96C8A2 Eton blue","#97D5B3 Vista Blue","#9AC0B6 Shadow Green","#9DD3A8 Chinook"]
	var green547 = []
	var red54 = [green540,green541,green542,green543,green544,green545,green546,green547]
	var green550 = []
	var green551 = ["#BD33A4 Byzantine"]
	var green552 = []
	var green553 = ["#B768A2 Pearly purple"]
	var green554 = ["#AA8CBC East Side","#AA98A9 Rose quartz","#AB92B3 Glossy grape","#AE94AB London Hue","#AE98AA Lilac Luster","#B284BE African violet","#B784A7 Opera mauve"]
	var green555 = ["#A0B1AE Conch","#A1A9A8 Hit Grey","#A2A1AC Spun Pearl","#A4ADB0 Gull Grey","#A5A9B2 Mischka","#A6A6A6 Quick Silver","#A9A9A9 Dark Gray","#AAA9AD Silver (Metallic)","#AAB5B8 Casper","#ACACAC Silver chalice","#ACAEA9 Silver Chalice","#ACB6B2 Periglacial Blue","#AEAEAD Bombay","#B2BEB5 Ash gray","#B3ABB6 Chatelle","#B3BBB7 Loblolly","#B7A8A3 Martini","#B8B5A1 Tana","#B9ACBB Lola","#BAB9A9 Mist Grey","#BBADA1 Silk","#BCBFA8 Beryl Green","#BDBAAE Grey Nickel","#BEB4AB Tide","#BEBAA7 Ash","#BEBDB6 Silver Sand","#BEBEBE Gray (X11 gray)","#BFAFB2 Black Shadows","#BFB3B2 Pink Swan","#BFB5A2 Tea","#BFBAAF Cotton Seed"]
	var green556 = ["#A0D6B4 Turquoise green","#A3C1AD Cambridge blue","#A8C3BC Opal","#ACC9B2 Gum Leaf","#ADDFAD Moss Green","#B2C6B1 Zanah","#B3C1B1 Rainee","#B8C6BE Nebula","#B8D4BB Surf","#B9C3BE Tiara","#BAC0B3 Tasman","#BAC0B4 Pumice","#BBCDA5 Pixie Green","#BDCAA8 Pale Leaf","#BFC0AB Kidnapper"]
	var green557 = ["#A8E4A0 Granny Smith apple","#ACE1AF Celadon","#B4E1BB Fringy Flower","#B7E3A8 Madang"]
	var red55 = [green550,green551,green552,green553,green554,green555,green556,green557]
	var green560 = []
	var green561 = []
	var green562 = []
	var green563 = ["#CF6BA9 Super pink","#CF71AF Sky magenta","#D470A2 Wild orchid","#DE6FA1 Thulian pink"]
	var green564 = ["#C19FB3 Lily","#C99AA0 Careys Pink","#D982B5 Middle purple"]
	var green565 = ["#C2BCB1 Cloud","#C3BEBB Pale Slate","#C4AEAD Silver pink","#C5BAA0 Sisal","#CAB5B2 Cold Turkey","#CAB8A2 Grain Brown","#CFBEA5 Soft Amber","#D2B3A9 Clam Shell","#D4B5B0 Oyster Pink","#D4BBB1 Wafer","#D8B4B6 Pink Flare","#DCBFAC Just Right","#DDADAF Pale Chestnut","#DEA5A4 Pastel pink","#DFB1B6 Blossom"]
	var green566 = ["#C3D6BD Surf Crest","#C5C3B0 Kangaroo","#C9C0BB Silver (Crayola)","#CAC7B7 Chrome White","#CECDB8 Moon Mist","#D0C8B0 Parchment","#D2C3A3 Double Spanish White","#D2C6B6 Stark White","#D2D3B3 Orinoco","#D4CFB4 White Rock","#D5CBB2 Aths Special","#DBC2AB Bone","#DCC6A0 Raffia","#DED1B7 Spanish White","#DFD7BD Wheatfield"]
	var green567 = []
	var red56 = [green560,green561,green562,green563,green564,green565,green566,green567]
	var green570 = ["#F400A1 Hollywood cerise","#FF1CAE Spicy Pink"]
	var green571 = ["#E936A7 Frostbite","#FE28A2 Persian rose"]
	var green572 = ["#F653A6 Magenta (Crayola)","#FF43A4 Wild Strawberry","#FF55A3 Brilliant rose"]
	var green573 = ["#F56FA1 Cyclamen","#F77FBE Persian pink","#FF69B4 Hot pink"]
	var green574 = ["#E093AB Kobi","#E68FAC Charm pink","#E899BE Shocking","#EF95AE Illusion","#EF98AA Mauvelous","#F091A9 Mauvelous","#F19CBB Amaranth pink","#F38FA9 Vanilla ice","#F78FA7 Pink Sherbet","#FC80A5 Tickle Me Pink","#FC89AC Tickle Me Pink","#FF91A4 Salmon pink","#FF91AF Schauss pink"]
	var green575 = ["#E0B8B1 Cavern Pink","#E6B2A6 Shilo","#EBB9B3 Beauty Bush","#F7BFBE Spanish pink","#F8AFA9 Sundown","#FEBAAD Melon"]
	var green576 = ["#E0D8A7 Mint Julep","#E1D5A6 Sapling","#E1DABB Coconut Cream","#E8D4A2 Hampton","#E9D7AB Beeswax","#E9D9A9 Sidecar","#E9DCBE Double Pearl Lusta","#EBC2AF Zinnwaldite","#EBD4AE Givry","#EDC9AF Desert sand","#EDD2A4 Dairy Cream","#EDD5A6 Astra","#EEC7A2 Negroni","#EED9B6 Champagne","#EFDFBB Dutch white","#F0DFBB Dutch White","#F2CDBB Watusi","#F3D7B6 Pink Lady","#F4D0A4 Tequila","#F5DEB3 Wheat","#F9D3BE Tuft Bush","#FAD6A5 Tuscan","#FADFAD Peach-Yellow","#FBCEB1 Apricot","#FED8B1 Light orange","#FEDBB7 Sandy Beach","#FFC5BB Your Pink","#FFCBA4 Peach (Crayola)","#FFD7A0 Frangipani","#FFDAB9 Peach puff","#FFDEAD Navajo white"]
	var green577 = ["#E3E5B1 Tusk","#EAEAAE Medium Goldenrod","#ECEBBD Spring green (Crayola)","#EEE8AA Pale Goldenrod","#EFF8AA Australian Mint","#F0F5BB Chiffon","#F2E5BF Half Colonial White","#F3E5AB Vanilla","#F6E0A4 Buttermilk","#F6EABE Lemon meringue","#F7E5B7 Barley White","#F8F6A8 Shalimar","#FAE7B5 Banana Mania","#FAF0BE Blond","#FBE7B2 Banana Mania","#FEE0A5 Cape Honey","#FFE4B5 Moccasin","#FFE5B4 Peach"]
	var red57 = [green570,green571,green572,green573,green574,green575,green576,green577]
	var blue5 = [red50,red51,red52,red53,red54,red55,red56,red57]
	var green600 = ["#0000CD Medium blue"]
	var green601 = []
	var green602 = []
	var green603 = ["#0066CC Navy Blue","#1974D2 Navy blue (Crayola)"]
	var green604 = ["#009DC4 Pacific Blue"]
	var green605 = ["#03B4C8 Iris Blue","#1CA9C9 Pacific blue","#1DACD6 Cerulean (Crayola)"]
	var green606 = ["#00CCCC Robin's Egg Blue","#00CED1 Dark turquoise"]
	var green607 = ["#00FFCD Sea green (Crayola)","#08E8DE Bright Turquoise"]
	var red60 = [green600,green601,green602,green603,green604,green605,green606,green607]
	var green610 = []
	var green611 = []
	var green612 = []
	var green613 = ["#246BCE Celtic blue","#2D68C4 True Blue"]
	var green614 = ["#2887C8 Green-blue (Crayola)","#3E8EDE Tufts blue"]
	var green615 = ["#38B0DE Summer Sky"]
	var green616 = []
	var green617 = []
	var red61 = [green610,green611,green612,green613,green614,green615,green616,green617]
	var green620 = []
	var green621 = []
	var green622 = ["#4156C5 Free Speech Blue","#5A4FCF Iris"]
	var green623 = ["#446CCF Han blue"]
	var green624 = ["#5784C1 Havelock Blue","#5B89C0 Danube"]
	var green625 = ["#47ABCC Maximum blue","#4DB1C8 Viking","#56A0D3 Carolina blue","#5BA0D0 Picton Blue"]
	var green626 = ["#48D1CC Medium turquoise"]
	var green627 = ["#40E0D0 Turquoise"]
	var red62 = [green620,green621,green622,green623,green624,green625,green626,green627]
	var green630 = []
	var green631 = ["#652DC1 Purple Heart"]
	var green632 = ["#6050DC Majorelle blue","#6A5ACD Slate blue"]
	var green633 = ["#766EC8 Violet-blue (Crayola)"]
	var green634 = ["#6699CC Livid","#6D9BC3 Cerulean frost"]
	var green635 = ["#6CA0DC Little boy blue","#71A6D2 Iceberg","#72A0C1 Air superiority blue","#77B7D0 Seagull"]
	var green636 = ["#7ECDDD Spray"]
	var green637 = ["#7FFFD4 Aquamarine"]
	var red63 = [green630,green631,green632,green633,green634,green635,green636,green637]
	var green640 = ["#8806CE French violet","#9400D3 Dark violet","#9F00C5 Purple (Munsell)"]
	var green641 = ["#9932CC Dark orchid"]
	var green642 = []
	var green643 = ["#8378C7 Moody Blue","#8E72C7 True V","#9370DB Medium purple","#9470C4 Lilac Bush","#9966CC Amethyst"]
	var green644 = ["#8B98D8 Portage","#9999CC Blue Bell"]
	var green645 = ["#8AA7CC Polo Blue","#8CBED6 Dark sky blue"]
	var green646 = ["#86D2C1 Bermuda","#89D9C8 Riptide","#8DD9CC Middle blue green","#9ED1D3 Morning Glory"]
	var green647 = []
	var red64 = [green640,green641,green642,green643,green644,green645,green646,green647]
	var green650 = []
	var green651 = []
	var green652 = ["#BA55D3 Medium orchid"]
	var green653 = ["#B57EDC Lavender (floral)"]
	var green654 = ["#A29ECD Wistful","#AE99D2 Biloba Flower"]
	var green655 = ["#A2A2D0 Blue bell","#A2ADD0 Wild blue yonder","#A4AFCD Echo Blue","#A9B2C3 Cadet blue (Crayola)","#AEBBC1 Heather","#BDBACE Blue Haze","#BDBBD7 Lavender Grey","#BFBDC1 French Grey"]
	var green656 = ["#A0CDD9 Regent St Blue","#A6D5D0 Sinbad","#ADD9D1 Scandal","#B0C4C4 Jungle Mist","#B0C4DE Light steel blue","#B3C4D8 Spindle","#BBD0C9 Jet Stream","#BFC1C2 Silver sand","#BFCDC0 Paris White"]
	var green657 = ["#AAF0D1 Magic mint","#AFE3D6 Ice Cold","#B4E2D5 Cruise","#B6ECDE Water Leaf"]
	var red65 = [green650,green651,green652,green653,green654,green655,green656,green657]
	var green660 = ["#CC00CC Deep Magenta"]
	var green661 = ["#CC33CC Steel pink"]
	var green662 = ["#C154C1 Fuchsia (Crayola)"]
	var green663 = ["#D473D4 French mauve","#DA70D6 Orchid"]
	var green664 = []
	var green665 = ["#C0B2D7 Moon Raker","#C0BFC7 Ghost","#C2A9DB Perfume","#C3B9DD Melrose","#C8A2C8 Lilac","#C8B1C0 Maverick","#C9A0DC Wisteria","#CAB4D4 Prelude","#D8B2D1 Pink lavender","#D8BFD8 Thistle","#DDA0DD Plum (web)","#DEB7D9 French Lilac"]
	var green666 = ["#C0C0C0 Silver","#C1D8C5 Edgewater","#C2D5C4 Sea Mist","#C4C3D0 Lavender gray","#C7CDD8 Link Water","#CBC9C0 Quill Grey","#CBCDCD Iron","#CBCEC0 Harp","#CBD0CF Geyser","#CDC6C5 Alto","#CDCDCD Very Light Grey","#CDD5D5 Zumthor","#D1D3CC Grey Nurse","#D2D1CD Concrete","#D2D2C0 Celeste","#D3D3D3 Light Grey","#D3DBCB Ottoman","#D4CFC5 Westar","#D5D2D1 Mercury","#D6CADD Languid lavender","#D6D1C0 Ecru White","#D7CEC5 Swirl","#D8DDDA Mystic","#D9D0C1 Blanc","#D9D6CF Timberwolf","#D9DDD5 Aqua Haze","#D9DFCD Gin","#DAC0CD Twilight","#DAD6CC White Pointer","#DBD0CA Swiss Coffee","#DBD7D2 Timberwolf","#DBD9C2 Loafer","#DCD7D1 Gallery","#DCD9CD Milk White","#DCDCDC Gainsboro","#DCDDDD Athens Grey","#DDDCDB Porcelain","#DED1C6 Pearl Bush","#DEDDCB Green White","#DFD7D2 Bon Jour","#DFDDD6 Sea Fog"]
	var green667 = ["#C0E8D5 Aero blue","#C5E7CD Granny Apple","#C6EADD Mint Tulip","#CAE1D9 Iceberg","#D0F0C0 Tea green","#D6F0CD Snowy Mint","#D7E7D0 Peppermint","#D8F0D2 Blue Romance","#DAE6DD Swans Down","#DBE0D0 Feta","#DBE4DC Aqua Squeeze","#DBE5D2 Frostee","#DEEADC Apple Green","#DEF1DD Tara","#DFE6CF Willow Brook","#DFF1D6 Hint Of Green"]
	var red66 = [green660,green661,green662,green663,green664,green665,green666,green667]
	var green670 = ["#FC0FC0 Shocking pink","#FF00CC Hot Magenta","#FF1DCE Hot magenta"]
	var green671 = ["#FF33CC Razzle dazzle rose"]
	var green672 = ["#E35BD8 Free Speech Magenta","#FE4EDA Purple pizzazz"]
	var green673 = ["#FF66CC Rose pink","#FF6EC7 Neon Pink"]
	var green674 = ["#E29CD2 Orchid (Crayola)","#E79FC4 Kobi","#F883C2 Tea Rose"]
	var green675 = ["#E0B7C2 Melanie","#EDB8C7 Chantilly","#EFBBCC Cameo pink","#F2BDCD Orchid pink","#F5B2C5 Cupid","#F6ADC6 Nadeshiko pink","#FBAED2 Lavender Pink","#FFA6C9 Carnation pink","#FFB6C1 Light pink","#FFB7C5 Cherry blossom pink","#FFB7D5 Cotton Candy","#FFBCD9 Cotton candy"]
	var green676 = ["#E0DED7 Black Haze","#E1DACB Albescent White","#E1DBD0 Merino","#E2CDD5 Prim","#E2DDC7 Travertine","#E3DAC9 Bone","#E3DFD9 Vista White","#E5CAC0 Dust Storm","#E6D6CD Dawn Pink","#E6D8D4 Ebb","#E6DBC7 Half Spanish White","#E7D2C8 Bizarre","#E8CCD7 Queen pink","#EADAC2 Solitaire","#EBD2D1 Vanilla Ice","#EED9C4 Almond","#EEDFDE Soft Peach","#EFD6DA Pale Rose","#EFDCD4 Pot Pourri","#EFDECD Almond","#F1DDCF Champagne pink","#F4C2C2 Tea rose","#F4C8DB Classic Rose","#F5D0C9 Coral Candy","#F5D7DC Cherub","#F5DEC4 Sazerac","#F6CCD7 Pink Lace","#F6DEDA Remy","#F9C0C4 Azalea","#FADADD Pale pink","#FBD7CC Cinderella","#FCD5CF Cosmos","#FCDBD2 Pippin","#FDD7D8 We Peep","#FEDCC1 Karry","#FFC0CB Pink","#FFDDCA Unbleached silk"]
	var green677 = ["#E0E4DC Catskill White","#E1E4C5 Frost","#E3E3DC Snow Drift","#E4E2DC Wan White","#E5E4DB Black White","#E5E6DF Black Squeeze","#E7E4DE Wild Sand","#E9E1D9 Spring Wood","#E9E6DC Narvik","#E9FFDB Nyanza","#EAE0C8 Pearl Lusta","#EAE3CD Orange White","#EAE4DC Pampas","#EAF7C9 Snow Flurry","#EBE1CE Bleach White","#EBE2D2 Quarter Spanish White","#EBE5D5 Cararra","#ECE5DA Soapstone","#EDE7C8 Half And Half","#EEE7C8 Scotch Mist","#EEE7DC White Linen","#EEEFDF Sugar Cane","#EFECDE Rice Cake","#EFF5D1 Rice Flower","#F0EAD6 Eggshell","#F1E9D2 Parchment","#F1EAD7 Half Pearl Lusta","#F1EBD9 Orchid White","#F1EBDA Buttery White","#F1EDD4 Rum Swizzle","#F1F1C6 Spring Sun","#F2E6DD Fantasy","#F2E8D7 Magnolia","#F2EDDD Quarter Pearl Lusta","#F3E5C0 Milk Punch","#F3E5DC Fair Pink","#F5E6C4 Pipi","#F5F3CE Moon Glow","#F5F4C1 Cumulus","#F5F5CC Mimosa","#F5F5DC Beige","#F5F9CB Carla","#F6E3DA Provincial Pink","#F6F5D7 Hint Of Yellow","#F7E7CE Champagne","#F7F0DB Apricot White","#F8EACA Gin Fizz","#F8EADF Chardon","#F8EBDD Bridal Heath","#F8EDDB Island Spice","#F8F3C4 Corn Field","#F8F6D8 White Nectar","#F8F6DF Promenade","#F9E4C5 Egg Sour","#F9E4C6 Derby","#F9F7DE Chilean Heath","#FAE6DF Bridesmaid","#FAEBD7 Antique white","#FAF3DC Off Yellow","#FAFAD2 Light goldenrod yellow","#FBF0D6 Half Dutch White","#FBF2DB Early Dawn","#FBF3D3 China Ivory","#FCE9D7 Serenade","#FCEDC5 Oasis","#FDEFD3 Varden","#FDEFDB Forget Me Not","#FFE4C4 Bisque","#FFEBCD Blanched Almond","#FFEFD5 Papaya whip","#FFF8DC Cornsilk","#FFFACD Lemon chiffon","#FFFDD0 Cream"]
	var red67 = [green670,green671,green672,green673,green674,green675,green676,green677]
	var blue6 = [red60,red61,red62,red63,red64,red65,red66,red67]
	var green700 = ["#0000FF Blue"]
	var green701 = []
	var green702 = ["#0247FE Blue (RYB)"]
	var green703 = ["#007FFF Azure","#1F75FE Blue (Crayola)"]
	var green704 = ["#1E90FF Dodger blue"]
	var green705 = ["#00B7EB Cyan (process)","#00BFFF Deep sky blue"]
	var green706 = ["#00CCFF Vivid sky blue"]
	var green707 = ["#00FFEF Turquoise blue","#00FFFF Spanish sky blue","#15F4EE Fluorescent blue"]
	var red70 = [green700,green701,green702,green703,green704,green705,green706,green707]
	var green710 = ["#3F00FF Ultramarine"]
	var green711 = []
	var green712 = []
	var green713 = ["#3C69E7 Bluetiful"]
	var green714 = ["#318CE7 Bleu de France"]
	var green715 = []
	var green716 = []
	var green717 = []
	var red71 = [green710,green711,green712,green713,green714,green715,green716,green717]
	var green720 = ["#5218FA Han purple"]
	var green721 = []
	var green722 = ["#4D4DFF Neon Blue"]
	var green723 = ["#4166F5 Ultramarine blue","#4169E1 Royal blue (light)","#4666FF Neon blue"]
	var green724 = ["#5B92E5 United Nations blue"]
	var green725 = ["#5DADEC Blue jeans"]
	var green726 = []
	var green727 = []
	var red72 = [green720,green721,green722,green723,green724,green725,green726,green727]
	var green730 = ["#6600FF Electric Indigo","#6F00FF Electric indigo","#7F00FF Violet (color wheel)"]
	var green731 = []
	var green732 = []
	var green733 = ["#7B68EE Medium slate blue"]
	var green734 = ["#6495ED Cornflower Blue"]
	var green735 = ["#66B7E1 Malibu","#77B5FE French sky blue","#7AAAE0 Jordy Blue","#7CB9E8 Aero"]
	var green736 = ["#6CDAE7 Turquoise Blue","#73C2FB Maya blue","#76D7EA Sky blue (Crayola)","#7ED4E6 Middle blue"]
	var green737 = ["#6FFFFF Baby Blue","#7DF9FF Electric blue"]
	var red73 = [green730,green731,green732,green733,green734,green735,green736,green737]
	var green740 = ["#8F00FF Violet","#9F00FF Vivid violet"]
	var green741 = ["#8A2BE2 Blue-violet"]
	var green742 = []
	var green743 = ["#8470FF Light Slate Blue"]
	var green744 = []
	var green745 = []
	var green746 = ["#87CEEB Sky blue","#87CEFA Light sky blue","#89CFF0 Baby blue","#8CCEEA Anakiwa","#93CCEA Light cornflower blue","#9BC4E2 Pale cerulean","#9BDDFF Columbia Blue"]
	var green747 = []
	var red74 = [green740,green741,green742,green743,green744,green745,green746,green747]
	var green750 = ["#BF00FF Electric Purple"]
	var green751 = ["#A020F0 Veronica"]
	var green752 = []
	var green753 = []
	var green754 = []
	var green755 = ["#ACACE6 Maximum blue purple","#ACB9E8 Perano"]
	var green756 = ["#A1CAF1 Baby blue eyes","#A4D2E0 French Pass","#A4DCE6 Charlotte","#A4DDED Non-photo blue","#A5CEEC Sail","#ABCDEF Pale Cornflower Blue","#ADD8E6 Light blue","#AEC9EB Tropical Blue","#AFDBF5 Uranian blue","#B9D9EB Columbia Blue","#BCD4E6 Pale aqua"]
	var green757 = ["#A3E3ED Blizzard Blue","#ACE5EE Blizzard blue","#AFEEEE Pale Turquoise","#B0E0E6 Powder blue","#B2FFFF Italian sky blue"]
	var red75 = [green750,green751,green752,green753,green754,green755,green756,green757]
	var green760 = ["#DD00FF Psychedelic Purple","#DF00FF Psychedelic purple"]
	var green761 = []
	var green762 = []
	var green763 = ["#DF73FF Heliotrope"]
	var green764 = ["#D891EF Bright lilac"]
	var green765 = []
	var green766 = ["#C3CDE6 Periwinkle (Crayola)","#C5CBE1 Light periwinkle","#CCCCFF Periwinkle","#D2DAED Hawkes Blue","#D5C7E8 Fog","#D9D9F3 Quartz","#DDD6E1 Titan White"]
	var green767 = ["#C2E6EC Onahau","#CAE7E2 Jagged Ice","#CBE8E8 Mabel","#CEEFE4 Humming Bird","#D0EAE8 Foam","#D1EAEA Oyster Bay","#D3E5EF Pattens Blue","#D7EEE4 White Ice","#DDEDE9 Tranquil","#DEE3E3 Zircon","#DFEFEA Clear Day","#DFF0E2 Off Green"]
	var red76 = [green760,green761,green762,green763,green764,green765,green766,green767]
	var green770 = ["#FF00FF Magenta"]
	var green771 = []
	var green772 = []
	var green773 = ["#FC74FD Pink flamingo","#FF66FF Pink Flamingo","#FF6FFF Ultra pink","#FF77FF Fuchsia Pink"]
	var green774 = ["#EE82EE Violet (web)","#F984E5 Pale Magenta"]
	var green775 = ["#E0B0FF Mauve","#FBA0E3 Lavender Rose"]
	var green776 = ["#E3D6E9 Blue Chalk","#E4D7E5 Snuff","#E6DFE7 Selago","#F8DBE0 Carousel Pink","#FDD7E4 Pig Pink","#FDDDE6 Piggy pink","#FFDAE9 Mimi pink","#FFDDF4 Pink lace"]
	var green777 = ["#E0FFFF Light cyan","#E1F8E7 Cosmic Latte","#E2F2E4 Frosted Mint","#E5E4E2 Platinum","#E5F2E7 Polar","#E6E6FA Lavender (web)","#E6F2EA Bubbles","#E7E5E8 White Lilac","#E7F2E9 Dew","#E8F3E8 Aqua Spring","#E9ECF1 Solitude","#E9EEEB Lily White","#EBF7E4 Panache","#EDE7E0 Desert Storm","#EDEAE0 Alabaster","#EEF3E5 Saltpan","#EFE6E6 Whisper","#F0F8FF Alice blue","#F0FFF0 Honeydew","#F0FFFF Azure (X11/web color)","#F2F0E6 Alabaster","#F4EAE4 Sauvignon","#F4EFE0 Bianca","#F4F0E6 Romance","#F4F0EC Isabelline","#F4F6EC Twilight Blue","#F5E6EA Amour","#F5EFEB Hint Of Red","#F5F5F5 White Smoke","#F5FFFA Mint cream","#F8E4E3 Tutu","#F8F4FF Magnolia","#F8F8FF Ghost white","#F9E8E2 Wisp Pink","#FAE6FA Pale purple (Pantone)","#FAF0E6 Linen","#FBEEE8 Rose White","#FDE9E0 Chablis","#FDF5E6 Old lace","#FEFEFA Baby powder","#FFE4E1 Misty rose","#FFF0F5 Lavender blush","#FFF5EE Seashell","#FFF8E7 Cosmic latte","#FFFAF0 Floral white","#FFFAFA Snow","#FFFFE0 Light yellow","#FFFFF0 Ivory","#FFFFFF White"]
	var red77 = [green770,green771,green772,green773,green774,green775,green776,green777]
	var blue7 = [red70,red71,red72,red73,red74,red75,red76,red77]
	all = [blue0,blue1,blue2,blue3,blue4,blue5,blue6,blue7]
func color(r,g,b):
	return all[b][r][g]
#LMAO at first i had vars inside the func, which means they get initialized every time
#now its like 10 times faster
#btw it was done using a cool c# program which i made to output with syntax that
#you can paste into here and it should work
#big brian
#also i cant help but notice that the entire editor lags when you type and are
#near init... suspicious


func ___COLOR_FUNCTIONS___():
	return true

func ColorNameToColor(C):
	if C.length()>7:
		C=C[1]+C[2]+C[3]+C[4]+C[5]+C[6]
	else:
		return Color()
	return HexToColor(C)

func HexToColor(C):
	#uhhh, i guess it does hex to color?
	var Col = str(C).to_upper()
	var color = Array()
	if Col.length()!=6:
		return Color()
	for i in range(3):
		var clor=str(Col[i*2],Col[i*2+1])
		color.append(("0x"+clor).hex_to_int())
	return Color8(color[0],color[1],color[2])

#Use with color names
func ColHexToPos(hx):
	if hx=="":
		return Vector3(255,255,255)
	#god damn there was a hex_to_int() all this time, and it is much faster
	var pos = Vector3(("0x"+hx[1]+hx[2]).hex_to_int(),("0x"+hx[3]+hx[4]).hex_to_int(),("0x"+hx[5]+hx[6]).hex_to_int())
	return pos

class sort:
	static func sort_dist(a,b):
		if a[1]<b[1]:
			return true
		return false

func ClosestColorSearch(r,g,b):
	#yes, that did happen
	return ColorClosestSearch(r,g,b)

func ColorClosestSearch(r,g,b):#0-255
	#find closest color based on "chunks"
	#doesnt use sqrt, i was smort even back then
	r=min(max(round(r),0),255)
	g=min(max(round(g),0),255)
	b=min(max(round(b),0),255)
	
	var pos = Vector3(r,g,b)
	var closest = pow(128,2)
	var center = Vector3(floor(r/32),floor(g/32),floor(b/32))
	var sectors =[]
	var size=1
	var delete=-1
	var closestcol=""
	var end=0
	#note - does not support equal distance points, a single one will get picked
	#specifically one that appeared first/one in a sector that comes first
	for n in 4:
		sectors=ColorSearchBoxMaker(center,[r,g,b],size,delete)
		sectors.sort_custom(sort,"sort_dist")
		for sector in sectors:
			if closest>sector[1]:
				for color in color(sector[0][0],sector[0][1],sector[0][2]):
					var dist = pos.distance_squared_to(ColHexToPos(color))
					if closest>dist:
						closestcol=color
						closest=dist
			else:
				end=1
				break
		if end==1:
			break
		size+=1
		delete=size-1
	return closestcol


func ___MISC_FUNCTIONS___():
	return true
#honestly idk why this isnt a built in func but its not	
func StringInvert(string):
	
	var s=str(string)
	var temp = "a"
	var l = s.length()-1
	for i in range(floor(s.length()/2)):
		temp=string[i]
		string[i]=string[l]
		string[l]=temp
		l-=1
	return string


#BAD because there is .hex_to_int()
func HexToInt (hx):
	
	var hex=str(hx).to_upper()
	var final = 0
	for i in hex.length():
		var ch=ord(hex[hex.length()-1-i])
		
		#48-58 = 0-9
		#65-70 = A-F = 10-15
		final+=((ch-48)*int(ch<58)+(ch-55)*int(ch>64))*pow(16,i)
	return final


#explanatory
func IntToHex(i):
	
	var _i=float(i)
	var step=0
	var hex=""
	while i>1:
		_i=_i/16
		if _i<1:
			var k =pow(16,step)
			#essentially stepify(i,k)
			var n=int(floor(float(i)/k))
			i-=n*k
			_i=float(i)
			hex+=char(n+48+7*int(n>9))
			step=0
			continue
		step+=1
	return hex

#explanatory
func DistToBox(pos,pos1,pos2):
	var x = max(max(pos1.x-pos.x,pos.x-pos2.x),0)
	var y = max(max(pos1.y-pos.y,pos.y-pos2.y),0)
	var z = max(max(pos1.z-pos.z,pos.z-pos2.z),0)
	return pow(x,2)+pow(y,2)+pow(z,2)

#explanatory
func NewVec2(n):
	return Vector2(n,n)
func NewVec3(n):
	return Vector3(n,n,n)

#pos = position
#pos1/2=first/second box edges
#first pos at 0,0; second at +,+
func Vec2IfInBox(pos, pos1, pos2):
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y)
func Vec2IfInBoxExcluded(pos, pos1, pos2):
	return (pos2.x>pos.x && pos.x>pos1.x && pos2.y>pos.y && pos.y>pos1.y)
func Vec3IfInBox(pos, pos1, pos2):
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y && pos2.z>=pos.z && pos.z>=pos1.z)
func Vec3IfInBoxExcluded(pos, pos1, pos2):
	return (pos2.x>pos.x && pos.x>pos1.x && pos2.y>pos.y && pos.y>pos1.y && pos2.z>pos.z && pos.z>pos1.z)


#create array of cube of sectors with hole specificed by delete 
#include dist to sector
#NOTE: range() is BAD and you need to do range(x,y+1) or else its gonna be 1 short...
func ColorSearchBoxMaker(center,color,size,delete):
	var r=color[0]
	var g=color[1]
	var b=color[2]
	var sectors=[]
	for i1 in range(center.x-size,center.x+size+1):
		if (0>i1 or i1>7):
			continue
		for i2 in range(center.y-size,center.y+size+1):
			if (0>i2 or i2>7):
				continue
			for i3 in range(center.z-size,center.z+size+1):
				var cvoid=Vec3IfInBox(Vector3(i1,i2,i3),NewVec3(-delete),NewVec3(delete))
				if (0>i3 or i3>7)or cvoid:
					continue
				sectors.append([[i1,i2,i3],DistToBox(Vector3(r,g,b),Vector3(i1*32,i2*32,i3*32),Vector3(i1*32+31,i2*32+31,i3*32+31))])
	return sectors


#product
func Dot(a,b):
	return cos(a.angle_to(b))

#fposmod(), posmod() - all the same
#
#func Mod(x,y):
#	return (x%y+y)%y

func ___INFLUENCE_FUNCTIONS___():
	return true



# convert n to/from direction vector
#   x->
# y 1 2 3
# | 0   4
# v 7 6 5
func DirToV(dir):
	dir=float(dir)
	return Vector2(int(round(cos((dir/4-1)*PI))),int(round(sin((dir/4-1)*PI))))
func VToDir(V):
	return int(round(-atan2(V.x,V.y)/PI*4)+8-2)%8

#send 8 check beams, each beam does "binary" range check, such that it always
#arrives at the border of the shape
func StarCheck(pos,rule,args,maxrange=100.0):
	var points=[]
	for i in 8:
		var leng=maxrange
		var curr=pos
		while leng>1:
			var off=ceil(leng/2)*DirToV(i)
			curr+=off*int(rule.call_func(curr+off,args))
			leng=ceil(leng/2)
		#check for edge-case of bumping into the edge, which allows AToB() to skip over the point 
		if(i%2==1 && rule.call_func(curr+DirToV(i+1),args) && rule.call_func(curr+DirToV(i-1),args)):
			curr+=DirToV(i+1)
		points.append(curr)
	return points

#averages points
func Average(points):
	var n=points.size()
	var sum=Vector2()
	for k in points:
		sum+=k
	sum=sum/n
	return Vector2(round(sum.x),round(sum.y))

#does StarCheck on loop and checks if new Average is approx equal to the last
#so it finds middle of the shape 
#(this is actually pretty useless but it *could* allow for near equal frame load
#split)
func GetCenter(pos,rule,args,maxrange=100.0,centoff=5.0):
	var last=Vector2(-1000,-1000)
	var points=[]
	var limit=0
	while (last.distance_squared_to(pos)>pow(centoff,2)and limit<10)or !limit>3: #change limits
		last=pos
		points=StarCheck(pos,rule,args,maxrange)
		pos=Average(points)
		limit+=1
	return points

#goes clockwise from point a to b along border of rule (meaning border is on the left)
func AToB(a,b,rule,args=[],start=0):
	var points=[a]
	var lim=400
	while points[points.size()-1]!=b and points.size()<lim:
		var n=points.size()-1
		while !rule.call_func(points[n]+DirToV(start),args):
			start+=1
		points.append(points[n]+DirToV(start))
		start-=start%2+1
	points.pop_back()
	return [points,start]

#combines everything to get the border of the rule-defined shape
func TraceShape(pos,rule,args=[]):
	var mainpoints=GetCenter(pos,rule,args)
	var trace=[]
	var dir=0
	for n in 8:
		var temp=AToB(mainpoints[n],mainpoints[(n+1)%8],rule,args,dir)
		dir=temp[1]
		trace.append_array(temp[0])
	return trace

func Neatify(arr):
	var arr2=[]
	for i in arr.size():
		var _x=arr[(i)%arr.size()]
		var _y=arr[(i+2)%arr.size()]
		var cent=arr[(i+1)%arr.size()]
		var x = cent-_x
		var y = cent-_y
		if !is_equal_approx(Dot(x,y),-1):
			arr2.append(cent)
	return arr2

func ColorIf(pos,args=[]):
	var slider = args[0]
	var col=args[1]
	var isinbox=Vec3IfInBox(Vector3(pos.x,pos.y,slider),NewVec3(0),NewVec3(255))
	
	if isinbox:
		var tempcol=ColorClosestSearch(pos.x,pos.y,slider)
		if !tempcol==col and args.size()>=3:
			var inst=instance_from_id(args[2])
			var index=inst.cols.find(tempcol)
			if index==-1:
				inst.cols.append(tempcol)
				inst.colsinfo.append([Vector3(pos.x,pos.y,slider),Vector3()])
			else:
				inst.colsinfo[index][1]=Vector3(pos.x,pos.y,slider)
			return false
		else:
			return true
	return false
	

func ColorInfluence(pos,slider,args=[]):
	var col = ColorClosestSearch(pos.x,pos.y,slider)
	var rule = funcref(self,"ColorIf")
	return Neatify(TraceShape(pos,rule,[slider,col]+args))

func SliderIf(pos,slider,col):
	return ColorClosestSearch(pos.x,pos.y,slider)==col
#god what a mess
func SliderOrganize(arr):
	var newarr=[]
	for col in arr:
		newarr.append([col[0],[col[1][0]]])
		for n in range(1,col[1].size()-1):
			if col[1][n-1]+col[1][n+1]!=col[1][n]:
				newarr[newarr.size()-1][1].append(n)
		newarr[newarr.size()-1][1].append(col[1][col[1].size()-1])
	return newarr

func SliderInfluence(pos):
	var cols=[]
	for i in 256:
		var col=ColorClosestSearch(pos.x,pos.y,i)
		var index=cols.find(col)
		if index!=-1:
			cols[index][1].append(i)
		else:
			cols.append([col,[i]])
	return cols

func CreatePolygon(arr,off=5):
	var newarr=[]
	newarr.append(Vector2(-off,arr[0]))
	newarr.append(Vector2(off,arr[0]))
	newarr.append(Vector2(-off,arr[1]))
	newarr.append(Vector2(off,arr[1]))
	return newarr











