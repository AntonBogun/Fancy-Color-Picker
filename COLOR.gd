extends Node
var all:Array
func _init():
	var gi000=[0x0, 0x1010203, 0x2010b13, 0x3100c08, 0x416161d, 0x51b1811, 0x61b1b1b]
	var gc000=["Black", "Rich black (FOGRA39)", "Rich black (FOGRA29)", "Smoky black", "Eigengrau", "Black chocolate", "Eerie black"]
	var g000=[gi000,gc000]
	var gi001=[]
	var gc001=[]
	var g001=[gi001,gc001]
	var gi002=[0x195905]
	var gc002=["Lincoln green"]
	var g002=[gi002,gc002]
	var gi003=[0x6400, 0x1006600]
	var gc003=["Dark green (X11)", "Pakistan green"]
	var g003=[gi003,gc003]
	var gi004=[0x8000, 0x1009900, 0x2138808]
	var gc004=["Green (web)", "Islamic Green", "India green"]
	var g004=[gi004,gc004]
	var gi005=[]
	var gc005=[]
	var g005=[gi005,gc005]
	var gi006=[]
	var gc006=[]
	var g006=[gi006,gc006]
	var gi007=[0xff00, 0x109f911]
	var gc007=["Lime (web) (X11 green)", "Free Speech Green"]
	var g007=[gi007,gc007]
	var r00=[g000, g001, g002, g003, g004, g005, g006, g007]
	var gi010=[0x321414, 0x13a181a, 0x23c1414, 0x33d0c02]
	var gc010=["Seal Brown", "Rustic Red", "Dark sienna", "Black bean"]
	var g010=[gi010,gc010]
	var gi011=[0x35281e, 0x1363e1d, 0x23c241b, 0x33d2b1f]
	var gc011=["Cocoa Brown", "Turtle Green", "Brown Pod", "Bistre"]
	var g011=[gi011,gc011]
	var gi012=[0x21421e]
	var gc012=["Myrtle"]
	var g012=[gi012,gc012]
	var gi013=[]
	var gc013=[]
	var g013=[gi013,gc013]
	var gi014=[0x299617]
	var gc014=["Slimy green"]
	var g014=[gi014,gc014]
	var gi015=[0x30b21a]
	var gc015=["Yellow-green (Color Wheel)"]
	var g015=[gi015,gc015]
	var gi016=[]
	var gc016=[]
	var g016=[gi016,gc016]
	var gi017=[0x39ff14, 0x13fff00]
	var gc017=["Neon green", "Harlequin"]
	var g017=[gi017,gc017]
	var r01=[g010, g011, g012, g013, g014, g015, g016, g017]
	var gi020=[0x5d1f1e]
	var gc020=["Red Oxide"]
	var g020=[gi020,gc020]
	var gi021=[0x4f301f, 0x153331e, 0x35c3317]
	var gc021=["Indian Tan", "Brown Bramble", "Baker's Chocolate"]
	var g021=[gi021,gc021]
	var gi022=[0x48531a]
	var gc022=["Verdun Green"]
	var g022=[gi022,gc022]
	var gi023=[]
	var gc023=[]
	var g023=[gi023,gc023]
	var gi024=[0x568203]
	var gc024=["Avocado"]
	var g024=[gi024,gc024]
	var gi025=[0x4cbb17]
	var gc025=["Kelly green"]
	var g025=[gi025,gc025]
	var gi026=[]
	var gc026=[]
	var g026=[gi026,gc026]
	var gi027=[]
	var gc027=[]
	var g027=[gi027,gc027]
	var r02=[g020, g021, g022, g023, g024, g025, g026, g027]
	var gi030=[0x65000b, 0x1660000, 0x2000000, 0x3701c1c, 0x47b1113, 0x57c0a02]
	var gc030=["Rosewood", "Blood red", "Olive Drab", "Prune", "UP maroon", "Barn red"]
	var g030=[gi030,gc030]
	var gi031=[0x6c2e1f, 0x1733d1f, 0x27b3f00]
	var gc031=["Liver (organ)", "Peru Tan", "Chocolate (traditional)"]
	var g031=[gi031,gc031]
	var gi032=[0x644117, 0x1665d1e, 0x26c461f, 0x36c541e, 0x4704214, 0x5734a12]
	var gc032=["Pullman Brown (UPS Brown)", "Antique bronze", "Antique Brass", "Field drab", "Sepia", "Raw Umber"]
	var g032=[gi032,gc032]
	var gi033=[]
	var gc033=[]
	var g033=[gi033,gc033]
	var gi034=[]
	var gc034=[]
	var g034=[gi034,gc034]
	var gi035=[0x71a91d]
	var gc035=["Christi"]
	var g035=[gi035,gc035]
	var gi036=[]
	var gc036=[]
	var g036=[gi036,gc036]
	var gi037=[0x66ff00, 0x17cfc00, 0x27fff00]
	var gc037=["Bright green", "Lawn green", "Chartreuse (web)"]
	var g037=[gi037,gc037]
	var r03=[g030, g031, g032, g033, g034, g035, g036, g037]
	var gi040=[0x800000, 0x1801818, 0x2841617, 0x38b0000, 0x492000a, 0x5960018, 0x69b111e]
	var gc040=["Maroon (web)", "Falu red", "OU Crimson red", "Dark red", "Sangria", "Carmine", "Ruby red"]
	var g040=[gi040,gc040]
	var gi041=[0x882d17]
	var gc041=["Sienna"]
	var g041=[gi041,gc041]
	var gi042=[0x80461b, 0x187421f, 0x288540b, 0x38b4513]
	var gc042=["Russet", "Fuzzy Wuzzy", "Brown", "Saddle brown"]
	var g042=[gi042,gc042]
	var gi043=[0x967117, 0x1996515]
	var gc043=["Sand dune", "Golden brown"]
	var g043=[gi043,gc043]
	var gi044=[0x808000]
	var gc044=["Olive"]
	var g044=[gi044,gc044]
	var gi045=[0x8db600, 0x19fa91f, 0x29fb70a]
	var gc045=["Apple green", "Citron", "Citrus"]
	var g045=[gi045,gc045]
	var gi046=[0x8fd400]
	var gc046=["Sheen green"]
	var g046=[gi046,gc046]
	var gi047=[]
	var gc047=[]
	var g047=[gi047,gc047]
	var r04=[g040, g041, g042, g043, g044, g045, g046, g047]
	var gi050=[0xa81c07, 0x1a91101, 0x2b31b1b, 0x3ba160c]
	var gc050=["Rufous", "Rojo Spanish red", "Cornell red", "International orange (engineering)"]
	var g050=[gi050,gc050]
	var gi051=[0xaa381e]
	var gc051=["Chinese red"]
	var g051=[gi051,gc051]
	var gi052=[0xa75502, 0x1b7410e]
	var gc052=["Windsor tan", "Rust"]
	var g052=[gi052,gc052]
	var gi053=[0xa57c00]
	var gc053=["Gold"]
	var g053=[gi053,gc053]
	var gi054=[0xab9a1c, 0x1b8860b, 0x2bc9b1b]
	var gc054=["Lucky", "Dark goldenrod", "Buddha Gold"]
	var g054=[gi054,gc054]
	var gi055=[0xb0bf1a]
	var gc055=["Acid green"]
	var g055=[gi055,gc055]
	var gi056=[0xa9c01c, 0x1b7c61a, 0x2bac00e]
	var gc056=["Bahia", "Rio Grande", "La Rioja"]
	var g056=[gi056,gc056]
	var gi057=[0xa7fc00, 0x1b0e313, 0x2bfff00]
	var gc057=["Spring bud", "Inch Worm", "Lime (color wheel)"]
	var g057=[gi057,gc057]
	var r05=[g050, g051, g052, g053, g054, g055, g056, g057]
	var gi060=[0xc00000, 0x1c80815, 0x2d40000]
	var gc060=["Free Speech Red", "Venetian red", "Rosso corsa"]
	var g060=[gi060,gc060]
	var gi061=[0xc93413, 0x1d9381e]
	var gc061=["Harley Davidson Orange", "Vermilion"]
	var g061=[gi061,gc061]
	var gi062=[0xc04000, 0x1cb410b, 0x2cc5500, 0x3cd5700, 0x4d44500]
	var gc062=["Mahogany", "Sinopia", "Burnt orange", "Tenne (tawny)", "Syracuse Orange"]
	var g062=[gi062,gc062]
	var gi063=[0xc46210, 0x1d2691e]
	var gc063=["Alloy orange", "Cocoa brown"]
	var g063=[gi063,gc063]
	var gi064=[0xda9100]
	var gc064=["Harvest gold"]
	var g064=[gi064,gc064]
	var gi065=[0xcca01d]
	var gc065=["Lemon curry"]
	var g065=[gi065,gc065]
	var gi066=[0xd0c117, 0x1d2c61f, 0x2dac01a]
	var gc066=["Bird Flower", "Barberry", "Sunflower"]
	var g066=[gi066,gc066]
	var gi067=[0xcae00d, 0x1ccff00, 0x2ceff00, 0x3d0ff14, 0x4dfff00]
	var gc067=["Bitter lemon", "Electric lime", "Volt", "Arctic lime", "Chartreuse Yellow"]
	var g067=[gi067,gc067]
	var r06=[g060, g061, g062, g063, g064, g065, g066, g067]
	var gi070=[0xff0000, 0x1ff0800]
	var gc070=["Red", "Candy apple red"]
	var g070=[gi070,gc070]
	var gi071=[0xfe2712, 0x1ff2400, 0x2ff3800]
	var gc071=["Red (RYB)", "Scarlet", "Coquelicot"]
	var g071=[gi071,gc071]
	var gi072=[0xec5800, 0x1ff4500, 0x2ff4d00, 0x3ff4f00, 0x4ff5800]
	var gc072=["Persimmon", "Red-orange (Color wheel)", "Vermilion", "International orange (aerospace)", "Orange (Pantone)"]
	var g072=[gi072,gc072]
	var gi073=[0xe77200, 0x1e86100, 0x2ff6600, 0x3ff6700, 0x4ff681f, 0x5ff7518, 0x6ff7800, 0x7ff7a00, 0x8ff7e00, 0x9ff7f00]
	var gc073=["Mango Tango", "Spanish orange", "Safety Orange", "Safety orange (blaze orange)", "Red-orange (Crayola)", "Pumpkin", "Safety orange", "Heat Wave", "Amber (SAE/ECE)", "Orange"]
	var g073=[gi073,gc073]
	var gi074=[0xe48400, 0x1e49b0f, 0x2f28500, 0x3ff8c00, 0x4ff9505, 0x5ff9f00]
	var gc074=["Fulvous", "Gamboge", "Tangerine", "Dark orange", "Yellow Orange (Color Wheel)", "Orange peel"]
	var g074=[gi074,gc074]
	var gi075=[0xf5bd1f, 0x1fdbe02, 0x2ffa000, 0x3ffa500, 0x4ffa700, 0x5ffa812, 0x6ffaa1d, 0x7ffb200, 0x8ffba00, 0x9ffbf00]
	var gc075=["Orange-yellow", "Mango", "Orange Peel", "Orange (web)", "Chrome yellow", "Dark Tangerine", "Bright yellow (Crayola)", "Chinese yellow", "Selective yellow", "Amber"]
	var g075=[gi075,gc075]
	var gi076=[0xe4d00a, 0x1eed202, 0x2efcc00, 0x3f4ca16, 0x4fcc200, 0x5fedf00, 0x6ffc40c, 0x7ffcc00, 0x8ffd300, 0x9ffd700, 0xaffd800, 0xbffdb00, 0xcffdf00]
	var gc076=["Citrine", "Safety yellow", "Yellow (Munsell)", "Jonquil", "Golden poppy", "Yellow (Pantone)", "Mikado yellow", "Tangerine Yellow", "Yellow (NCS)", "Gold (web) (Golden)", "School bus yellow", "Sizzling Sunrise", "Golden yellow"]
	var g076=[gi076,gc076]
	var gi077=[0xeee600, 0x1eeed09, 0x2fde910, 0x3fdee00, 0x4fdff00, 0x5ffeb00, 0x6ffef00, 0x7fff600, 0x8fff700, 0x9ffff00]
	var gc077=["Titanium yellow", "Xanthic", "Lemon", "Aureolin", "Lemon glacier", "Middle yellow", "Yellow (process)", "Cadmium yellow", "Yellow Sunshine", "Yellow"]
	var g077=[gi077,gc077]
	var r07=[g070, g071, g072, g073, g074, g075, g076, g077]
	var b0=[r00, r01, r02, r03, r04, r05, r06, r07]
	var gi100=[]
	var gc100=[]
	var g100=[gi100,gc100]
	var gi101=[0x13220, 0x1043927, 0x2123524, 0x3193925, 0x41a2421, 0x51b3427, 0x61d393c, 0x71e272c, 0x81e2f3c]
	var gc101=["Dark green", "Sacramento State green", "Phthalo green", "Deep Fir", "Dark jungle green", "Cardin Green", "Nordic", "Black Pearl", "Tangaroa"]
	var g101=[gi101,gc101]
	var gi102=[0x4225, 0x100563f, 0x2014421, 0x3165b31, 0x417462e, 0x518453b, 0x619443c, 0x71b4636, 0x81b4b35, 0x91b4d3e]
	var gc102=["British racing green", "Castleton green", "UP Forest green", "Crusoe", "Zuccini", "MSU green", "Deep Teal", "Sherwood Green", "County Green", "English green"]
	var g102=[gi102,gc102]
	var gi103=[0x6b3c, 0x100703c, 0x215633d]
	var gc103=["Cadmium green", "Dartmouth green", "Fun Green"]
	var g103=[gi103,gc103]
	var gi104=[]
	var gc104=[]
	var g104=[gi104,gc104]
	var gi105=[]
	var gc105=[]
	var g105=[gi105,gc105]
	var gi106=[0x3c03c]
	var gc106=["Dark pastel green"]
	var g106=[gi106,gc106]
	var gi107=[]
	var gc107=[]
	var g107=[gi107,gc107]
	var r10=[g100, g101, g102, g103, g104, g105, g106, g107]
	var gi110=[0x2e183b, 0x1301934]
	var gc110=["Blackcurrant", "Dark purple"]
	var g110=[gi110,gc110]
	var gi111=[0x20392c, 0x121263a, 0x221303e, 0x3232b2b, 0x4232e26, 0x5232f2c, 0x6242124, 0x724252b, 0x8242a2e, 0x9242e28, 0xa252525, 0xb252f2f, 0xc25342b, 0xd262b2f, 0xe28353a, 0xf29292f, 0x10292c2f, 0x1129332b, 0x12293432, 0x132a2725, 0x142a2922, 0x152a2f23, 0x162a3439, 0x172b2e25, 0x182b2e26, 0x192b3230, 0x1a2b3f36, 0x1b2c2a35, 0x1c2c2c32, 0x1d2c2d24, 0x1e2c2d3c, 0x1f2c3227, 0x202c3539, 0x212d2d24, 0x222d2f28, 0x232d3032, 0x242d383a, 0x25302621, 0x26312a29, 0x27313330, 0x28313337, 0x29322c2b, 0x2a323438, 0x2b332c22, 0x2c332e2e, 0x2d342931, 0x2e343434, 0x2f34363a, 0x30352235, 0x3135312c, 0x32353839, 0x33362d26, 0x3436383c, 0x35372528, 0x36373332, 0x3737363f, 0x38382c38, 0x39383428, 0x3a393227, 0x3b39392c, 0x3c393b3c, 0x3d393d2a, 0x3e393e2e, 0x3f3a3532, 0x403b2b2c, 0x413b2e25, 0x423b2f2f, 0x433b3c36, 0x443b3c38, 0x453c2126, 0x463c2f23, 0x473c3b3c, 0x483c3d3e, 0x493e2631, 0x4a3f3623, 0x4b3f3726, 0x4c3f3939]
	var gc111=["Palm Green", "Midnight Express", "Midnight", "Charleston green", "Black Bean", "Racing Green", "Raisin black", "Black Russian", "Cinder", "Midnight Moss", "Nero", "Swamp", "Holly", "Blue Charcoal", "Oxford Blue", "Jaguar", "Bunker", "Gordons Green", "Aztec", "Bokara Grey", "Maire", "Pine tree", "Gunmetal", "Rangoon Green", "Marshland", "Woodsmoke", "Celtic", "Haiti", "Bastille", "Green Waterloo", "Black Rock", "Black Forest", "Gunmetal", "Karaka", "Eternity", "Cod Grey", "Outer space (Crayola)", "Wood Bark", "Livid Brown", "Oil", "Ebony", "Diesel", "Ebony Clay", "Black Magic", "Night Rider", "Melanzane", "Jet", "Shark", "Mardi Gras", "Acadia", "Onyx", "Coffee Bean", "Vulcan", "Aubergine", "Gondola", "Revolver", "Valentino", "Graphite", "Creole", "El Paso", "Montana", "Green Kelp", "Log Cabin", "Kilamanjaro", "Havana", "Sambuca", "Black coffee", "Black olive", "Zeus", "Temptress", "Cola", "Fuscous Grey", "Baltic Sea", "Toledo", "Mikado", "Birch", "Eclipse"]
	var g111=[gi111,gc111]
	var gi112=[0x234537, 0x1245336, 0x2254636, 0x3264334, 0x4274234, 0x5305d35, 0x6324336, 0x734533d, 0x8354230, 0x9355e3b, 0xa36482f, 0xb37412a, 0xc3a4531, 0xd3d4031]
	var gc112=["Burnham", "Kaitoke Green", "Bottle Green", "Everglade", "English Holly", "Parsley", "Timber Green", "Goblin", "Kombu green", "Hunter green", "Palm Leaf", "Seaweed", "Mallard", "Scrub"]
	var g112=[gi112,gc112]
	var gi113=[0x206937, 0x12c6e31, 0x22f7532, 0x33e6334]
	var gc113=["Camarone", "San Felix", "Japanese Laurel", "Green House"]
	var g113=[gi113,gc113]
	var gi114=[0x228b22, 0x13e8027]
	var gc114=["Forest green (web)", "Bilbao"]
	var g114=[gi114,gc114]
	var gi115=[]
	var gc115=[]
	var g115=[gi115,gc115]
	var gi116=[0x32cd32]
	var gc116=["Lime green"]
	var g116=[gi116,gc116]
	var gi117=[]
	var gc117=[]
	var g117=[gi117,gc117]
	var r11=[g110, g111, g112, g113, g114, g115, g116, g117]
	var gi120=[0x43182f, 0x14c1c24]
	var gc120=["Blackberry", "Bordeaux"]
	var g120=[gi120,gc120]
	var gi121=[0x413628, 0x142342b, 0x243302e, 0x344232f, 0x4442d21, 0x544362d, 0x6443736, 0x7452e39, 0x8453430, 0x945362b, 0xa463430, 0xb463623, 0xc463629, 0xd463d3e, 0xe473e23, 0xf482427, 0x10483c32, 0x114a2e32, 0x124b3621, 0x134d3e3c, 0x144e2728, 0x154e312d, 0x164f2a2c, 0x174f3835, 0x18522426, 0x19522c35, 0x1a523936, 0x1b532934, 0x1c543d37, 0x1d582124, 0x1e582f2b, 0x1f592720, 0x205b342e, 0x215b3a24, 0x225b3d27, 0x235d3b2e, 0x245f2c2f]
	var gc121=["Jacko Bean", "Slugger", "Old burgundy", "Castro", "Morocco Brown", "Tobago", "Cowboy", "Barossa", "Rebel", "Dark Rum", "Cedar", "Clinker", "Woodburn", "Jon", "Madras", "Bulgarian Rose", "Taupe", "Cab Sav", "Cafe noir", "Crater Brown", "Volcano", "Espresso", "Heath", "Cocoa Bean", "Lonestar", "Wine Berry", "Van Cleef", "Black Rose", "Dark liver (horses)", "Burnt Crimson", "Moccaccino", "Caput mortuum", "Redwood", "Carnaby Tan", "Bracken", "Cioccolato", "Jazz"]
	var g121=[gi121,gc121]
	var gi122=[0x434c28, 0x1444c38, 0x245402b, 0x346473e, 0x447562f, 0x548412b, 0x64a5d23, 0x74b433b, 0x84b5320, 0x94c4e31, 0xa4d503c, 0xb4f4037, 0xc4f4d32, 0xd51412d, 0xe534931, 0xf544e31, 0x10544f3a, 0x11554a3c, 0x12555b2c, 0x13584c25, 0x14594537, 0x155c4033, 0x165c512f]
	var gc122=["Bronzetone", "Rifle green", "Woodrush", "Heavy Metal", "Clover", "Onion", "Dark moss green", "Space Shuttle", "Army green", "Waiouru", "Kelp", "Paco", "Camouflage", "Deep Bronze", "Punga", "Thatch Green", "Panda", "Metallic Bronze", "Saratoga", "Bronze Olive", "Brown Derby", "Very Dark Brown", "West Coast"]
	var g122=[gi122,gc122]
	var gi123=[0x486531, 0x1507d2a, 0x2526b2d, 0x3556b2f]
	var gc123=["Dell", "Sap green", "Green Leaf", "Dark olive green"]
	var g123=[gi123,gc123]
	var gi124=[0x428929, 0x15e8c31, 0x25f9228, 0x35f9727]
	var gc124=["La Palma", "Maximum green", "Vida Loca", "Limeade"]
	var g124=[gi124,gc124]
	var gi125=[]
	var gc125=[]
	var g125=[gi125,gc125]
	var gi126=[]
	var gc126=[]
	var g126=[gi126,gc126]
	var gi127=[]
	var gc127=[]
	var g127=[gi127,gc127]
	var r12=[g120, g121, g122, g123, g124, g125, g126, g127]
	var gi130=[0x651c26, 0x166023c, 0x2701f28, 0x37f1734]
	var gc130=["Pohutukawa", "Tyrian purple", "Red Berry", "Claret"]
	var g130=[gi130,gc130]
	var gi131=[0x633528, 0x1662a2c, 0x2683332, 0x369293b, 0x46b252c, 0x56c322e, 0x66c3736, 0x76d3b24, 0x86e2233, 0x96e3326, 0xa6e3d34, 0xb6f372d, 0xc712f2c, 0xd722f37, 0xe73343a, 0xf752b2f, 0x10763c33, 0x11782e2c, 0x127c2d37, 0x137e2530]
	var gc131=["Hairy Heath", "Red Devil", "Persian Plum", "Siren", "Monarch", "Kenyan Copper", "Sanguine Brown", "New Amber", "Claret", "Pueblo", "Metallic Copper", "Mocha", "Auburn", "Wine", "Merlot", "Tamarillo", "Crown Of Thorns", "Lusty", "Paprika", "Scarlett"]
	var g131=[gi131,gc131]
	var gi132=[0x62422b, 0x1625d2a, 0x2654321, 0x3664228, 0x4664a2d, 0x5674834, 0x66a4928, 0x76b4226, 0x86b4423, 0x96c4f3f, 0xa6d562c, 0xb6f4e37, 0xc73503b, 0xd745937, 0xe75442b, 0xf75482f, 0x1077422c, 0x11784430, 0x1279443b, 0x137a4434, 0x147d4138, 0x157d4e38, 0x167e4a3b]
	var gc132=["Irish Coffee", "Costa Del Sol", "Dark brown", "Van Dyke brown", "Dallas", "Jambalaya", "Cafe Royale", "Semi-Sweet Chocolate", "Kobicha", "Spice", "Horses Neck", "Tuscan brown", "Old Copper", "Shingle Fawn", "Bull Shot", "Cape Palliser", "Copper Canyon", "Cumin", "Bole", "Peanut", "Red Robin", "Cigar", "Nutmeg"]
	var g132=[gi132,gc132]
	var gi133=[0x62603e, 0x1636f22, 0x2667028, 0x3736330, 0x473633e, 0x5747028, 0x677712b, 0x77a7229]
	var gc133=["Verdigris", "Fiji Green", "Rain Forest", "Himalaya", "Yellow Metal", "Olivetone", "Crete", "Pesto"]
	var g133=[gi133,gc133]
	var gi134=[0x6b8e23, 0x17c9f2f, 0x27e8424]
	var gc134=["Olive Drab", "Sushi", "Trendy Green"]
	var g134=[gi134,gc134]
	var gi135=[0x66b032, 0x17aac21]
	var gc135=["Green (RYB)", "Lima"]
	var g135=[gi135,gc135]
	var gi136=[]
	var gc136=[]
	var g136=[gi136,gc136]
	var gi137=[]
	var gc137=[]
	var g137=[gi137,gc137]
	var r13=[g130, g131, g132, g133, g134, g135, g136, g137]
	var gi140=[0x800020, 0x1841b2d, 0x29e1b32, 0x39f1d35]
	var gc140=["Oxblood", "Antique ruby", "Crimson (UA)", "Vivid burgundy"]
	var g140=[gi140,gc140]
	var gi141=[0x833d3e, 0x1842833, 0x2853534, 0x386282e, 0x487382f, 0x5883c32, 0x68a3324, 0x78a3335, 0x88e2323, 0x98e3537, 0xa8f3f2a, 0xb922a31, 0xc922b3e, 0xd923830, 0xe952e31, 0xf9b3d3d, 0x109d2933, 0x119e3332]
	var gc141=["Stiletto", "Shiraz", "Tall Poppy", "Flame Red", "Crab Apple", "Prairie Sand", "Burnt umber", "Old Brick", "Mandarian Orange", "Well Read", "Fire", "Bright Red", "Red-violet (Color wheel)", "Thunderbird", "Guardsman Red", "Mexican Red", "Japanese carmine", "Milano Red"]
	var g141=[gi141,gc141]
	var gi142=[0x804e2c, 0x1815b28, 0x2864b36, 0x387413f, 0x48d5f2c, 0x58e593c, 0x6905e26, 0x7954535, 0x8954e2c, 0x995532f, 0xa97422d, 0xb97463c, 0xc99522b, 0xd9a463d, 0xe9c5b34, 0xf9d442d, 0x109d5432]
	var gc142=["Korma", "Hot Curry", "Paarl", "Brandy", "Rusty Nail", "Rope", "Afghan Tan", "Chestnut", "Alert Tan", "Chelsea Gem", "Tia Maria", "Mojo", "Hawaiian Tan", "Cognac", "Indochine", "Rock Spray", "Piper"]
	var g142=[gi142,gc142]
	var gi143=[0x807532, 0x181613c, 0x2826a21, 0x38c6338, 0x48d702a, 0x59c7c38, 0x69d702e]
	var gc143=["Spanish bistre", "Coyote brown", "Yukon Gold", "McKenzie", "Corn Harvest", "Metallic Sunburst", "Buttered Rum"]
	var g143=[gi143,gc143]
	var gi144=[0x849137, 0x18e9a21, 0x2928c3c, 0x3968428, 0x49e8022]
	var gc144=["Wasabi", "Citron", "Highball", "Lemon Ginger", "Hacienda"]
	var g144=[gi144,gc144]
	var gi145=[0x89ac27]
	var gc145=["Limerick"]
	var g145=[gi145,gc145]
	var gi146=[0x9acd32, 0x19cd03b]
	var gc146=["Yellow-green", "Atlantis"]
	var g146=[gi146,gc146]
	var gi147=[0x87ff2a, 0x19efd38]
	var gc147=["Spring Frost", "French lime"]
	var g147=[gi147,gc147]
	var r14=[g140, g141, g142, g143, g144, g145, g146, g147]
	var gi150=[0xa50021]
	var gc150=["University of Pennsylvania red"]
	var g150=[gi150,gc150]
	var gi151=[0xa52a2a, 0x1a83731, 0x2ae2029, 0x3b22222]
	var gc151=["Brown", "Sweet Brown", "Upsdell red", "Firebrick"]
	var g151=[gi151,gc151]
	var gi152=[0xa0522d, 0x1a15226, 0x2a15f3b, 0x3a85335, 0x4a85533, 0x5ac512d, 0x6ad522e, 0x7af4035, 0x8b1592f, 0x9bb5f34]
	var gc152=["Sienna", "Rich Gold", "Desert", "Orange Roughy", "Vesuvius", "Rose Of Sharon", "Red Stage", "Medium carmine", "Fiery Orange", "Smoke Tree"]
	var g152=[gi152,gc152]
	var gi153=[0xa56531, 0x1a7752c, 0x2af6c3e, 0x3b26e33, 0x4b57b2e, 0x5b86d29, 0x6b87333, 0x7ba782a, 0x8bb7431, 0x9bf652e]
	var gc153=["Mai Tai", "Hot Toddy", "Bourbon", "Reno Sand", "Mandalay", "Liver (dogs)", "Copper", "Pirate Gold", "Meteor", "Christine"]
	var g153=[gi153,gc153]
	var gi154=[0xa98d36, 0x1ab8d3f, 0x2ad8a3b, 0x3b79826, 0x4b88a3d, 0x5bb8e34, 0x6bc9229, 0x7bf8d3c]
	var gc154=["Reef Gold", "Luxor Gold", "Alpine", "Sahara", "Marigold", "Hokey Pokey", "Nugget", "Pizza"]
	var g154=[gi154,gc154]
	var gi155=[0xb8a722]
	var gc155=["Earls Green"]
	var g155=[gi155,gc155]
	var gi156=[0xa4c639]
	var gc156=["Android green"]
	var g156=[gi156,gc156]
	var gi157=[0xa7f432, 0x1adff2f]
	var gc157=["Green Lizard", "Green-yellow"]
	var g157=[gi157,gc157]
	var r15=[g150, g151, g152, g153, g154, g155, g156, g157]
	var gi160=[0xc40233, 0x1c41e3a, 0x2ce1620, 0x3cf1020, 0x4dc143c]
	var gc160=["Red (NCS)", "Cardinal", "Fire Engine Red", "Lava", "Crimson"]
	var g160=[gi160,gc160]
	var gi161=[0xc0362c, 0x1ca3435, 0x2cc3333, 0x3cc3336, 0x4ce2029, 0x5d3212d, 0x6d92121]
	var gc161=["International orange (Golden Gate Bridge)", "Mahogany", "Persian red", "Madder Lake", "Fire engine red", "Amaranth red", "Maximum red"]
	var g161=[gi161,gc161]
	var gi162=[0xc14d36, 0x1c54f33, 0x2d05e34]
	var gc162=["Grenadier", "Trinidad", "Chilean Fire"]
	var g162=[gi162,gc162]
	var gi163=[0xc6723b, 0x1c96138, 0x2cc7722, 0x3cd7f32, 0x4d46f31, 0x5d56c30, 0x6dc722a, 0x7dd6b38]
	var gc163=["Zest", "Ecstasy", "Ochre", "Bronze", "Tango", "Gold Drop", "Tahiti Gold", "Sorbus"]
	var g163=[gi163,gc163]
	var gi164=[0xc5832e, 0x1c68e3f, 0x2ca8136, 0x3cd8431, 0x4cd853f, 0x5d19033, 0x6da9429]
	var gc164=["Geebung", "Anzac", "Golden Bell", "Dixie", "Peru", "Fuel Yellow", "Buttercup"]
	var g164=[gi164,gc164]
	var gi165=[0xcba135, 0x1cfb53b, 0x2d3af37, 0x3d4af37, 0x4d8a723, 0x5daa520]
	var gc165=["Satin sheen gold", "Old gold", "Metallic gold", "Metallic Gold", "Galliano", "Goldenrod"]
	var g165=[gi165,gc165]
	var gi166=[0xc2d62e, 0x1c6da36, 0x2d2db32, 0x3d6ca3d]
	var gc166=["Fuego", "Las Palmas", "Bitter Lemon", "Wattle"]
	var g166=[gi166,gc166]
	var gi167=[0xd1e231]
	var gc167=["Pear"]
	var g167=[gi167,gc167]
	var r16=[g160, g161, g162, g163, g164, g165, g166, g167]
	var gi170=[0xe2062c, 0x1e30022, 0x2e60026, 0x3ed1c24, 0x4f2003c, 0x5fd0e35]
	var gc170=["Medium candy apple red", "Cadmium red", "Spanish red", "Red (pigment)", "Red (Munsell)", "Torch Red"]
	var g170=[gi170,gc170]
	var gi171=[0xe03c31, 0x1e12c2c, 0x2e23d28, 0x3e32636, 0x4ed2939, 0x5ff3f34]
	var gc171=["CG red", "Permanent Geranium Lake", "Chocolate Cosmos", "Rose madder", "Red (Pantone)", "Red Orange"]
	var g171=[gi171,gc171]
	var gi172=[0xe25822, 0x1e34234, 0x2fa5b3d, 0x3ff5a36]
	var gc172=["Flame", "Vermilion", "Orange soda", "Portland Orange"]
	var g172=[gi172,gc172]
	var gi173=[0xe57f3d, 0x1ff6037, 0x2ff7034, 0x3ff7538]
	var gc173=["Pizazz", "Outrageous Orange", "Burnt Orange", "Orange (Crayola)"]
	var g173=[gi173,gc173]
	var gi174=[0xe2813b, 0x1e5823a, 0x2e98c3a, 0x3ed872d, 0x4ed9121, 0x5ef8e38, 0x6f49f35, 0x7f58025, 0x8ff9933]
	var gc174=["Tree Poppy", "West Side", "California", "Cadmium orange", "Carrot orange", "Sun", "Yellow Sea", "Princeton orange", "Neon Carrot"]
	var g174=[gi174,gc174]
	var gi175=[0xe2b227, 0x1e3ac3d, 0x2eaa221, 0x3ecbd2c, 0x4f7a233, 0x5ffb437]
	var gc175=["Gold Tips", "Tulip Tree", "Marigold", "Bright Sun", "Lightning Yellow", "Supernova"]
	var g175=[gi175,gc175]
	var gi176=[0xe3dd39, 0x1ebde31, 0x2eecc24, 0x3f0c420, 0x4f1cc2b, 0x5f4c430, 0x6f5cc23, 0x7ffcc33]
	var gc176=["Starship", "Golden Fizz", "Broom", "Moon Yellow", "Golden Dream", "Saffron", "Turbo", "Sunglow"]
	var g176=[gi176,gc176]
	var gi177=[0xfafa37, 0x1fde336, 0x2fefe33]
	var gc177=["Maximum yellow", "Gorse", "Yellow (RYB)"]
	var g177=[gi177,gc177]
	var r17=[g170, g171, g172, g173, g174, g175, g176, g177]
	var b1=[r10, r11, r12, r13, r14, r15, r16, r17]
	var gi200=[]
	var gc200=[]
	var g200=[gi200,gc200]
	var gi201=[0x2147, 0x1003153, 0x21d2951, 0x31e3442]
	var gc201=["Oxford blue", "Prussian blue", "Space cadet", "Blue Whale"]
	var g201=[gi201,gc201]
	var gi202=[0x4040, 0x1004242, 0x200494e, 0x3004953, 0x4004b49, 0x5005f5b, 0x6064e40, 0x70f4645, 0x8184343]
	var gc202=["Rich black", "Warm black", "Sherpa Blue", "Midnight green (eagle green)", "Deep jungle green", "Mosque", "Blue-green (color wheel)", "Cyprus", "Tiber"]
	var g202=[gi202,gc202]
	var gi203=[0x6a4e, 0x1006e4e, 0x200755e, 0x3007f5c, 0x4136843, 0x5177245, 0x6177b4d]
	var gc203=["Bottle green", "Watercourse", "Tropical rainforest", "Spanish viridian", "Jewel", "Dark spring green", "Salem"]
	var g203=[gi203,gc203]
	var gi204=[0x9150]
	var gc204=["Spanish green"]
	var g204=[gi204,gc204]
	var gi205=[0xa550, 0x100ad43]
	var gc205=["Pigment Green", "Green (Pantone)"]
	var g205=[gi205,gc205]
	var gi206=[0xbda51]
	var gc206=["Malachite"]
	var g206=[gi206,gc206]
	var gi207=[0xff40]
	var gc207=["Erin"]
	var g207=[gi207,gc207]
	var r20=[g200, g201, g202, g203, g204, g205, g206, g207]
	var gi210=[0x32174d]
	var gc210=["Russian violet"]
	var g210=[gi210,gc210]
	var gi211=[0x203f58, 0x1243640, 0x2253c48, 0x3253f4e, 0x4273c5a, 0x5292d4f, 0x62a2551, 0x72a2b41, 0x82b3449, 0x92d2541, 0xa2d3c54, 0xb2e2249, 0xc2e3749, 0xd2f3c53, 0xe343f5c, 0xf353e4f, 0x10372d52, 0x11373e41, 0x12373f43, 0x13383740, 0x143c3748, 0x153d325d, 0x163f2e4c]
	var gc211=["Regal Blue", "Elephant", "Tarawera", "Nile Blue", "Catalina Blue", "Lucky Point", "Paua", "Valhalla", "Bunting", "Tolopea", "Madison", "Violent Violet", "Licorice", "Biscay", "Gulf Blue", "Cloud Burst", "Cherry Pie", "Mine Shaft", "Mirage", "Black Marlin", "Martinique", "Jacarta", "Jagger"]
	var g211=[gi211,gc211]
	var gi212=[0x214559, 0x123414e, 0x2254855, 0x3274a5d, 0x42b4b40, 0x52c4641, 0x62f4f4f, 0x7314643, 0x8334046, 0x935514f, 0xa36454f, 0xb375d4f, 0xc394043, 0xd395555, 0xe3a4e5f, 0xf3b444b, 0x103c4354, 0x113d4653, 0x123d4b52, 0x133e594c, 0x143f545a]
	var gc212=["Astronaut Blue", "Green Vogue", "Teal Blue", "Arapawa", "Te Papa Green", "Gable Green", "Dark Slate Grey", "Firefly", "Big Stone", "Blue Dianne", "Charcoal", "Spectra", "Charade", "Oracle", "Cello", "Arsenic", "Blue Zodiac", "Rhino", "Atomic", "Plantation", "Casal"]
	var g212=[gi212,gc212]
	var gi213=[0x26604f, 0x1266242, 0x2266255, 0x3387b54, 0x43b7a57]
	var gc213=["Evening Sea", "Green Pea", "Eden", "Amazon", "Amazon"]
	var g213=[gi213,gc213]
	var gi214=[0x2e8b57]
	var gc214=["Sea green"]
	var g214=[gi214,gc214]
	var gi215=[]
	var gc215=[]
	var g215=[gi215,gc215]
	var gi216=[]
	var gc216=[]
	var g216=[gi216,gc216]
	var gi217=[]
	var gc217=[]
	var g217=[gi217,gc217]
	var r21=[g210, g211, g212, g213, g214, g215, g216, g217]
	var gi220=[]
	var gc220=[]
	var g220=[gi220,gc220]
	var gi221=[0x413d4b, 0x1443240, 0x24a2d57, 0x34c3347, 0x44c3d4e, 0x54e2e53, 0x6563c5c, 0x75b3256, 0x85d3954]
	var gc221=["Grape", "Voodoo", "Scarlet Gum", "Loulou", "Bossanova", "Hot Purple", "English violet", "Japanese violet", "Dark byzantium"]
	var g221=[gi221,gc221]
	var gi222=[0x404048, 0x1404d49, 0x243464b, 0x3454642, 0x4464646, 0x546494e, 0x6465352, 0x7465945, 0x8484753, 0x9484a46, 0xa4a4b46, 0xb4b5f56, 0xc4c5356, 0xd4c5544, 0xe4d4d4b, 0xf4d5d53, 0x104e4e4c, 0x114e5541, 0x124e5552, 0x134e5d4e, 0x144f4e48, 0x1550404d, 0x1650494a, 0x17505555, 0x18514f4a, 0x1951574f, 0x1a524b4b, 0x1b524d5b, 0x1c534b4f, 0x1d554545, 0x1e554d42, 0x1f555555, 0x20555d50, 0x21565051, 0x2257534b, 0x2357595d, 0x24585452, 0x25595648, 0x265a4c42, 0x275a4d41, 0x285a4f51, 0x295b5d56, 0x2a5d4e46, 0x2b5d5346]
	var gc222=["Payne's Grey", "Corduroy", "Steel Grey", "Tuatara", "Charcoal", "Tuna", "Dark Slate", "Grey-Asparagus", "Gun Powder", "Armadillo", "Gravel", "Viridian Green", "Trout", "Cabbage Pont", "Thunder", "Feldgrau", "Ship Grey", "Lunar Green", "Cape Cod", "Nandor", "Merlin", "Purple Taupe", "Emperor", "Mako", "Dune", "Battleship Grey", "Matterhorn", "Mulled Wine", "Liver", "Woody Brown", "Mondo", "Davy's grey", "Ebony", "Mortar", "Masala", "Bright Grey", "Tundora", "Millbrook", "Cork", "Rock", "Don Juan", "Chicago", "Saddle", "Judge Grey"]
	var g222=[gi222,gc222]
	var gi223=[0x406356, 0x149764f, 0x24c785c, 0x34f6348, 0x44f7942, 0x5506355, 0x65a6e41, 0x75b6f55]
	var gc223=["Stromboli", "Killarney", "Como", "Tom Thumb", "Fern green", "Mineral Green", "Chalet Green", "Cactus"]
	var g223=[gi223,gc223]
	var gi224=[0x419f59, 0x14c9141, 0x24d8c57, 0x35f8151]
	var gc224=["Chateau Green", "May green", "Middle green", "Glade Green"]
	var g224=[gi224,gc224]
	var gi225=[0x4ba351]
	var gc225=["Fruit Salad"]
	var g225=[gi225,gc225]
	var gi226=[]
	var gc226=[]
	var g226=[gi226,gc226]
	var gi227=[]
	var gc227=[]
	var g227=[gi227,gc227]
	var r22=[g220, g221, g222, g223, g224, g225, g226, g227]
	var gi230=[0x6a1f44, 0x178184a]
	var gc230=["Pompadour", "Pansy purple"]
	var g230=[gi230,gc230]
	var gi231=[0x643a48, 0x1673147, 0x2703642, 0x37a2e4d]
	var gc231=["Tawny Port", "Wine dregs", "Catawba", "Flirt"]
	var g231=[gi231,gc231]
	var gi232=[0x614051, 0x1635147, 0x2654d49, 0x3674846, 0x4674c47, 0x5694554, 0x6695f50, 0x76a5445, 0x86b5a5a, 0x96c5b4c, 0xa6c5e53, 0xb6d5843, 0xc6e5150, 0xd6e5a5b, 0xe6e5f56, 0xf744042, 0x107c4848]
	var gc232=["Eggplant", "Umber", "Congo Brown", "Rose ebony", "Liver", "Finn", "Makara", "Quincy", "Zambezi", "Domino", "Kabul", "Tobacco Brown", "Buccaneer", "Falcon", "Dorado", "Tosca", "Tuscan red"]
	var g232=[gi232,gc232]
	var gi233=[0x607c47, 0x161755b, 0x2626746, 0x363775a, 0x465645f, 0x5686b50, 0x669684b, 0x769755c, 0x86f634b, 0x9706950, 0xa726751, 0xb756556, 0xc75785a, 0xd766d52, 0xe786d5f, 0xf786e4c, 0x107a715c, 0x117b785a, 0x127d655c, 0x137d6757]
	var gc233=["Dingley", "Finlandia", "Woodland", "Axolotl", "Storm Dust", "Siam", "Hemlock", "Willow Grove", "Soya Bean", "Crocodile", "Coffee", "Pine Cone", "Finch", "Peat", "Sandstone", "Go Ben", "Pablo", "Kokoda", "Russett", "Roman Coffee"]
	var g233=[gi233,gc233]
	var gi234=[0x608a5a]
	var gc234=["Hippie Green"]
	var g234=[gi234,gc234]
	var gi235=[0x66b348, 0x17ba05b]
	var gc235=["Apple", "Asparagus"]
	var g235=[gi235,gc235]
	var gi236=[0x7fc15c]
	var gc236=["Mantis"]
	var g236=[gi236,gc236]
	var gi237=[]
	var gc237=[]
	var g237=[gi237,gc237]
	var r23=[g230, g231, g232, g233, g234, g235, g236, g237]
	var gi240=[]
	var gc240=[]
	var g240=[gi240,gc240]
	var gi241=[0x803a4b, 0x1892d4f, 0x2893843, 0x3893f45, 0x48a2d52, 0x58e3a59, 0x6962c54, 0x79c2542]
	var gc241=["Camelot", "Disco", "Solid pink", "Cordovan", "Rose Bud Cherry", "Quinacridone magenta", "Lipstick", "Big dip o'ruby"]
	var g241=[gi241,gc241]
	var gi242=[0x845c40, 0x185494c, 0x2855e42, 0x3865040, 0x4884f40, 0x58b504b, 0x68b5f4d, 0x78e4d45, 0x88f4e45, 0x9905d5d, 0xa95524c, 0xb9e5b40]
	var gc242=["Potters Clay", "Solid Pink", "Dark Wood", "Ironstone", "Mule Fawn", "Lotus", "Spicy Mix", "Matrix", "El Salva", "Rose taupe", "Copper Rust", "Sepia"]
	var g242=[gi242,gc242]
	var gi243=[0x816e5c, 0x1826644, 0x2837050, 0x3856d4d, 0x4857158, 0x585754e, 0x6897e59, 0x78a795d, 0x8906a54, 0x9926f5b, 0xa97694f, 0xb987456, 0xc987654, 0xd9e6759, 0xe9e7e53, 0xf9f715f]
	var gc243=["Donkey Brown", "Raw umber", "Shadow", "French bistre", "Cement", "Gold Fusion", "Clay Creek", "Shadow", "Leather", "Beaver", "Dark Tan", "Liver chestnut", "Pale Brown", "Au Chico", "Muesli", "Toast"]
	var g243=[gi243,gc243]
	var gi244=[0x8a9a5b]
	var gc244=["Turtle green"]
	var g244=[gi244,gc244]
	var gi245=[0x88a95b]
	var gc245=["Chelsea Cucumber"]
	var g245=[gi245,gc245]
	var gi246=[]
	var gc246=[]
	var g246=[gi246,gc246]
	var gi247=[]
	var gc247=[]
	var g247=[gi247,gc247]
	var r24=[g240, g241, g242, g243, g244, g245, g246, g247]
	var gi250=[0xa50b5e]
	var gc250=["Jazzberry jam"]
	var g250=[gi250,gc250]
	var gi251=[0xa23d54, 0x1ab274f]
	var gc251=["Night Shadz", "Amaranth purple"]
	var g251=[gi251,gc251]
	var gi252=[0xa14743, 0x1a45a52, 0x2a55353, 0x3a65648, 0x4a95249, 0x5ab495c, 0x6ab4b52, 0x7ab4e52, 0x8b94e48, 0x9be5c48, 0xabf4f51]
	var gc252=["Roof Terracotta", "Redwood", "Middle red purple", "Crail", "Apple Blossom", "Hippie Pink", "English red", "Rose vale", "Deep chestnut", "Flame Pea", "Bittersweet shimmer"]
	var g252=[gi252,gc252]
	var gi253=[0xa67b5b, 0x1a96a50, 0x2ad6242, 0x3af6e4d]
	var gc253=["Tuscan tan", "Sante Fe", "Tuscany", "Brown sugar"]
	var g253=[gi253,gc253]
	var gi254=[0xa9844f, 0x1ab8953, 0x2ae9041, 0x3b2994b, 0x4b6935c, 0x5b69642, 0x6bf914b]
	var gc254=["Muddy Waters", "Teak", "Turmeric", "Husk", "Barley Corn", "Roti", "Tussock"]
	var g254=[gi254,gc254]
	var gi255=[0xb5a642, 0x1b5b35c]
	var gc255=["Brass", "Olive green"]
	var g255=[gi255,gc255]
	var gi256=[0xb1dd52, 0x1b4c04c, 0x2bdda57]
	var gc256=["Conifer", "Celery", "June bud"]
	var g256=[gi256,gc256]
	var gi257=[0xb2ec5d]
	var gc257=["Inchworm"]
	var g257=[gi257,gc257]
	var r25=[g250, g251, g252, g253, g254, g255, g256, g257]
	var gi260=[0xc21e56, 0x1c30b4e, 0x2d10047, 0x3d10056, 0x4d70040, 0x5d9004c]
	var gc260=["Rose red", "Pictorial carmine", "Spanish carmine", "Rubine red", "Carmine (M&P)", "UA red"]
	var g260=[gi260,gc260]
	var gi261=[0xc02e4c, 0x1c32148, 0x2c62d42, 0x3c72c48, 0x4da2c43]
	var gc261=["Old Rose", "Maroon (Crayola)", "Brick Red", "French raspberry", "Rusty red"]
	var g261=[gi261,gc261]
	var gi262=[0xc0514a, 0x1c45655, 0x2c95a49, 0x3cb4154, 0x4cc474b, 0x5cd525b, 0x6cd5b45, 0x7cd5c5c, 0x8d4574e]
	var gc262=["Sunset", "Fuzzy Wuzzy Brown", "Cedar Chest", "Brick red", "English vermillion", "Mandy", "Dark Coral", "Indian red", "Valencia"]
	var g262=[gi262,gc262]
	var gi263=[0xc07c40, 0x1c76155, 0x2cb6d51, 0x3cb6f4a, 0x4ce7259, 0x5d27d46, 0x6d8625b]
	var gc263=["Brandy Punch", "Sunglo", "Copper red", "Red Damask", "Japonica", "Raw Sienna", "Roman"]
	var g263=[gi263,gc263]
	var gi264=[0xc19156, 0x1d4915d, 0x2d68a59, 0x3d99058, 0x4df9d5b]
	var gc264=["Twine", "Whiskey Sour", "Raw sienna", "Persian orange", "Porsche"]
	var g264=[gi264,gc264]
	var gi265=[0xc4aa4d, 0x1c5b358, 0x2c6a95e, 0x3d3a95c, 0x4ddad56]
	var gc265=["Sundance", "Vegas gold", "Laser", "Apache", "Rob Roy"]
	var g265=[gi265,gc265]
	var gi266=[0xddcb46]
	var gc266=["Confetti"]
	var g266=[gi266,gc266]
	var gi267=[0xd9e650]
	var gc267=["Maximum green yellow"]
	var g267=[gi267,gc267]
	var r26=[g260, g261, g262, g263, g264, g265, g266, g267]
	var gi270=[0xe0115f, 0x1e30b5c, 0x2e30b5d]
	var gc270=["Ruby", "Razzmatazz", "Raspberry"]
	var g270=[gi270,gc270]
	var gi271=[0xe52b50, 0x1ee204d, 0x2fd3a4a, 0x3ff355e, 0x4ff3855]
	var gc271=["Amaranth", "Red (Crayola)", "Red Salsa", "Radical Red", "Sizzling Red"]
	var g271=[gi271,gc271]
	var gi272=[0xe95c4b, 0x1fb4d46, 0x2fe4c40, 0x3ff4040, 0x4ff5349]
	var gc272=["Fire opal", "Tart Orange", "Sunset Orange", "Coral Red", "Red-orange"]
	var g272=[gi272,gc272]
	var gi273=[0xe1634f, 0x1e2725b, 0x2e27945, 0x3e97451, 0x4f37a48, 0x5fe6f5e, 0x6ff6347, 0x7ff6e4a, 0x8ff7f50]
	var gc273=["Flamingo", "Terra cotta", "Jaffa", "Burnt sienna", "Mandarin", "Bittersweet", "Tomato", "Outrageous Orange", "Coral"]
	var g273=[gi273,gc273]
	var gi274=[0xe09842, 0x1ea8645, 0x2ef9548, 0x3f38653, 0x4fa9d49, 0x5ff8243]
	var gc274=["Fire Bush", "Flamenco", "Sea Buckthorn", "Crusta", "Sunshade", "Mango Tango"]
	var g274=[gi274,gc274]
	var gi275=[0xe1a95f, 0x1e3a857, 0x2e3ab57, 0x3eab852, 0x4f0b253, 0x5f2ba49, 0x6fcb057, 0x7fdae45, 0x8feb552, 0x9ffa343, 0xaffae42]
	var gc275=["Earth yellow", "Indian yellow", "Sunray", "Ronchi", "Casablanca", "Maximum yellow red", "Texas Rose", "My Sin", "Koromiko", "Neon Carrot", "Yellow Orange"]
	var g275=[gi275,gc275]
	var gi276=[0xe4db55, 0x1eacc4a, 0x2eec051, 0x3f0d555, 0x4f2c649, 0x5f5d752, 0x6f9d054, 0x7fada5e, 0x8fed85d, 0x9ffc152, 0xaffdb58]
	var gc276=["Manz", "Festival", "Cream Can", "Portica", "Maize (Crayola)", "Energy Yellow", "Kournikova", "Stil de grain yellow", "Dandelion", "Golden Tainoi", "Mustard"]
	var g276=[gi276,gc276]
	var gi277=[0xf5e050, 0x1fbeb50, 0x2fbec5d, 0x3fcf75e, 0x4fff44f]
	var gc277=["Minion yellow", "Paris Daisy", "Maize", "Icterine", "Lemon yellow"]
	var g277=[gi277,gc277]
	var r27=[g270, g271, g272, g273, g274, g275, g276, g277]
	var b2=[r20, r21, r22, r23, r24, r25, r26, r27]
	var gi300=[0x191970]
	var gc300=["Midnight blue"]
	var g300=[gi300,gc300]
	var gi301=[0x2366, 0x1003366, 0x200356b, 0x3082567]
	var gc301=["Royal blue (dark)", "Prussian Blue", "Yale Blue", "Sapphire"]
	var g301=[gi301,gc301]
	var gi302=[0x416a, 0x108457e]
	var gc302=["Indigo dye", "Dark Cerulean"]
	var g302=[gi302,gc302]
	var gi303=[0x626f, 0x1007474, 0x2007b77, 0x3007f66, 0x401796f, 0x5166461, 0x6167e65, 0x71f6a7d]
	var gc303=["Blue Lagoon", "Skobeloff", "Surfie Green", "Generic viridian", "Pine green", "Blue Stone", "Deep Sea", "Allports"]
	var g303=[gi303,gc303]
	var gi304=[0x8f70, 0x1009966, 0x2009b7d, 0x3009e60, 0x4009f6b, 0x5029d74, 0x61b8a6b]
	var gc304=["Observatory", "Green-cyan", "Paolo Veronese green", "Shamrock green", "Green (NCS)", "Free Speech Aquamarine", "Elf Green"]
	var g304=[gi304,gc304]
	var gi305=[0xa86b, 0x100a877, 0x200ab66, 0x31cac78]
	var gc305=["Jade", "Green (Munsell)", "GO green", "Green (Crayola)"]
	var g305=[gi305,gc305]
	var gi306=[]
	var gc306=[]
	var g306=[gi306,gc306]
	var gi307=[0xff7f]
	var gc307=["Spring green"]
	var g307=[gi307,gc307]
	var r30=[g300, g301, g302, g303, g304, g305, g306, g307]
	var gi310=[0x6b, 0x132127a]
	var gc310=["Olive Drab (", "Persian indigo"]
	var g310=[gi310,gc310]
	var gi311=[0x23297a, 0x1312760, 0x2323f75, 0x3343467, 0x4353d75, 0x5353e64, 0x6382161, 0x73d3f7d, 0x83e3267]
	var gc311=["St. Patrick's blue", "Paris M", "Resolution Blue", "Deep Koamaru", "Torea Bay", "Bay Of Many", "Christalle", "Jacksons Purple", "Minsk"]
	var g311=[gi311,gc311]
	var gi312=[0x25597f, 0x1255b77, 0x22c5778, 0x32c5971, 0x4305c71, 0x5365c7d, 0x63b436c]
	var gc312=["Bahama Blue", "Orient", "Venice Blue", "Chathams Blue", "Blumine", "Matisse", "Port Gore"]
	var g312=[gi312,gc312]
	var gi313=[0x297b76, 0x12b797a, 0x2317873, 0x331796d, 0x436747d]
	var gc313=["Elm", "Atoll", "Myrtle green", "Genoa", "Ming"]
	var g313=[gi313,gc313]
	var gi314=[0x2f847c, 0x1319177, 0x2329760]
	var gc314=["Celadon green", "Illuminating emerald", "Eucalyptus"]
	var g314=[gi314,gc314]
	var gi315=[0x3cb371]
	var gc315=["Medium sea green"]
	var g315=[gi315,gc315]
	var gi316=[]
	var gc316=[]
	var g316=[gi316,gc316]
	var gi317=[]
	var gc317=[]
	var g317=[gi317,gc317]
	var r31=[g310, g311, g312, g313, g314, g315, g316, g317]
	var gi320=[0x4d1a7f]
	var gc320=["Blue-violet (color wheel)"]
	var g320=[gi320,gc320]
	var gi321=[0x462c77, 0x14a3b6a, 0x24b2d72, 0x35c3c6d]
	var gc321=["Windsor", "Meteorite", "Blue Diamond", "Honey Flower"]
	var g321=[gi321,gc321]
	var gi322=[0x42426f, 0x1445172, 0x2445761, 0x347526e, 0x4475877, 0x54b5a62, 0x64c516d, 0x758427c]
	var gc322=["Corn Flower Blue", "Astronaut", "San Juan", "East Bay", "Chambray", "Fiord", "Independence", "Cyber grape"]
	var g322=[gi322,gc322]
	var gi323=[0x407577, 0x1486c7a, 0x2496267, 0x3496569, 0x449796b, 0x54a646c, 0x64a766e, 0x7517b78, 0x8536872, 0x9536878, 0xa53736f, 0xb54626f, 0xc556061]
	var gc323=["Ming", "Bismark", "Smalt Blue", "Tax Break", "Hooker's green", "Deep Space Sparkle", "Dark Green Copper", "Breaker Bay", "Cadet", "Payne's grey", "William", "Black coral", "River Bed"]
	var g323=[gi323,gc323]
	var gi324=[0x40826d, 0x156887d, 0x25c8173]
	var gc324=["Viridian", "Wintergreen Dream", "Cutty Sark"]
	var g324=[gi324,gc324]
	var gi325=[0x4ca973, 0x15fa777, 0x25fa778]
	var gc325=["Ocean Green", "Forest green (Crayola)", "Shiny Shamrock"]
	var g325=[gi325,gc325]
	var gi326=[0x50c878]
	var gc326=["Paris Green"]
	var g326=[gi326,gc326]
	var gi327=[]
	var gc327=[]
	var g327=[gi327,gc327]
	var r32=[g320, g321, g322, g323, g324, g325, g326, g327]
	var gi330=[]
	var gc330=[]
	var g330=[gi330,gc330]
	var gi331=[0x682860, 0x169326e, 0x26e3974, 0x3702670, 0x4702963]
	var gc331=["Palatinate purple", "Seance", "Eminence", "Midnight", "Byzantium"]
	var g331=[gi331,gc331]
	var gi332=[0x605a67, 0x1605d6b, 0x2625665, 0x3794d60, 0x47e5e60]
	var gc332=["Mobster", "Smoky", "Fedora", "Cosmic", "Deep taupe"]
	var g332=[gi332,gc332]
	var gi333=[0x61666b, 0x162777e, 0x2636373, 0x3636d70, 0x4666a6d, 0x5666f6f, 0x6676767, 0x768766e, 0x8696268, 0x9696969, 0xa6a6466, 0xb6a6873, 0xc6b6a6c, 0xd6d7876, 0xe6f747b, 0xf706e66, 0x10716675, 0x11716e61, 0x12727472, 0x13757575, 0x14766d7c, 0x15777672, 0x16796878, 0x177a7679, 0x187a7c76, 0x197c7173, 0x1a7c7c72]
	var gc333=["Shuttle Grey", "Blue Bayoux", "Comet", "Pale Sky", "Mid Grey", "Nevada", "Granite gray", "Sirocco", "Salt Box", "Dim gray", "Scorpion", "Dolphin", "Scarpa Flow", "Rolling Stone", "Raven", "Ironside Grey", "Rum", "Flint", "Nickel", "Sonic silver", "Mamba", "Dove Grey", "Old lavender", "Monsoon", "Gunsmoke", "Empress", "Tapa"]
	var g333=[gi333,gc333]
	var gi334=[0x679267, 0x16d9a78, 0x26e8d71, 0x3738678, 0x475876e, 0x578857a, 0x678866b, 0x7788878, 0x87a9461, 0x97b8976, 0xa7c817c, 0xb7d9d72]
	var gc334=["Russian green", "Oxley", "Laurel", "Xanadu", "Xanadu", "Blue Smoke", "Camouflage Green", "Davy's Grey", "Highland", "Spanish Green", "Boulder", "Amulet"]
	var g334=[gi334,gc334]
	var gi335=[0x63b76c, 0x17bb661]
	var gc335=["Fern", "Bud green"]
	var g335=[gi335,gc335]
	var gi336=[0x74c365, 0x177dd77]
	var gc336=["Mantis", "Pastel Green"]
	var g336=[gi336,gc336]
	var gi337=[0x66ff66]
	var gc337=["Screamin' Green"]
	var g337=[gi337,gc337]
	var r33=[g330, g331, g332, g333, g334, g335, g336, g337]
	var gi340=[0x871f78, 0x1990066]
	var gc340=["Dark Purple", "Eggplant"]
	var g340=[gi340,gc340]
	var gi341=[0x963d7f, 0x19f2b68]
	var gc341=["Violet (crayola)", "Amaranth (M&P)"]
	var g341=[gi341,gc341]
	var gi342=[0x8a496b, 0x18e5164, 0x2914e75, 0x3915f6d, 0x4955264, 0x5984961, 0x69e5e6f, 0x79f4576]
	var gc342=["Twilight lavender", "Cannon Pink", "Sugar Plum", "Raspberry glace", "Vin Rouge", "Cadillac", "Rose Dust", "Magenta haze"]
	var g342=[gi342,gc342]
	var gi343=[0x807661, 0x1826663, 0x2827a67, 0x3827f79, 0x4856363, 0x5867665, 0x6876a68, 0x78a7d72, 0x88b7e77, 0x98f7777, 0xa8f7d6b, 0xb986960, 0xc987d73, 0xd987e7e, 0xe996666, 0xf9d7f61]
	var gc343=["Stonewall", "Pharlap", "Arrowtown", "Concord", "Light Wood", "Sand Dune", "Ferra", "Americano", "Hurricane", "Bazaar", "Squirrel", "Dark Chestnut", "Hemp", "Opium", "Copper rose", "Sorrell Brown"]
	var g343=[gi343,gc343]
	var gi344=[0x86837a, 0x1878466, 0x287876f, 0x3888064, 0x488896c, 0x58b8265, 0x68d8478, 0x78f9779, 0x8948c7e, 0x995986b, 0xa97976f, 0xb98817b, 0xc989171, 0xd989f7a, 0xe9a8678, 0xf9c8d72, 0x109f8170]
	var gc344=["Friar Grey", "Bandicoot", "Schist", "Olive Haze", "Bitter", "Granite Green", "Schooner", "Artichoke", "Heathered Grey", "Avocado", "Malachite Green", "Cinereous", "Gurkha", "Sage", "Almond Frost", "Pale Oyster", "Beaver"]
	var g344=[gi344,gc344]
	var gi345=[0x87a96b, 0x19ab973, 0x29ca664]
	var gc345=["Asparagus", "Olivine", "Green Smoke"]
	var g345=[gi345,gc345]
	var gi346=[0x93c572]
	var gc346=["Pistachio"]
	var g346=[gi346,gc346]
	var gi347=[]
	var gc347=[]
	var g347=[gi347,gc347]
	var r34=[g340, g341, g342, g343, g344, g345, g346, g347]
	var gi350=[0xa2006d]
	var gc350=["Flirt"]
	var g350=[gi350,gc350]
	var gi351=[0xa63a79, 0x1b03060]
	var gc351=["Maximum red purple", "Maroon (X11)"]
	var g351=[gi351,gc351]
	var gi352=[0xa8516e, 0x1a94064, 0x2ad4379, 0x3b3446c, 0x4b54b73, 0x5b55067, 0x6be4f62]
	var gc352=["China rose", "Rouge", "Mystic maroon", "Raspberry rose", "Royal Heath", "Blush", "Popstar"]
	var g352=[gi352,gc352]
	var gi353=[0xa17a74, 0x1a56e75, 0x2a57164, 0x3ab6e67, 0x4ad6f69]
	var gc353=["Burnished brown", "Turkish Rose", "Blast-off bronze", "Coral Tree", "Copper penny"]
	var g353=[gi353,gc353]
	var gi354=[0xa19a7f, 0x1a3876a, 0x2a39977, 0x3a58b6f, 0x4a68064, 0x5af937d, 0x6b6857a, 0x7bc987e]
	var gc354=["Grey Olive", "Sandal", "Tallow", "Mongoose", "Medium Wood", "Sandrift", "Brandy Rose", "Pale Taupe"]
	var g354=[gi354,gc354]
	var gi355=[0xa7a07e, 0x1acbf60, 0x2b9ad61, 0x3bbb477, 0x4bdb76b]
	var gc355=["Hillary", "Middle green yellow", "Gimblet", "Misty moss", "Dark khaki"]
	var g355=[gi355,gc355]
	var gi356=[0xbdc07e, 0x1beca60]
	var gc356=["Pine Glade", "Wild Willow"]
	var g356=[gi356,gc356]
	var gi357=[]
	var gc357=[]
	var g357=[gi357,gc357]
	var r35=[g350, g351, g352, g353, g354, g355, g356, g357]
	var gi360=[0xca1f7b, 0x1d71868]
	var gc360=["Magenta (dye)", "Dogwood rose"]
	var g360=[gi360,gc360]
	var gi361=[0xcc397b, 0x1cf3476, 0x2de3163]
	var gc361=["Fuchsia purple", "Telemagenta", "Cerise"]
	var g361=[gi361,gc361]
	var gi362=[0xc74375, 0x1cd526c, 0x2ce4676, 0x3d0417e, 0x4db5079]
	var gc362=["Fuchsia rose", "Cabaret", "Ruber", "Magenta (Pantone)", "Cranberry"]
	var g362=[gi362,gc362]
	var gi363=[0xc16f68, 0x1cd607e]
	var gc363=["Contessa", "Cinnamon Satin"]
	var g363=[gi363,gc363]
	var gi364=[0xc19a6b, 0x1cd9575, 0x2d08363, 0x3d19275, 0x4d29062, 0x5d7837f, 0x6d99a6c, 0x7da8a67, 0x8db817e, 0x9dd8374]
	var gc364=["Wood brown", "Antique brass", "Burning Sand", "Feldspar", "Whiskey", "New York pink", "Tan (Crayola)", "Copper (Crayola)", "Sea Pink", "New York Pink"]
	var g364=[gi364,gc364]
	var gi365=[0xc8ad7f, 0x1cdae70, 0x2d2b960, 0x3dab160]
	var gc365=["Light French beige", "Putty", "Tacha", "Equator"]
	var g365=[gi365,gc365]
	var gi366=[0xdbdb70, 0x1dec371]
	var gc366=["Goldenrod", "Chenin"]
	var g366=[gi366,gc366]
	var gi367=[0xdaea6f]
	var gc367=["Mindaro"]
	var g367=[gi367,gc367]
	var r36=[g360, g361, g362, g363, g364, g365, g366, g367]
	var gi370=[0xe40078, 0x1e4007c, 0x2ff007c, 0x3ff007f]
	var gc370=["Red-purple", "Mexican pink", "Winter Sky", "Rose"]
	var g370=[gi370,gc370]
	var gi371=[0xe3256b, 0x1e63e62]
	var gc371=["Razzmatazz", "Paradise pink"]
	var g371=[gi371,gc371]
	var gi372=[0xfd5b78, 0x1fe4164, 0x2ff5470]
	var gc372=["Wild Watermelon", "Neon fuchsia", "Fiery rose"]
	var g372=[gi372,gc372]
	var gi373=[0xe4717a, 0x1e56d75, 0x2e77b75, 0x3fb607f]
	var gc373=["Tango pink", "Froly", "Geraldine", "Brink pink"]
	var g373=[gi373,gc373]
	var gi374=[0xe58e73, 0x1e9967a, 0x2f88379, 0x3fa8072, 0x4ff9966]
	var gc374=["Middle red", "Dark salmon", "Tea rose", "Salmon", "Atomic tangerine"]
	var g374=[gi374,gc374]
	var gi375=[0xe5aa70, 0x1eab76a, 0x2ecb176, 0x3f4a460, 0x4f6ae78, 0x5f8b878, 0x6fbab60, 0x7fcae60, 0x8fda470, 0x9ffa07a, 0xaffb97b]
	var gc375=["Fawn", "Harvest Gold", "Middle yellow red", "Sandy brown", "Tacao", "Mellow apricot", "Rajah", "Rajah", "Hit Pink", "Light salmon", "Macaroni And Cheese"]
	var g375=[gi375,gc375]
	var gi376=[0xe3d474, 0x1e4d96f, 0x2e9d66b, 0x3eace6a, 0x4f8d568, 0x5f8de7e, 0x6f9d77e, 0x7ffc878, 0x8ffcd73, 0x9ffd67b]
	var gc376=["Wild Rice", "Straw", "Hansa yellow", "Golden Sand", "Orange-yellow (Crayola)", "Mellow yellow", "Golden Glow", "Chardonnay", "Grandis", "Salomie"]
	var g376=[gi376,gc376]
	var gi377=[0xe8ed69, 0x1ece67e, 0x2f5f171, 0x3f9e176, 0x4fbf073, 0x5ffff66]
	var gc377=["Honeysuckle", "Texas", "Dolly", "Sweet Corn", "Witch Haze", "Unmellow yellow"]
	var g377=[gi377,gc377]
	var r37=[g370, g371, g372, g373, g374, g375, g376, g377]
	var b3=[r30, r31, r32, r33, r34, r35, r36, r37]
	var gi400=[0x80, 0x100008b, 0x200009c, 0x3000f89, 0x4120a8f]
	var gc400=["Navy blue", "Dark Blue", "New Midnight Blue", "Phthalo blue", "Ultramarine"]
	var g400=[gi400,gc400]
	var gi401=[0x2387, 0x1003399]
	var gc401=["Resolution blue", "Smalt"]
	var g401=[gi401,gc401]
	var gi402=[0x4f98]
	var gc402=["USAFA blue"]
	var g402=[gi402,gc402]
	var gi403=[0xa7e8c, 0x1126180]
	var gc403=["Metallic Seaweed", "Blue sapphire"]
	var g403=[gi403,gc403]
	var gi404=[0x8080, 0x100879f, 0x2008b8b, 0x3009698]
	var gc404=["Teal", "Eastern Blue", "Dark cyan", "Viridian green"]
	var g404=[gi404,gc404]
	var gi405=[0xa693, 0x11ab385]
	var gc405=["Persian green", "Mountain Meadow"]
	var g405=[gi405,gc405]
	var gi406=[0xcc99]
	var gc406=["Caribbean Green"]
	var g406=[gi406,gc406]
	var gi407=[0xfa9a]
	var gc407=["Medium spring green"]
	var g407=[gi407,gc407]
	var r40=[g400, g401, g402, g403, g404, g405, g406, g407]
	var gi410=[]
	var gc410=[]
	var g410=[gi410,gc410]
	var gi411=[0x2e2787, 0x12e2d88, 0x2333399]
	var gc411=["Picotee blue", "Cosmic cobalt", "Blue (pigment)"]
	var g411=[gi411,gc411]
	var gi412=[0x26428b, 0x129598b, 0x22e5090, 0x32e5894, 0x4325482, 0x5335083, 0x6374e88]
	var gc412=["Dark cornflower blue", "Endeavour", "YInMn Blue", "B'dazzled blue", "St Tropaz", "Fun Blue", "Tory Blue"]
	var g412=[gi412,gc412]
	var gi413=[0x26619c, 0x1367588, 0x2376f89, 0x33d7188]
	var gc413=["Lapis lazuli", "Teal blue", "Astral", "Calypso"]
	var g413=[gi413,gc413]
	var gi414=[0x259797, 0x1399f86]
	var gc414=["Java", "Gossamer"]
	var g414=[gi414,gc414]
	var gi415=[0x29a98b, 0x129ab87, 0x230ba8f, 0x339a78e, 0x43ab09e, 0x53eb489]
	var gc415=["Niagara", "Jungle green", "Mountain Meadow", "Zomp", "Keppel", "Mint"]
	var g415=[gi415,gc415]
	var gi416=[0x33cc99]
	var gc416=["Shamrock"]
	var g416=[gi416,gc416]
	var gi417=[]
	var gc417=[]
	var g417=[gi417,gc417]
	var r41=[g410, g411, g412, g413, g414, g415, g416, g417]
	var gi420=[0x4b0082]
	var gc420=["Indigo"]
	var g420=[gi420,gc420]
	var gi421=[0x483d8b, 0x14b3c8e, 0x24c2882, 0x3512888, 0x4583580, 0x55b3e90]
	var gc421=["Dark Slate Blue", "Blue Gem", "Spanish violet", "KSU purple", "Kingfisher Daisy", "Daisy Bush"]
	var g421=[gi421,gc421]
	var gi422=[0x4e5180, 0x151559b, 0x2564786, 0x3564985]
	var gc422=["Purple navy", "Governor Bay", "Gigas", "Victoria"]
	var g422=[gi422,gc422]
	var gi423=[0x42639f, 0x1436b95, 0x244798e, 0x34c6b88, 0x44e6c9d, 0x5576d8e, 0x65b6e91]
	var gc423=["Mariner", "Queen blue", "Jelly Bean", "Wedgewood", "San Marino", "Kashmir Blue", "Waikawa Grey"]
	var g423=[gi423,gc423]
	var gi424=[0x408f90, 0x1488084, 0x2489084, 0x349889a, 0x4558f93, 0x55f8a8b]
	var gc424=["Blue Chill", "Paradiso", "Lochinvar", "Hippie Blue", "Half Baked", "Steel Teal"]
	var g424=[gi424,gc424]
	var gi425=[0x48bf91, 0x15da493, 0x25fb69c]
	var gc425=["Ocean green", "Polished Pine", "Keppel"]
	var g425=[gi425,gc425]
	var gi426=[]
	var gc426=[]
	var g426=[gi426,gc426]
	var gi427=[]
	var gc427=[]
	var g427=[gi427,gc427]
	var r42=[g420, g421, g422, g423, g424, g425, g426, g427]
	var gi430=[]
	var gc430=[]
	var g430=[gi430,gc430]
	var gi431=[0x663399, 0x16c3082, 0x2733380]
	var gc431=["Rebecca Purple", "Eminence", "Maximum purple"]
	var g431=[gi431,gc431]
	var gi432=[0x68578c, 0x1695d87, 0x2745085]
	var gc432=["Butterfly Bush", "Kimberly", "Affair"]
	var g432=[gi432,gc432]
	var gi433=[0x647d86, 0x1666699, 0x2697d89, 0x3747880, 0x4777696]
	var gc433=["Hoki", "Dark blue-gray", "Lynch", "Storm Grey", "Rhythm"]
	var g433=[gi433,gc433]
	var gi434=[0x639283, 0x1648894, 0x2698890, 0x36f8c9f, 0x4708090, 0x5718f8a, 0x674918e, 0x7778899, 0x8798488, 0x97b948c]
	var gc434=["Patina", "Horizon", "Gothic", "Bermuda Grey", "Slate Grey", "Gumbo", "Juniper", "Light Slate Grey", "Regent Grey", "Granny Smith"]
	var g434=[gi434,gc434]
	var gi435=[0x67be90, 0x175aa94, 0x27bb18d, 0x37eb394]
	var gc435=["Silver Tree", "Acapulco", "Bay Leaf", "Padua"]
	var g435=[gi435,gc435]
	var gi436=[]
	var gc436=[]
	var g436=[gi436,gc436]
	var gi437=[]
	var gc437=[]
	var g437=[gi437,gc437]
	var r43=[g430, g431, g432, g433, g434, g435, g436, g437]
	var gi440=[0x800080, 0x1880085, 0x28b008b]
	var gc440=["Purple (web)", "Mardi Gras", "Dark magenta"]
	var g440=[gi440,gc440]
	var gi441=[0x803790]
	var gc441=["Vivid Violet"]
	var g441=[gi441,gc441]
	var gi442=[0x805d80, 0x18d4e85, 0x28e4585, 0x3915c83, 0x49f5f9f]
	var gc442=["Trendy Pink", "Razzmic Berry", "Plum", "Antique fuchsia", "Violet Blue"]
	var g442=[gi442,gc442]
	var gi443=[0x817c87, 0x1856088, 0x286608e, 0x38a7f80, 0x48b7d82, 0x5946a81, 0x6997a8d]
	var gc443=["Topaz", "Chinese violet", "Pomp and Power", "Rocket metallic", "Venus", "Strikemaster", "Mountbatten pink"]
	var g443=[gi443,gc443]
	var gi444=[0x808080, 0x1818988, 0x2838996, 0x3848482, 0x4848789, 0x5858885, 0x6878785, 0x78b8589, 0x88b8680, 0x98b8685, 0xa8c9c9c, 0xb95879c, 0xc989898, 0xd999a86, 0xe999b95, 0xf9f9b9d, 0x109f9d91]
	var gc444=["Grey", "Oslo Grey", "Roman silver", "Old silver", "Aluminium", "Stack", "Jumbo", "Taupe Grey", "Middle grey", "Suva Grey", "Submarine", "Amethyst Smoke", "Spanish gray", "Lemon Grass", "Delta", "Shady Lady", "Dawn"]
	var g444=[gi444,gc444]
	var gi445=[0x8ba58f, 0x18da399, 0x28fb69c, 0x38fbc8f, 0x491a092, 0x596a793, 0x697a49a]
	var gc445=["Envy", "Morning blue", "Summer Green", "Dark sea green", "Pewter", "Mantle", "Edward"]
	var g445=[gi445,gc445]
	var gi446=[0x85ca87, 0x19fd385]
	var gc446=["De York", "Gossip"]
	var g446=[gi446,gc446]
	var gi447=[0x90ee90, 0x198fb98, 0x298ff98, 0x39de093]
	var gc447=["Light green", "Pale Green", "Mint green", "Granny Smith Apple"]
	var g447=[gi447,gc447]
	var r44=[g440, g441, g442, g443, g444, g445, g446, g447]
	var gi450=[]
	var gc450=[]
	var g450=[gi450,gc450]
	var gi451=[0xb53389, 0x1bb3385]
	var gc451=["Fandango", "Medium Red Violet"]
	var g451=[gi451,gc451]
	var gi452=[]
	var gc452=[]
	var g452=[gi452,gc452]
	var gi453=[0xb37084]
	var gc453=["Tapestry"]
	var g453=[gi453,gc453]
	var gi454=[0xa09f9c, 0x1a19986, 0x2a29589, 0x3a39a87, 0x4a59784, 0x5a78199, 0x6a79781, 0x7a99a86, 0x8a99d9d, 0x9ac9b9b, 0xab1948f, 0xbb48395, 0xcb5998e, 0xdbc8f8f]
	var gc454=["Mountain Mist", "Nomad", "Zorba", "Napa", "Malta", "Bouquet", "Bronco", "Grullo", "Nobel", "Dusty Grey", "Thatch", "English lavender", "Del Rio", "Rosy brown"]
	var g454=[gi454,gc454]
	var gi455=[0xa0a197, 0x1a2a580, 0x2a3bd9c, 0x3a4b88f, 0x4a5a88f, 0x5a7a69d, 0x6a9af99, 0x7a9ba9d, 0x8aaa583, 0x9b0a99f, 0xab0ac94, 0xbb5ac94, 0xcb8ad8a, 0xdbaab87, 0xebbb58d, 0xfbcb88a, 0x10beb29a]
	var gc455=["Star Dust", "Locust", "Spring Rain", "Norway", "Bud", "Foggy Grey", "Green Spring", "Laurel green", "Neutral Green", "Cloudy", "Eagle", "Bison Hide", "Chino", "Pavlova", "Coriander", "Sage", "Akaroa"]
	var g455=[gi455,gc455]
	var gi456=[0xa5d785, 0x1afc182, 0x2b8ca9d, 0x3bfc298]
	var gc456=["Feijoa", "Caper", "Sprout", "Green Mist"]
	var g456=[gi456,gc456]
	var gi457=[]
	var gc457=[]
	var g457=[gi457,gc457]
	var r45=[g450, g451, g452, g453, g454, g455, g456, g457]
	var gi460=[0xc71585, 0x1da1884]
	var gc460=["Red-violet", "Barbie Pink"]
	var g460=[gi460,gc460]
	var gi461=[0xda3287]
	var gc461=["Deep cerise"]
	var g461=[gi461,gc461]
	var gi462=[0xc0448f, 0x1c54b8c, 0x2c84186, 0x3c8509b, 0x4d65282, 0x5d74894, 0x6de5285, 0x7de5d83]
	var gc462=["Red-violet (Crayola)", "Mulberry", "Smitten", "Mulberry (Crayola)", "Mystic", "Pink (Pantone)", "Fandango pink", "Blush"]
	var g462=[gi462,gc462]
	var gi463=[0xcd6d93, 0x1d0748b, 0x2db7093]
	var gc463=["Hopbush", "Charm", "Pale Violet Red"]
	var g463=[gi463,gc463]
	var gi464=[0xc08081, 0x1c09999, 0x2c28e88, 0x3c3988b, 0x4c58f9d, 0x5cc8899, 0x6d08a9b, 0x7d68b80, 0x8d98695, 0x9da9790]
	var gc464=["Old rose", "Tuscany", "Oriental Pink", "Quicksand", "Viola", "Puce", "Can Can", "My Pink", "Shimmering Blush", "Petite Orchid"]
	var g464=[gi464,gc464]
	var gi465=[0xc2b280, 0x1c3b091, 0x2c7a384, 0x3c7b882, 0x4c9b59a, 0x5cca483, 0x6ccb69b, 0x7cda59c, 0x8d1b399, 0x9d2b48c, 0xad3a194, 0xbd5b185, 0xcdabe82, 0xddcb68a, 0xedea681, 0xfdeaa88, 0x10deb887, 0x11dfb992]
	var gc465=["Sand", "Khaki (web)", "Rodeo Dust", "Yuma", "Sour Dough", "Cameo", "Vanilla", "Eunry", "Cashmere", "Tan", "Rose", "Calico", "Straw", "Brandy", "Tumbleweed", "Tumbleweed", "Burlywood", "Pancho"]
	var g465=[gi465,gc465]
	var gi466=[0xcccf82, 0x1d0c383, 0x2d8cc9b, 0x3ddc283, 0x4decb81, 0x5dfc281]
	var gc466=["Deco", "Winter Hazel", "Tahuna Sands", "Zombie", "Sandwisp", "Chalky"]
	var g466=[gi466,gc466]
	var gi467=[0xc5e384, 0x1c6ea80, 0x2d1ef9f]
	var gc467=["Yellow-green (Crayola)", "Sulu", "Reef"]
	var g467=[gi467,gc467]
	var r46=[g460, g461, g462, g463, g464, g465, g466, g467]
	var gi470=[0xff0090, 0x1ff1493]
	var gc470=["Magenta (process)", "Deep pink"]
	var g470=[gi470,gc470]
	var gi471=[0xfd3f92, 0x1ff3399]
	var gc471=["French fuchsia", "Wild Strawberry"]
	var g471=[gi471,gc471]
	var gi472=[0xe75480, 0x1f64a8a, 0x2f7468a, 0x3f75394, 0x4f9429e]
	var gc472=["Dark Pink", "French rose", "Violet Red", "Violet-red", "Rose bonbon"]
	var g472=[gi472,gc472]
	var gi473=[0xe36f8a, 0x1ed7a9b, 0x2fc6c85, 0x3fd6c9e]
	var gc473=["Deep Blush", "Rose Pompadour", "Wild watermelon", "French pink"]
	var g473=[gi473,gc473]
	var gi474=[0xe68095, 0x1e79e88, 0x2ee918d, 0x3f08080, 0x4f1919a, 0x5ff9889, 0x6ff9980]
	var gc474=["Carissma", "Tonys Pink", "Sweet Pink", "Light coral", "Wewak", "Mona Lisa", "Vivid Tangerine"]
	var g474=[gi474,gc474]
	var gi475=[0xe2af80, 0x1e3b982, 0x2e6be8a, 0x3e9ba81, 0x4eeb39e, 0x5f5b799, 0x6feab9a, 0x7ffa089, 0x8ffbd88]
	var gc475=["Manhattan", "Maize", "Gold (Crayola)", "Corvette", "Wax Flower", "Mandys Pink", "Rose Bud", "Vivid tangerine", "Macaroni and Cheese"]
	var g475=[gi475,gc475]
	var gi476=[0xe4c385, 0x1e4cf99, 0x2e4de8e, 0x3e8cd9a, 0x4ebc79e, 0x5ebc881, 0x6eedc82, 0x7eedd82, 0x8f0dc82, 0x9f1d79e, 0xaf5cd82, 0xbffc69e, 0xcffcc99, 0xdffd59a]
	var gc476=["New Orleans", "Double Colonial White", "Primrose", "Chamois", "New Tan", "Marzipan", "Flax", "Light Goldenrod", "Buff", "Splash", "Cherokee", "Romantic", "Peach-Orange", "Caramel"]
	var g476=[gi476,gc476]
	var gi477=[0xe3f988, 0x1e8f48c, 0x2eef293, 0x3f0e68c, 0x4f0e891, 0x5f0f590, 0x6f4f09b, 0x7f6f493, 0x8f8ea97, 0x9f9e496, 0xaf9f59f, 0xbfbeb9b, 0xcfce883, 0xdffe39b, 0xeffff99, 0xfffff9f]
	var gc477=["Mindaro", "Key lime", "Jonquil", "Khaki (X11) (Light khaki)", "Green-yellow (Crayola)", "Tidal", "Portafino", "Milan", "Picasso", "Vis Vis", "Pale Prim", "Drover", "Yellow (Crayola)", "Cream Brulee", "Canary", "Lemon yellow (Crayola)"]
	var g477=[gi477,gc477]
	var r47=[g470, g471, g472, g473, g474, g475, g476, g477]
	var b4=[r40, r41, r42, r43, r44, r45, r46, r47]
	var gi500=[0x14a8, 0x10018a8, 0x21c05b3]
	var gc500=["Zaffre", "Blue (Pantone)", "Trypan Blue"]
	var g500=[gi500,gc500]
	var gi501=[0x2fa7, 0x10033aa, 0x21034a6, 0x31c39bb]
	var gc501=["International Klein Blue", "UA blue", "Egyptian blue", "Persian blue"]
	var g501=[gi501,gc501]
	var gi502=[0x47ab, 0x10048ba, 0x20f52ba]
	var gc502=["Cobalt blue", "Absolute Zero", "Sapphire"]
	var g502=[gi502,gc502]
	var gi503=[0x67a5, 0x1006db0, 0x20070b8, 0x30072bb, 0x4007aa5, 0x5007ba7, 0x6007bb8, 0x71164b4, 0x81560bd]
	var gc503=["Sapphire blue", "Honolulu blue", "Spanish blue", "French blue", "CG blue", "Cerulean", "Star command blue", "Green-blue", "Denim"]
	var g503=[gi503,gc503]
	var gi504=[0x87bd, 0x10093af, 0x20095b6, 0x30d98ba]
	var gc504=["Blue (NCS)", "Blue (Munsell)", "Bondi Blue", "Blue-green"]
	var g504=[gi504,gc504]
	var gi505=[0xabab5]
	var gc505=["Tiffany Blue"]
	var g505=[gi505,gc505]
	var gi506=[]
	var gc506=[]
	var g506=[gi506,gc506]
	var gi507=[]
	var gc507=[]
	var g507=[gi507,gc507]
	var r50=[g500, g501, g502, g503, g504, g505, g506, g507]
	var gi510=[]
	var gc510=[]
	var g510=[gi510,gc510]
	var gi511=[]
	var gc511=[]
	var g511=[gi511,gc511]
	var gi512=[0x2243b6, 0x12a52be, 0x2324ab2]
	var gc512=["Denim blue", "Cerulean blue", "Violet-blue"]
	var g512=[gi512,gc512]
	var gi513=[0x316ea0]
	var gc513=["Lochmara"]
	var g513=[gi513,gc513]
	var gi514=[0x2599b2, 0x1308ea0, 0x23d85b8]
	var gc514=["Pelorous", "Scooter", "Curious Blue"]
	var g514=[gi514,gc514]
	var gi515=[0x20b2aa, 0x130bfbf]
	var gc515=["Light Sea Green", "Maximum blue green"]
	var g515=[gi515,gc515]
	var gi516=[]
	var gc516=[]
	var g516=[gi516,gc516]
	var gi517=[]
	var gc517=[]
	var g517=[gi517,gc517]
	var r51=[g510, g511, g512, g513, g514, g515, g516, g517]
	var gi520=[]
	var gc520=[]
	var g520=[gi520,gc520]
	var gi521=[]
	var gc521=[]
	var g521=[gi521,gc521]
	var gi522=[0x4f42b5, 0x1545aa7, 0x25946b2, 0x35959ab]
	var gc522=["Ocean Blue", "Liberty", "Plump Purple", "Rich Blue"]
	var g522=[gi522,gc522]
	var gi523=[0x5072a7]
	var gc523=["Blue yonder"]
	var g523=[gi523,gc523]
	var gi524=[0x438eac, 0x14682b4, 0x25d8aa8, 0x35f9ea0]
	var gc524=["Boston Blue", "Steel blue", "Air Force Blue", "Cadet blue"]
	var g524=[gi524,gc524]
	var gi525=[0x43b3ae, 0x159baa3]
	var gc525=["Verdigris", "Puerto Rico"]
	var g525=[gi525,gc525]
	var gi526=[]
	var gc526=[]
	var g526=[gi526,gc526]
	var gi527=[]
	var gc527=[]
	var g527=[gi527,gc527]
	var r52=[g520, g521, g522, g523, g524, g525, g526, g527]
	var gi530=[0x6a0dad]
	var gc530=["Purple"]
	var g530=[gi530,gc530]
	var gi531=[0x6b3fa0]
	var gc531=["Royal Purple"]
	var g531=[gi531,gc531]
	var gi532=[0x6a5bb1, 0x1724aa1, 0x27851a9]
	var gc532=["Blue Marguerite", "Studio", "Royal purple"]
	var g532=[gi532,gc532]
	var gi533=[0x666fb4, 0x16f63a0, 0x27366bd]
	var gc533=["Chetwode Blue", "Scampi", "Blue-violet (Crayola)"]
	var g533=[gi533,gc533]
	var gi534=[0x6082b6, 0x1609ab8, 0x2778ba5, 0x37988ab, 0x47a89b8]
	var gc534=["Glaucous", "Shakespeare", "Shadow blue", "Ship Cove", "Wild Blue Yonder"]
	var g534=[gi534,gc534]
	var gi535=[0x65adb2, 0x16dafa7, 0x26eaea1, 0x374b2a8, 0x477a8ab, 0x578b1bf]
	var gc535=["Fountain Blue", "Tradewind", "Green Sheen", "Gulf Stream", "Neptune", "Glacier"]
	var g535=[gi535,gc535]
	var gi536=[0x66cdaa, 0x166ddaa, 0x26fd2be, 0x37ac5b4]
	var gc536=["Medium Aquamarine", "Medium aquamarine", "Downy", "Monte Carlo"]
	var g536=[gi536,gc536]
	var gi537=[]
	var gc537=[]
	var g537=[gi537,gc537]
	var r53=[g530, g531, g532, g533, g534, g535, g536, g537]
	var gi540=[0x8601af]
	var gc540=["Violet (RYB)"]
	var g540=[gi540,gc540]
	var gi541=[]
	var gc541=[]
	var g541=[gi541,gc541]
	var gi542=[0x9955bb, 0x19a4eae, 0x29c51b6]
	var gc542=["Deep Lilac", "Purpureus", "Purple Plum"]
	var g542=[gi542,gc542]
	var gi543=[0x8272a4, 0x18b72be, 0x29271a7, 0x39678b6]
	var gc543=["Deluge", "Middle blue purple", "Ce Soir", "Purple Mountain's Majesty"]
	var g543=[gi543,gc543]
	var gi544=[0x849ca9, 0x18c92ac, 0x28d90a1, 0x39391a0, 0x4979aaa, 0x59998a7, 0x69d8abf, 0x79d9cb4]
	var gc544=["Bali Hai", "Cool grey", "Manatee", "Grey Suit", "Manatee", "Santas Grey", "Cold Purple", "Logan"]
	var g544=[gi544,gc544]
	var gi545=[0x81a6aa, 0x18aaea4, 0x28ba8b7, 0x38ca8a0, 0x491a3b0, 0x592acb4, 0x693a2ba, 0x793aab9, 0x89caca5, 0x99db4aa, 0xa9fa3a7]
	var gc545=["Ziggurat", "Sea Nymph", "Pewter Blue", "Cascade", "Cadet grey", "Botticelli", "Rock Blue", "Nepal", "Tower Grey", "Skeptic", "Grey Chateau"]
	var g545=[gi545,gc545]
	var gi546=[0x96c8a2, 0x197d5b3, 0x29ac0b6, 0x39dd3a8]
	var gc546=["Eton blue", "Vista Blue", "Shadow Green", "Chinook"]
	var g546=[gi546,gc546]
	var gi547=[]
	var gc547=[]
	var g547=[gi547,gc547]
	var r54=[g540, g541, g542, g543, g544, g545, g546, g547]
	var gi550=[]
	var gc550=[]
	var g550=[gi550,gc550]
	var gi551=[0xbd33a4]
	var gc551=["Byzantine"]
	var g551=[gi551,gc551]
	var gi552=[]
	var gc552=[]
	var g552=[gi552,gc552]
	var gi553=[0xb768a2]
	var gc553=["Pearly purple"]
	var g553=[gi553,gc553]
	var gi554=[0xaa8cbc, 0x1aa98a9, 0x2ab92b3, 0x3ae94ab, 0x4ae98aa, 0x5b284be, 0x6b784a7]
	var gc554=["East Side", "Rose quartz", "Glossy grape", "London Hue", "Lilac Luster", "African violet", "Opera mauve"]
	var g554=[gi554,gc554]
	var gi555=[0xa0b1ae, 0x1a1a9a8, 0x2a2a1ac, 0x3a4adb0, 0x4a5a9b2, 0x5a6a6a6, 0x6a9a9a9, 0x7aaa9ad, 0x8aab5b8, 0x9acacac, 0xaacaea9, 0xbacb6b2, 0xcaeaead, 0xdb2beb5, 0xeb3abb6, 0xfb3bbb7, 0x10b7a8a3, 0x11b8b5a1, 0x12b9acbb, 0x13bab9a9, 0x14bbada1, 0x15bcbfa8, 0x16bdbaae, 0x17beb4ab, 0x18bebaa7, 0x19bebdb6, 0x1abebebe, 0x1bbfafb2, 0x1cbfb3b2, 0x1dbfb5a2, 0x1ebfbaaf]
	var gc555=["Conch", "Hit Grey", "Spun Pearl", "Gull Grey", "Mischka", "Quick Silver", "Dark Gray", "Silver (Metallic)", "Casper", "Silver chalice", "Silver Chalice", "Periglacial Blue", "Bombay", "Ash gray", "Chatelle", "Loblolly", "Martini", "Tana", "Lola", "Mist Grey", "Silk", "Beryl Green", "Grey Nickel", "Tide", "Ash", "Silver Sand", "Gray (X11 gray)", "Black Shadows", "Pink Swan", "Tea", "Cotton Seed"]
	var g555=[gi555,gc555]
	var gi556=[0xa0d6b4, 0x1a3c1ad, 0x2a8c3bc, 0x3acc9b2, 0x4addfad, 0x5b2c6b1, 0x6b3c1b1, 0x7b8c6be, 0x8b8d4bb, 0x9b9c3be, 0xabac0b3, 0xbbac0b4, 0xcbbcda5, 0xdbdcaa8, 0xebfc0ab]
	var gc556=["Turquoise green", "Cambridge blue", "Opal", "Gum Leaf", "Moss Green", "Zanah", "Rainee", "Nebula", "Surf", "Tiara", "Tasman", "Pumice", "Pixie Green", "Pale Leaf", "Kidnapper"]
	var g556=[gi556,gc556]
	var gi557=[0xa8e4a0, 0x1ace1af, 0x2b4e1bb, 0x3b7e3a8]
	var gc557=["Granny Smith apple", "Celadon", "Fringy Flower", "Madang"]
	var g557=[gi557,gc557]
	var r55=[g550, g551, g552, g553, g554, g555, g556, g557]
	var gi560=[]
	var gc560=[]
	var g560=[gi560,gc560]
	var gi561=[]
	var gc561=[]
	var g561=[gi561,gc561]
	var gi562=[]
	var gc562=[]
	var g562=[gi562,gc562]
	var gi563=[0xcf6ba9, 0x1cf71af, 0x2d470a2, 0x3de6fa1]
	var gc563=["Super pink", "Sky magenta", "Wild orchid", "Thulian pink"]
	var g563=[gi563,gc563]
	var gi564=[0xc19fb3, 0x1c99aa0, 0x2d982b5]
	var gc564=["Lily", "Careys Pink", "Middle purple"]
	var g564=[gi564,gc564]
	var gi565=[0xc2bcb1, 0x1c3bebb, 0x2c4aead, 0x3c5baa0, 0x4cab5b2, 0x5cab8a2, 0x6cfbea5, 0x7d2b3a9, 0x8d4b5b0, 0x9d4bbb1, 0xad8b4b6, 0xbdcbfac, 0xcddadaf, 0xddea5a4, 0xedfb1b6]
	var gc565=["Cloud", "Pale Slate", "Silver pink", "Sisal", "Cold Turkey", "Grain Brown", "Soft Amber", "Clam Shell", "Oyster Pink", "Wafer", "Pink Flare", "Just Right", "Pale Chestnut", "Pastel pink", "Blossom"]
	var g565=[gi565,gc565]
	var gi566=[0xc3d6bd, 0x1c5c3b0, 0x2c9c0bb, 0x3cac7b7, 0x4cecdb8, 0x5d0c8b0, 0x6d2c3a3, 0x7d2c6b6, 0x8d2d3b3, 0x9d4cfb4, 0xad5cbb2, 0xbdbc2ab, 0xcdcc6a0, 0xdded1b7, 0xedfd7bd]
	var gc566=["Surf Crest", "Kangaroo", "Silver (Crayola)", "Chrome White", "Moon Mist", "Parchment", "Double Spanish White", "Stark White", "Orinoco", "White Rock", "Aths Special", "Bone", "Raffia", "Spanish White", "Wheatfield"]
	var g566=[gi566,gc566]
	var gi567=[]
	var gc567=[]
	var g567=[gi567,gc567]
	var r56=[g560, g561, g562, g563, g564, g565, g566, g567]
	var gi570=[0xf400a1, 0x1ff1cae]
	var gc570=["Hollywood cerise", "Spicy Pink"]
	var g570=[gi570,gc570]
	var gi571=[0xe936a7, 0x1fe28a2]
	var gc571=["Frostbite", "Persian rose"]
	var g571=[gi571,gc571]
	var gi572=[0xf653a6, 0x1ff43a4, 0x2ff55a3]
	var gc572=["Magenta (Crayola)", "Wild Strawberry", "Brilliant rose"]
	var g572=[gi572,gc572]
	var gi573=[0xf56fa1, 0x1f77fbe, 0x2ff69b4]
	var gc573=["Cyclamen", "Persian pink", "Hot pink"]
	var g573=[gi573,gc573]
	var gi574=[0xe093ab, 0x1e68fac, 0x2e899be, 0x3ef95ae, 0x4ef98aa, 0x5f091a9, 0x6f19cbb, 0x7f38fa9, 0x8f78fa7, 0x9fc80a5, 0xafc89ac, 0xbff91a4, 0xcff91af]
	var gc574=["Kobi", "Charm pink", "Shocking", "Illusion", "Mauvelous", "Mauvelous", "Amaranth pink", "Vanilla ice", "Pink Sherbet", "Tickle Me Pink", "Tickle Me Pink", "Salmon pink", "Schauss pink"]
	var g574=[gi574,gc574]
	var gi575=[0xe0b8b1, 0x1e6b2a6, 0x2ebb9b3, 0x3f7bfbe, 0x4f8afa9, 0x5febaad]
	var gc575=["Cavern Pink", "Shilo", "Beauty Bush", "Spanish pink", "Sundown", "Melon"]
	var g575=[gi575,gc575]
	var gi576=[0xe0d8a7, 0x1e1d5a6, 0x2e1dabb, 0x3e8d4a2, 0x4e9d7ab, 0x5e9d9a9, 0x6e9dcbe, 0x7ebc2af, 0x8ebd4ae, 0x9edc9af, 0xaedd2a4, 0xbedd5a6, 0xceec7a2, 0xdeed9b6, 0xeefdfbb, 0xff0dfbb, 0x10f2cdbb, 0x11f3d7b6, 0x12f4d0a4, 0x13f5deb3, 0x14f9d3be, 0x15fad6a5, 0x16fadfad, 0x17fbceb1, 0x18fed8b1, 0x19fedbb7, 0x1affc5bb, 0x1bffcba4, 0x1cffd7a0, 0x1dffdab9, 0x1effdead]
	var gc576=["Mint Julep", "Sapling", "Coconut Cream", "Hampton", "Beeswax", "Sidecar", "Double Pearl Lusta", "Zinnwaldite", "Givry", "Desert sand", "Dairy Cream", "Astra", "Negroni", "Champagne", "Dutch white", "Dutch White", "Watusi", "Pink Lady", "Tequila", "Wheat", "Tuft Bush", "Tuscan", "Peach-Yellow", "Apricot", "Light orange", "Sandy Beach", "Your Pink", "Peach (Crayola)", "Frangipani", "Peach puff", "Navajo white"]
	var g576=[gi576,gc576]
	var gi577=[0xe3e5b1, 0x1eaeaae, 0x2ecebbd, 0x3eee8aa, 0x4eff8aa, 0x5f0f5bb, 0x6f2e5bf, 0x7f3e5ab, 0x8f6e0a4, 0x9f6eabe, 0xaf7e5b7, 0xbf8f6a8, 0xcfae7b5, 0xdfaf0be, 0xefbe7b2, 0xffee0a5, 0x10ffe4b5, 0x11ffe5b4]
	var gc577=["Tusk", "Medium Goldenrod", "Spring green (Crayola)", "Pale Goldenrod", "Australian Mint", "Chiffon", "Half Colonial White", "Vanilla", "Buttermilk", "Lemon meringue", "Barley White", "Shalimar", "Banana Mania", "Blond", "Banana Mania", "Cape Honey", "Moccasin", "Peach"]
	var g577=[gi577,gc577]
	var r57=[g570, g571, g572, g573, g574, g575, g576, g577]
	var b5=[r50, r51, r52, r53, r54, r55, r56, r57]
	var gi600=[0xcd]
	var gc600=["Medium blue"]
	var g600=[gi600,gc600]
	var gi601=[]
	var gc601=[]
	var g601=[gi601,gc601]
	var gi602=[]
	var gc602=[]
	var g602=[gi602,gc602]
	var gi603=[0x66cc, 0x11974d2]
	var gc603=["Navy Blue", "Navy blue (Crayola)"]
	var g603=[gi603,gc603]
	var gi604=[0x9dc4]
	var gc604=["Pacific Blue"]
	var g604=[gi604,gc604]
	var gi605=[0x3b4c8, 0x11ca9c9, 0x21dacd6]
	var gc605=["Iris Blue", "Pacific blue", "Cerulean (Crayola)"]
	var g605=[gi605,gc605]
	var gi606=[0xcccc, 0x100ced1]
	var gc606=["Robin's Egg Blue", "Dark turquoise"]
	var g606=[gi606,gc606]
	var gi607=[0xffcd, 0x108e8de]
	var gc607=["Sea green (Crayola)", "Bright Turquoise"]
	var g607=[gi607,gc607]
	var r60=[g600, g601, g602, g603, g604, g605, g606, g607]
	var gi610=[]
	var gc610=[]
	var g610=[gi610,gc610]
	var gi611=[]
	var gc611=[]
	var g611=[gi611,gc611]
	var gi612=[]
	var gc612=[]
	var g612=[gi612,gc612]
	var gi613=[0x246bce, 0x12d68c4]
	var gc613=["Celtic blue", "True Blue"]
	var g613=[gi613,gc613]
	var gi614=[0x2887c8, 0x13e8ede]
	var gc614=["Green-blue (Crayola)", "Tufts blue"]
	var g614=[gi614,gc614]
	var gi615=[0x38b0de]
	var gc615=["Summer Sky"]
	var g615=[gi615,gc615]
	var gi616=[]
	var gc616=[]
	var g616=[gi616,gc616]
	var gi617=[]
	var gc617=[]
	var g617=[gi617,gc617]
	var r61=[g610, g611, g612, g613, g614, g615, g616, g617]
	var gi620=[]
	var gc620=[]
	var g620=[gi620,gc620]
	var gi621=[]
	var gc621=[]
	var g621=[gi621,gc621]
	var gi622=[0x4156c5, 0x15a4fcf]
	var gc622=["Free Speech Blue", "Iris"]
	var g622=[gi622,gc622]
	var gi623=[0x446ccf]
	var gc623=["Han blue"]
	var g623=[gi623,gc623]
	var gi624=[0x5784c1, 0x15b89c0]
	var gc624=["Havelock Blue", "Danube"]
	var g624=[gi624,gc624]
	var gi625=[0x47abcc, 0x14db1c8, 0x256a0d3, 0x35ba0d0]
	var gc625=["Maximum blue", "Viking", "Carolina blue", "Picton Blue"]
	var g625=[gi625,gc625]
	var gi626=[0x48d1cc]
	var gc626=["Medium turquoise"]
	var g626=[gi626,gc626]
	var gi627=[0x40e0d0]
	var gc627=["Turquoise"]
	var g627=[gi627,gc627]
	var r62=[g620, g621, g622, g623, g624, g625, g626, g627]
	var gi630=[]
	var gc630=[]
	var g630=[gi630,gc630]
	var gi631=[0x652dc1]
	var gc631=["Purple Heart"]
	var g631=[gi631,gc631]
	var gi632=[0x6050dc, 0x16a5acd]
	var gc632=["Majorelle blue", "Slate blue"]
	var g632=[gi632,gc632]
	var gi633=[0x766ec8]
	var gc633=["Violet-blue (Crayola)"]
	var g633=[gi633,gc633]
	var gi634=[0x6699cc, 0x16d9bc3]
	var gc634=["Livid", "Cerulean frost"]
	var g634=[gi634,gc634]
	var gi635=[0x6ca0dc, 0x171a6d2, 0x272a0c1, 0x377b7d0]
	var gc635=["Little boy blue", "Iceberg", "Air superiority blue", "Seagull"]
	var g635=[gi635,gc635]
	var gi636=[0x7ecddd]
	var gc636=["Spray"]
	var g636=[gi636,gc636]
	var gi637=[0x7fffd4]
	var gc637=["Aquamarine"]
	var g637=[gi637,gc637]
	var r63=[g630, g631, g632, g633, g634, g635, g636, g637]
	var gi640=[0x8806ce, 0x19400d3, 0x29f00c5]
	var gc640=["French violet", "Dark violet", "Purple (Munsell)"]
	var g640=[gi640,gc640]
	var gi641=[0x9932cc]
	var gc641=["Dark orchid"]
	var g641=[gi641,gc641]
	var gi642=[]
	var gc642=[]
	var g642=[gi642,gc642]
	var gi643=[0x8378c7, 0x18e72c7, 0x29370db, 0x39470c4, 0x49966cc]
	var gc643=["Moody Blue", "True V", "Medium purple", "Lilac Bush", "Amethyst"]
	var g643=[gi643,gc643]
	var gi644=[0x8b98d8, 0x19999cc]
	var gc644=["Portage", "Blue Bell"]
	var g644=[gi644,gc644]
	var gi645=[0x8aa7cc, 0x18cbed6]
	var gc645=["Polo Blue", "Dark sky blue"]
	var g645=[gi645,gc645]
	var gi646=[0x86d2c1, 0x189d9c8, 0x28dd9cc, 0x39ed1d3]
	var gc646=["Bermuda", "Riptide", "Middle blue green", "Morning Glory"]
	var g646=[gi646,gc646]
	var gi647=[]
	var gc647=[]
	var g647=[gi647,gc647]
	var r64=[g640, g641, g642, g643, g644, g645, g646, g647]
	var gi650=[]
	var gc650=[]
	var g650=[gi650,gc650]
	var gi651=[]
	var gc651=[]
	var g651=[gi651,gc651]
	var gi652=[0xba55d3]
	var gc652=["Medium orchid"]
	var g652=[gi652,gc652]
	var gi653=[0xb57edc]
	var gc653=["Lavender (floral)"]
	var g653=[gi653,gc653]
	var gi654=[0xa29ecd, 0x1ae99d2]
	var gc654=["Wistful", "Biloba Flower"]
	var g654=[gi654,gc654]
	var gi655=[0xa2a2d0, 0x1a2add0, 0x2a4afcd, 0x3a9b2c3, 0x4aebbc1, 0x5bdbace, 0x6bdbbd7, 0x7bfbdc1]
	var gc655=["Blue bell", "Wild blue yonder", "Echo Blue", "Cadet blue (Crayola)", "Heather", "Blue Haze", "Lavender Grey", "French Grey"]
	var g655=[gi655,gc655]
	var gi656=[0xa0cdd9, 0x1a6d5d0, 0x2add9d1, 0x3b0c4c4, 0x4b0c4de, 0x5b3c4d8, 0x6bbd0c9, 0x7bfc1c2, 0x8bfcdc0]
	var gc656=["Regent St Blue", "Sinbad", "Scandal", "Jungle Mist", "Light steel blue", "Spindle", "Jet Stream", "Silver sand", "Paris White"]
	var g656=[gi656,gc656]
	var gi657=[0xaaf0d1, 0x1afe3d6, 0x2b4e2d5, 0x3b6ecde]
	var gc657=["Magic mint", "Ice Cold", "Cruise", "Water Leaf"]
	var g657=[gi657,gc657]
	var r65=[g650, g651, g652, g653, g654, g655, g656, g657]
	var gi660=[0xcc00cc]
	var gc660=["Deep Magenta"]
	var g660=[gi660,gc660]
	var gi661=[0xcc33cc]
	var gc661=["Steel pink"]
	var g661=[gi661,gc661]
	var gi662=[0xc154c1]
	var gc662=["Fuchsia (Crayola)"]
	var g662=[gi662,gc662]
	var gi663=[0xd473d4, 0x1da70d6]
	var gc663=["French mauve", "Orchid"]
	var g663=[gi663,gc663]
	var gi664=[]
	var gc664=[]
	var g664=[gi664,gc664]
	var gi665=[0xc0b2d7, 0x1c0bfc7, 0x2c2a9db, 0x3c3b9dd, 0x4c8a2c8, 0x5c8b1c0, 0x6c9a0dc, 0x7cab4d4, 0x8d8b2d1, 0x9d8bfd8, 0xadda0dd, 0xbdeb7d9]
	var gc665=["Moon Raker", "Ghost", "Perfume", "Melrose", "Lilac", "Maverick", "Wisteria", "Prelude", "Pink lavender", "Thistle", "Plum (web)", "French Lilac"]
	var g665=[gi665,gc665]
	var gi666=[0xc0c0c0, 0x1c1d8c5, 0x2c2d5c4, 0x3c4c3d0, 0x4c7cdd8, 0x5cbc9c0, 0x6cbcdcd, 0x7cbcec0, 0x8cbd0cf, 0x9cdc6c5, 0xacdcdcd, 0xbcdd5d5, 0xcd1d3cc, 0xdd2d1cd, 0xed2d2c0, 0xfd3d3d3, 0x10d3dbcb, 0x11d4cfc5, 0x12d5d2d1, 0x13d6cadd, 0x14d6d1c0, 0x15d7cec5, 0x16d8ddda, 0x17d9d0c1, 0x18d9d6cf, 0x19d9ddd5, 0x1ad9dfcd, 0x1bdac0cd, 0x1cdad6cc, 0x1ddbd0ca, 0x1edbd7d2, 0x1fdbd9c2, 0x20dcd7d1, 0x21dcd9cd, 0x22dcdcdc, 0x23dcdddd, 0x24dddcdb, 0x25ded1c6, 0x26deddcb, 0x27dfd7d2, 0x28dfddd6]
	var gc666=["Silver", "Edgewater", "Sea Mist", "Lavender gray", "Link Water", "Quill Grey", "Iron", "Harp", "Geyser", "Alto", "Very Light Grey", "Zumthor", "Grey Nurse", "Concrete", "Celeste", "Light Grey", "Ottoman", "Westar", "Mercury", "Languid lavender", "Ecru White", "Swirl", "Mystic", "Blanc", "Timberwolf", "Aqua Haze", "Gin", "Twilight", "White Pointer", "Swiss Coffee", "Timberwolf", "Loafer", "Gallery", "Milk White", "Gainsboro", "Athens Grey", "Porcelain", "Pearl Bush", "Green White", "Bon Jour", "Sea Fog"]
	var g666=[gi666,gc666]
	var gi667=[0xc0e8d5, 0x1c5e7cd, 0x2c6eadd, 0x3cae1d9, 0x4d0f0c0, 0x5d6f0cd, 0x6d7e7d0, 0x7d8f0d2, 0x8dae6dd, 0x9dbe0d0, 0xadbe4dc, 0xbdbe5d2, 0xcdeeadc, 0xddef1dd, 0xedfe6cf, 0xfdff1d6]
	var gc667=["Aero blue", "Granny Apple", "Mint Tulip", "Iceberg", "Tea green", "Snowy Mint", "Peppermint", "Blue Romance", "Swans Down", "Feta", "Aqua Squeeze", "Frostee", "Apple Green", "Tara", "Willow Brook", "Hint Of Green"]
	var g667=[gi667,gc667]
	var r66=[g660, g661, g662, g663, g664, g665, g666, g667]
	var gi670=[0xfc0fc0, 0x1ff00cc, 0x2ff1dce]
	var gc670=["Shocking pink", "Hot Magenta", "Hot magenta"]
	var g670=[gi670,gc670]
	var gi671=[0xff33cc]
	var gc671=["Razzle dazzle rose"]
	var g671=[gi671,gc671]
	var gi672=[0xe35bd8, 0x1fe4eda]
	var gc672=["Free Speech Magenta", "Purple pizzazz"]
	var g672=[gi672,gc672]
	var gi673=[0xff66cc, 0x1ff6ec7]
	var gc673=["Rose pink", "Neon Pink"]
	var g673=[gi673,gc673]
	var gi674=[0xe29cd2, 0x1e79fc4, 0x2f883c2]
	var gc674=["Orchid (Crayola)", "Kobi", "Tea Rose"]
	var g674=[gi674,gc674]
	var gi675=[0xe0b7c2, 0x1edb8c7, 0x2efbbcc, 0x3f2bdcd, 0x4f5b2c5, 0x5f6adc6, 0x6fbaed2, 0x7ffa6c9, 0x8ffb6c1, 0x9ffb7c5, 0xaffb7d5, 0xbffbcd9]
	var gc675=["Melanie", "Chantilly", "Cameo pink", "Orchid pink", "Cupid", "Nadeshiko pink", "Lavender Pink", "Carnation pink", "Light pink", "Cherry blossom pink", "Cotton Candy", "Cotton candy"]
	var g675=[gi675,gc675]
	var gi676=[0xe0ded7, 0x1e1dacb, 0x2e1dbd0, 0x3e2cdd5, 0x4e2ddc7, 0x5e3dac9, 0x6e3dfd9, 0x7e5cac0, 0x8e6d6cd, 0x9e6d8d4, 0xae6dbc7, 0xbe7d2c8, 0xce8ccd7, 0xdeadac2, 0xeebd2d1, 0xfeed9c4, 0x10eedfde, 0x11efd6da, 0x12efdcd4, 0x13efdecd, 0x14f1ddcf, 0x15f4c2c2, 0x16f4c8db, 0x17f5d0c9, 0x18f5d7dc, 0x19f5dec4, 0x1af6ccd7, 0x1bf6deda, 0x1cf9c0c4, 0x1dfadadd, 0x1efbd7cc, 0x1ffcd5cf, 0x20fcdbd2, 0x21fdd7d8, 0x22fedcc1, 0x23ffc0cb, 0x24ffddca]
	var gc676=["Black Haze", "Albescent White", "Merino", "Prim", "Travertine", "Bone", "Vista White", "Dust Storm", "Dawn Pink", "Ebb", "Half Spanish White", "Bizarre", "Queen pink", "Solitaire", "Vanilla Ice", "Almond", "Soft Peach", "Pale Rose", "Pot Pourri", "Almond", "Champagne pink", "Tea rose", "Classic Rose", "Coral Candy", "Cherub", "Sazerac", "Pink Lace", "Remy", "Azalea", "Pale pink", "Cinderella", "Cosmos", "Pippin", "We Peep", "Karry", "Pink", "Unbleached silk"]
	var g676=[gi676,gc676]
	var gi677=[0xe0e4dc, 0x1e1e4c5, 0x2e3e3dc, 0x3e4e2dc, 0x4e5e4db, 0x5e5e6df, 0x6e7e4de, 0x7e9e1d9, 0x8e9e6dc, 0x9e9ffdb, 0xaeae0c8, 0xbeae3cd, 0xceae4dc, 0xdeaf7c9, 0xeebe1ce, 0xfebe2d2, 0x10ebe5d5, 0x11ece5da, 0x12ede7c8, 0x13eee7c8, 0x14eee7dc, 0x15eeefdf, 0x16efecde, 0x17eff5d1, 0x18f0ead6, 0x19f1e9d2, 0x1af1ead7, 0x1bf1ebd9, 0x1cf1ebda, 0x1df1edd4, 0x1ef1f1c6, 0x1ff2e6dd, 0x20f2e8d7, 0x21f2eddd, 0x22f3e5c0, 0x23f3e5dc, 0x24f5e6c4, 0x25f5f3ce, 0x26f5f4c1, 0x27f5f5cc, 0x28f5f5dc, 0x29f5f9cb, 0x2af6e3da, 0x2bf6f5d7, 0x2cf7e7ce, 0x2df7f0db, 0x2ef8eaca, 0x2ff8eadf, 0x30f8ebdd, 0x31f8eddb, 0x32f8f3c4, 0x33f8f6d8, 0x34f8f6df, 0x35f9e4c5, 0x36f9e4c6, 0x37f9f7de, 0x38fae6df, 0x39faebd7, 0x3afaf3dc, 0x3bfafad2, 0x3cfbf0d6, 0x3dfbf2db, 0x3efbf3d3, 0x3ffce9d7, 0x40fcedc5, 0x41fdefd3, 0x42fdefdb, 0x43ffe4c4, 0x44ffebcd, 0x45ffefd5, 0x46fff8dc, 0x47fffacd, 0x48fffdd0]
	var gc677=["Catskill White", "Frost", "Snow Drift", "Wan White", "Black White", "Black Squeeze", "Wild Sand", "Spring Wood", "Narvik", "Nyanza", "Pearl Lusta", "Orange White", "Pampas", "Snow Flurry", "Bleach White", "Quarter Spanish White", "Cararra", "Soapstone", "Half And Half", "Scotch Mist", "White Linen", "Sugar Cane", "Rice Cake", "Rice Flower", "Eggshell", "Parchment", "Half Pearl Lusta", "Orchid White", "Buttery White", "Rum Swizzle", "Spring Sun", "Fantasy", "Magnolia", "Quarter Pearl Lusta", "Milk Punch", "Fair Pink", "Pipi", "Moon Glow", "Cumulus", "Mimosa", "Beige", "Carla", "Provincial Pink", "Hint Of Yellow", "Champagne", "Apricot White", "Gin Fizz", "Chardon", "Bridal Heath", "Island Spice", "Corn Field", "White Nectar", "Promenade", "Egg Sour", "Derby", "Chilean Heath", "Bridesmaid", "Antique white", "Off Yellow", "Light goldenrod yellow", "Half Dutch White", "Early Dawn", "China Ivory", "Serenade", "Oasis", "Varden", "Forget Me Not", "Bisque", "Blanched Almond", "Papaya whip", "Cornsilk", "Lemon chiffon", "Cream"]
	var g677=[gi677,gc677]
	var r67=[g670, g671, g672, g673, g674, g675, g676, g677]
	var b6=[r60, r61, r62, r63, r64, r65, r66, r67]
	var gi700=[0xff]
	var gc700=["Blue"]
	var g700=[gi700,gc700]
	var gi701=[]
	var gc701=[]
	var g701=[gi701,gc701]
	var gi702=[0x247fe]
	var gc702=["Blue (RYB)"]
	var g702=[gi702,gc702]
	var gi703=[0x7fff, 0x11f75fe]
	var gc703=["Azure", "Blue (Crayola)"]
	var g703=[gi703,gc703]
	var gi704=[0x1e90ff]
	var gc704=["Dodger blue"]
	var g704=[gi704,gc704]
	var gi705=[0xb7eb, 0x100bfff]
	var gc705=["Cyan (process)", "Deep sky blue"]
	var g705=[gi705,gc705]
	var gi706=[0xccff]
	var gc706=["Vivid sky blue"]
	var g706=[gi706,gc706]
	var gi707=[0xffef, 0x100ffff, 0x215f4ee]
	var gc707=["Turquoise blue", "Spanish sky blue", "Fluorescent blue"]
	var g707=[gi707,gc707]
	var r70=[g700, g701, g702, g703, g704, g705, g706, g707]
	var gi710=[0x3f00ff]
	var gc710=["Ultramarine"]
	var g710=[gi710,gc710]
	var gi711=[]
	var gc711=[]
	var g711=[gi711,gc711]
	var gi712=[]
	var gc712=[]
	var g712=[gi712,gc712]
	var gi713=[0x3c69e7]
	var gc713=["Bluetiful"]
	var g713=[gi713,gc713]
	var gi714=[0x318ce7]
	var gc714=["Bleu de France"]
	var g714=[gi714,gc714]
	var gi715=[]
	var gc715=[]
	var g715=[gi715,gc715]
	var gi716=[]
	var gc716=[]
	var g716=[gi716,gc716]
	var gi717=[]
	var gc717=[]
	var g717=[gi717,gc717]
	var r71=[g710, g711, g712, g713, g714, g715, g716, g717]
	var gi720=[0x5218fa]
	var gc720=["Han purple"]
	var g720=[gi720,gc720]
	var gi721=[]
	var gc721=[]
	var g721=[gi721,gc721]
	var gi722=[0x4d4dff]
	var gc722=["Neon Blue"]
	var g722=[gi722,gc722]
	var gi723=[0x4166f5, 0x14169e1, 0x24666ff]
	var gc723=["Ultramarine blue", "Royal blue (light)", "Neon blue"]
	var g723=[gi723,gc723]
	var gi724=[0x5b92e5]
	var gc724=["United Nations blue"]
	var g724=[gi724,gc724]
	var gi725=[0x5dadec]
	var gc725=["Blue jeans"]
	var g725=[gi725,gc725]
	var gi726=[]
	var gc726=[]
	var g726=[gi726,gc726]
	var gi727=[]
	var gc727=[]
	var g727=[gi727,gc727]
	var r72=[g720, g721, g722, g723, g724, g725, g726, g727]
	var gi730=[0x6600ff, 0x16f00ff, 0x27f00ff]
	var gc730=["Electric Indigo", "Electric indigo", "Violet (color wheel)"]
	var g730=[gi730,gc730]
	var gi731=[]
	var gc731=[]
	var g731=[gi731,gc731]
	var gi732=[]
	var gc732=[]
	var g732=[gi732,gc732]
	var gi733=[0x7b68ee]
	var gc733=["Medium slate blue"]
	var g733=[gi733,gc733]
	var gi734=[0x6495ed]
	var gc734=["Cornflower Blue"]
	var g734=[gi734,gc734]
	var gi735=[0x66b7e1, 0x177b5fe, 0x27aaae0, 0x37cb9e8]
	var gc735=["Malibu", "French sky blue", "Jordy Blue", "Aero"]
	var g735=[gi735,gc735]
	var gi736=[0x6cdae7, 0x173c2fb, 0x276d7ea, 0x37ed4e6]
	var gc736=["Turquoise Blue", "Maya blue", "Sky blue (Crayola)", "Middle blue"]
	var g736=[gi736,gc736]
	var gi737=[0x6fffff, 0x17df9ff]
	var gc737=["Baby Blue", "Electric blue"]
	var g737=[gi737,gc737]
	var r73=[g730, g731, g732, g733, g734, g735, g736, g737]
	var gi740=[0x8f00ff, 0x19f00ff]
	var gc740=["Violet", "Vivid violet"]
	var g740=[gi740,gc740]
	var gi741=[0x8a2be2]
	var gc741=["Blue-violet"]
	var g741=[gi741,gc741]
	var gi742=[]
	var gc742=[]
	var g742=[gi742,gc742]
	var gi743=[0x8470ff]
	var gc743=["Light Slate Blue"]
	var g743=[gi743,gc743]
	var gi744=[]
	var gc744=[]
	var g744=[gi744,gc744]
	var gi745=[]
	var gc745=[]
	var g745=[gi745,gc745]
	var gi746=[0x87ceeb, 0x187cefa, 0x289cff0, 0x38cceea, 0x493ccea, 0x59bc4e2, 0x69bddff]
	var gc746=["Sky blue", "Light sky blue", "Baby blue", "Anakiwa", "Light cornflower blue", "Pale cerulean", "Columbia Blue"]
	var g746=[gi746,gc746]
	var gi747=[]
	var gc747=[]
	var g747=[gi747,gc747]
	var r74=[g740, g741, g742, g743, g744, g745, g746, g747]
	var gi750=[0xbf00ff]
	var gc750=["Electric Purple"]
	var g750=[gi750,gc750]
	var gi751=[0xa020f0]
	var gc751=["Veronica"]
	var g751=[gi751,gc751]
	var gi752=[]
	var gc752=[]
	var g752=[gi752,gc752]
	var gi753=[]
	var gc753=[]
	var g753=[gi753,gc753]
	var gi754=[]
	var gc754=[]
	var g754=[gi754,gc754]
	var gi755=[0xacace6, 0x1acb9e8]
	var gc755=["Maximum blue purple", "Perano"]
	var g755=[gi755,gc755]
	var gi756=[0xa1caf1, 0x1a4d2e0, 0x2a4dce6, 0x3a4dded, 0x4a5ceec, 0x5abcdef, 0x6add8e6, 0x7aec9eb, 0x8afdbf5, 0x9b9d9eb, 0xabcd4e6]
	var gc756=["Baby blue eyes", "French Pass", "Charlotte", "Non-photo blue", "Sail", "Pale Cornflower Blue", "Light blue", "Tropical Blue", "Uranian blue", "Columbia Blue", "Pale aqua"]
	var g756=[gi756,gc756]
	var gi757=[0xa3e3ed, 0x1ace5ee, 0x2afeeee, 0x3b0e0e6, 0x4b2ffff]
	var gc757=["Blizzard Blue", "Blizzard blue", "Pale Turquoise", "Powder blue", "Italian sky blue"]
	var g757=[gi757,gc757]
	var r75=[g750, g751, g752, g753, g754, g755, g756, g757]
	var gi760=[0xdd00ff, 0x1df00ff]
	var gc760=["Psychedelic Purple", "Psychedelic purple"]
	var g760=[gi760,gc760]
	var gi761=[]
	var gc761=[]
	var g761=[gi761,gc761]
	var gi762=[]
	var gc762=[]
	var g762=[gi762,gc762]
	var gi763=[0xdf73ff]
	var gc763=["Heliotrope"]
	var g763=[gi763,gc763]
	var gi764=[0xd891ef]
	var gc764=["Bright lilac"]
	var g764=[gi764,gc764]
	var gi765=[]
	var gc765=[]
	var g765=[gi765,gc765]
	var gi766=[0xc3cde6, 0x1c5cbe1, 0x2ccccff, 0x3d2daed, 0x4d5c7e8, 0x5d9d9f3, 0x6ddd6e1]
	var gc766=["Periwinkle (Crayola)", "Light periwinkle", "Periwinkle", "Hawkes Blue", "Fog", "Quartz", "Titan White"]
	var g766=[gi766,gc766]
	var gi767=[0xc2e6ec, 0x1cae7e2, 0x2cbe8e8, 0x3ceefe4, 0x4d0eae8, 0x5d1eaea, 0x6d3e5ef, 0x7d7eee4, 0x8ddede9, 0x9dee3e3, 0xadfefea, 0xbdff0e2]
	var gc767=["Onahau", "Jagged Ice", "Mabel", "Humming Bird", "Foam", "Oyster Bay", "Pattens Blue", "White Ice", "Tranquil", "Zircon", "Clear Day", "Off Green"]
	var g767=[gi767,gc767]
	var r76=[g760, g761, g762, g763, g764, g765, g766, g767]
	var gi770=[0xff00ff]
	var gc770=["Magenta"]
	var g770=[gi770,gc770]
	var gi771=[]
	var gc771=[]
	var g771=[gi771,gc771]
	var gi772=[]
	var gc772=[]
	var g772=[gi772,gc772]
	var gi773=[0xfc74fd, 0x1ff66ff, 0x2ff6fff, 0x3ff77ff]
	var gc773=["Pink flamingo", "Pink Flamingo", "Ultra pink", "Fuchsia Pink"]
	var g773=[gi773,gc773]
	var gi774=[0xee82ee, 0x1f984e5]
	var gc774=["Violet (web)", "Pale Magenta"]
	var g774=[gi774,gc774]
	var gi775=[0xe0b0ff, 0x1fba0e3]
	var gc775=["Mauve", "Lavender Rose"]
	var g775=[gi775,gc775]
	var gi776=[0xe3d6e9, 0x1e4d7e5, 0x2e6dfe7, 0x3f8dbe0, 0x4fdd7e4, 0x5fddde6, 0x6ffdae9, 0x7ffddf4]
	var gc776=["Blue Chalk", "Snuff", "Selago", "Carousel Pink", "Pig Pink", "Piggy pink", "Mimi pink", "Pink lace"]
	var g776=[gi776,gc776]
	var gi777=[0xe0ffff, 0x1e1f8e7, 0x2e2f2e4, 0x3e5e4e2, 0x4e5f2e7, 0x5e6e6fa, 0x6e6f2ea, 0x7e7e5e8, 0x8e7f2e9, 0x9e8f3e8, 0xae9ecf1, 0xbe9eeeb, 0xcebf7e4, 0xdede7e0, 0xeedeae0, 0xfeef3e5, 0x10efe6e6, 0x11f0f8ff, 0x12f0fff0, 0x13f0ffff, 0x14f2f0e6, 0x15f4eae4, 0x16f4efe0, 0x17f4f0e6, 0x18f4f0ec, 0x19f4f6ec, 0x1af5e6ea, 0x1bf5efeb, 0x1cf5f5f5, 0x1df5fffa, 0x1ef8e4e3, 0x1ff8f4ff, 0x20f8f8ff, 0x21f9e8e2, 0x22fae6fa, 0x23faf0e6, 0x24fbeee8, 0x25fde9e0, 0x26fdf5e6, 0x27fefefa, 0x28ffe4e1, 0x29fff0f5, 0x2afff5ee, 0x2bfff8e7, 0x2cfffaf0, 0x2dfffafa, 0x2effffe0, 0x2ffffff0, 0x30ffffff]
	var gc777=["Light cyan", "Cosmic Latte", "Frosted Mint", "Platinum", "Polar", "Lavender (web)", "Bubbles", "White Lilac", "Dew", "Aqua Spring", "Solitude", "Lily White", "Panache", "Desert Storm", "Alabaster", "Saltpan", "Whisper", "Alice blue", "Honeydew", "Azure (X11/web color)", "Alabaster", "Sauvignon", "Bianca", "Romance", "Isabelline", "Twilight Blue", "Amour", "Hint Of Red", "White Smoke", "Mint cream", "Tutu", "Magnolia", "Ghost white", "Wisp Pink", "Pale purple (Pantone)", "Linen", "Rose White", "Chablis", "Old lace", "Baby powder", "Misty rose", "Lavender blush", "Seashell", "Cosmic latte", "Floral white", "Snow", "Light yellow", "Ivory", "White"]
	var g777=[gi777,gc777]
	var r77=[g770, g771, g772, g773, g774, g775, g776, g777]
	var b7=[r70, r71, r72, r73, r74, r75, r76, r77]
	all=[b0, b1, b2, b3, b4, b5, b6, b7]
func color(r,g,b) -> Array:
	return all[b][r][g]
#LMAO at first i had vars inside the func, which means they get initialized every time
#now its like 10 times faster
#btw it was done using a cool c# program which i made to output with syntax that
#you can paste into here and it should work
#big brian
#also i cant help but notice that the entire editor lags when you type and are
#near init... suspicious
func getcols()->Array:
	return all

func InfoToArr(i:int)->Array: #0x+r8+g8+b8+n ->[b,r,g,n]
	return [i>>16&0xff,i&0xff,i>>8&0xff,i>>24]
func InfoToCol(i:int)->Color:
	return Color(i&0xff,i>>8&0xff,i>>16&0xff)
func InfoToName(i:int)->String: #0x+r8+g8+b8+n ->[b,r,g,n]
	var info=InfoToArr(i)
	return color(info[0],info[1],info[2])[1][info[3]]

func editcols()->void: #for old
	var arri=[]
	var arrc=[]
	var done=[]
	for b in 8:
		for r in 8:
			for g in 8:
				for n in all[b][r][g][0].size():
					arri.append(all[b][r][g][0][n])
					arrc.append(all[b][r][g][1][n].to_upper())
	for n in arri.size():
		var _n=arrc.find(arrc[n],n+1)
		if !arrc[n] in done and _n!=-1:
			print(str(InfoToArr(arri[n]))+arrc[n])
			print(str(InfoToArr(arri[_n]))+arrc[_n])
			done.append(arrc[n])
			while _n!=-1:
				_n=arrc.find(arrc[_n],_n+1)
				print(str(InfoToArr(arri[_n]))+arrc[_n])
				
	
#	for b in 8:
#		for r in 8:
#			for g in 8:
#				#Color8(255,255,255)
#				#0x+n+r8+g8+b8
#				var num:String=str(b)+str(r)+str(g)
#
#				var infos=[]
#				var cols=[]
#
#				for n in all[b][r][g].size():
#					var col=all[b][r][g][n]
#					var info:=ColorNameToColor(col)
#					infos.append(IntToHex(n<<24|info.r8<<16|info.g8<<8|info.b8))
#					cols.append("\""+col.substr(8)+"\"")
#
#				print("var gi"+num+"="+str(infos))
#				print("var gc"+num+"="+str(cols))
#				print("var g"+num+"=[gi"+num+",gc"+num+"]")
#			var gs=[]
#			for n in 8:
#				gs.append("g"+str(b)+str(r)+str(n))
#			print("var r"+str(b)+str(r)+"="+str(gs))
#		var rs=[]
#		for n in 8:
#			rs.append("r"+str(b)+str(n))
#		print("var b"+str(b)+"="+str(rs))
#	var bs=[]
#	for n in 8:
#		bs.append("b"+str(n))
#	print("all"+"="+str(bs))





func ___COLOR_FUNCTIONS___():
	return true

func ColorNameToColor(C:String) ->Color:
	if C.length()>7:
		C=C[1]+C[2]+C[3]+C[4]+C[5]+C[6]
	else:
		return Color()
	return HexToColor(C)

func HexToColor(C:String) ->Color:
	#uhhh, i guess it does hex to color?
	var Col:String = str(C).to_upper()
	var color := Array()
	if Col.length()!=6:
		return Color()
	for i in range(3):
		var clor:String=str(Col[i*2],Col[i*2+1])
		color.append(("0x"+clor).hex_to_int())
	return Color8(color[0],color[1],color[2])

#Use with color names
#KILL THIS
func ColHexToPos(hx:String)->Vector3:
	if hx=="":
		return Vector3(255,255,255)
	#god damn there was a hex_to_int() all this time, and it is much faster
	var pos := Vector3(("0x"+hx[1]+hx[2]).hex_to_int(),("0x"+hx[3]+hx[4]).hex_to_int(),("0x"+hx[5]+hx[6]).hex_to_int())
	return pos

class sort:
	static func sort_dist(a:Array,b:Array)->bool:
		if a[1]<b[1]:
			return true
		return false

func ClosestColorSearch(r:int,g:int,b:int)->String:
	#yes, that did happen
	return ColorClosestSearch(r,g,b)

#Dependencies: ColorSearchBoxMaker! sort_dist! ColHexToPos!
#find closest color based on "chunks"
func ColorClosestSearch(r:int,g:int,b:int)->String:#0-255
	assert(r>=0&&g>=0&&b>=0)
	r=r&0xff
	g=g&0xff
	b=b&0xff
	var pos := Vector3(r,g,b)
	var closest:float = 16384.0
# warning-ignore:integer_division
# warning-ignore:integer_division
# warning-ignore:integer_division
	var center := Vector3(r/32,g/32,b/32)
	var sectors :=Array()
	var size:int=0
	var delete:int=-1
	var closestcol:String=""
	var end:bool=false
	#note - does not support equal distance points, a single one will get picked
	#specifically one that appeared first/one in a sector that comes first
	var dist:float
	for n in 5:
		sectors=ColorSearchBoxMaker(center,[r,g,b],size,delete)
		#sectors.sort_custom(sort,"sort_dist")
		for sector in sectors:
			if true:#closest>sector[1]:
				for color in color(sector[0][0],sector[0][1],sector[0][2]):
					dist= pos.distance_squared_to(ColHexToPos(color))
					if closest>dist:
						closestcol=color
						closest=dist
			else:
				end=true
				break
		if end:
			break
		size+=1
		delete=size-1
	return closestcol


func ___MISC_FUNCTIONS___():
	return true
#honestly idk why this isnt a built in func but its not	

func ArrToStr(arr:Array)->String:
	var _str:="["
	for n in arr.size():
		_str+=str(arr[n])
		if n!=arr.size()-1:
			_str+=","
	return _str+"]"
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

func WhileHighestBit(i:int)->int:
	var result:int=int(min(i,1))
	while(!i>>1==0):
		i=i>>1
		result+=1
	return result

func HighestBit(i:int)->int:
	if i==0:
		return 0
	#var flot:float=log(i)/log(2)
	#var sanity :bool=is_equal_approx(flot,round(flot)) #is gone
	#return (int(round(flot))+1)*int(sanity)+(int(flot)+1)*int(!sanity)
	return int(log(i)/log(2))+1

#explanatory
func IntToHex(i:int,minleng:int=0)->String:
	var hex:="0x"
	var leng:=HighestBit(i)
# warning-ignore:integer_division
	for _i in range(max(int((leng-1)/4)+1,minleng),0,-1): # cus intended
		var n:=(i>>((_i-1)*4))&0xf
		hex+=char(n+48+39*int(n>9))
	return hex

#explanatory
func DistToBox(pos:Vector3,pos1:Vector3,pos2:Vector3)->float:
	var x := max(max(pos1.x-pos.x,pos.x-pos2.x),0)
	var y := max(max(pos1.y-pos.y,pos.y-pos2.y),0)
	var z := max(max(pos1.z-pos.z,pos.z-pos2.z),0)
	return pow(x,2)+pow(y,2)+pow(z,2)

#explanatory
func NewVec2(n:float)->Vector2:
	return Vector2(n,n)
func NewVec3(n:float)->Vector3:
	return Vector3(n,n,n)

#pos = position
#pos1/2=first/second box edges
#first pos at 0,0; second at +,+
func Vec2IfInBox(pos:Vector2, pos1:Vector2, pos2:Vector2)->bool:
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y)
func Vec2IfInBoxExcluded(pos:Vector2, pos1:Vector2, pos2:Vector2)->bool:
	return (pos2.x>pos.x && pos.x>pos1.x && pos2.y>pos.y && pos.y>pos1.y)
func Vec3IfInBox(pos:Vector3, pos1:Vector3, pos2:Vector3)->bool:
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y && pos2.z>=pos.z && pos.z>=pos1.z)
func Vec3IfInBoxExcluded(pos:Vector3, pos1:Vector3, pos2:Vector3)->bool:
	return (pos2.x>pos.x && pos.x>pos1.x && pos2.y>pos.y && pos.y>pos1.y && pos2.z>pos.z && pos.z>pos1.z)


#create array of cube of sectors with hole specificed by delete 
#include dist to sector
#NOTE: range() is BAD and you need to do range(x,y+1) or else its gonna be 1 short...
#Dependencies: Vec3IfInBox! NewVec3! DistToBox!
#return: [[sectorpos,dist to sector from color]...]
#not to be used as box maker unless box fits in 8x8x8

#NEED BETTER ALGORITHM
func ColorSearchBoxMaker(center:Vector3,color:Array,size:int,delete:int)->Array:
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
				var cvoid:bool=Vec3IfInBox(Vector3(i1,i2,i3),NewVec3(-delete),NewVec3(delete))
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

func Arr3ToV(arr:Array)->Vector3:
	return Vector3(arr[0],arr[1],arr[2])
func Arr2ToV(arr:Array)->Vector2:
	return Vector2(arr[0],arr[1])

func ___INFLUENCE_FUNCTIONS___():
	return true



# convert n to/from direction vector
#   x->
# y 1 2 3
# | 0   4
# v 7 6 5
func DirToV(dir:float)->Vector2:
	return Vector2(int(round(cos((dir/4-1)*PI))),int(round(sin((dir/4-1)*PI))))
func VToDir(V:Vector2)->int:
	return int(round(-atan2(V.x,V.y)/PI*4)+8-2)%8

#send 8 check beams, each beam does "binary" range check, such that it always
#arrives at the border of the shape
#Dependencies: DirToV!
#Previous implementation, deprecated
#WARNING: using old ColorIf, expecting rule to just be bool
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
#(this is actually pretty useless but it *could* allow for near equal frame load split)
#Dependencies: StarCheck! Average!
#Previous implementation, deprecated
func GetCenter(pos,rule,args,maxrange=100.0,centoff=5.0):
	var last=Vector2(-1000,-1000)
	var points=[]
	var limit=0
	while (last.distance_squared_to(pos)>pow(centoff,2)and limit<15)or !limit>3: #change limits
		last=pos
		points=StarCheck(pos,rule,args,maxrange)
		pos=Average(points)
		limit+=1
	return points


func GetEdge(pos:Vector2,rule,args:Array,maxrange:float=100.0)->Array:
	var leng:=maxrange
	var curr:=pos
	while leng>1:
		var off:=ceil(leng/2)*Vector2(0,-1)
		var result=rule.call_func(curr+off,args)[0]
		curr+=off*int(result!=null and result)
		leng=ceil(leng/2)
	var start:=2
	var sanity:int=0 #WARNING: if sanity is on instead of while true:
		#all issues will be skipped
	while sanity<8:
		var result=rule.call_func(curr+DirToV(start),args)[0] #issues here usually
		if result!=null and result: #temp: 52,240,176, type 1 = 240,176,52, col = #F7A233 Lightning Yellow
			break
		start+=1
		sanity+=1
	if sanity==8:
		print_debug("Debug: Warning: GetEdge failed")
		return [null]
	return [curr,curr+DirToV(start)]

#goes clockwise from point a to b along border of rule (meaning border is on the left)
#Dependencies: DirToV! (ColorIf!-like as rule)

func AToB(a:Vector2,b:Vector2,rule,args:Array=[],start:int=0)->Array:
	var points:Array=[a]
	var lim:=600
	var edgecols:=Array()
	var edgeinfo:=Array()
	var prevpoint:Vector2=NewVec2(-1000)
	var prevcol:=""
	var currpoint:Vector2=NewVec2(-1000)
	var currcol:=""
	var currvalid:=false
	var prevvalid:=false #avoids bad when hit corner
	while points[points.size()-1]!=b and points.size()<lim:
		var n:int=points.size()-1
		while true:
			var _result:Array=rule.call_func(points[n]+DirToV(start),args)
			if _result[0]!=null:
				if !_result[0]:
					currvalid=true
				else:
					break
			else:
				currvalid=false
			start+=1
#		while !rule.call_func(points[n]+DirToV(start),args)[0]:
#			start+=1
		currcol=rule.call_func(points[n]+DirToV(start-1),args)[1]
		currpoint=points[n]+DirToV(start-1)
		if currvalid and prevvalid and !currcol in edgecols:
			if currcol==prevcol and currpoint.distance_to(prevpoint)<1.5:
				edgecols.append(currcol)
				edgeinfo.append(currpoint)
		prevcol=currcol
		prevpoint=currpoint
		prevvalid=currvalid
		points.append(points[n]+DirToV(start))
		start-=start%2+1
	if points.size()>=lim:
		return [[],[]]
	points.pop_back()

	return [points,[edgecols,edgeinfo]]

#combines everything to get the border of the rule-defined shape
#Dependencies: GetEdge! AToB! 

func TraceShape(pos:Vector2,rule,args:=Array())->Array:
	var points:Array=GetEdge(pos,rule,args)#issues here usually
	if points[0]==null:
		return [null]
	var start:int=VToDir(points[1]-points[0]) 
	start-=start%2+1
	var temp:Array=AToB(points[1],points[0],rule,args,start)
	return temp

#Dependencies: VToDir!

func Neatify(arr:Array)->Array:
	var arr2:=Array()
	for i in arr.size():
		var _x:Vector2=arr[(i)%arr.size()]
		var _y:Vector2=arr[(i+2)%arr.size()]
		var cent:Vector2=arr[(i+1)%arr.size()]
		var x :int= VToDir(cent-_x)
		var y :int= VToDir(cent-_y)
		if !4==posmod(x-y,8): #and !(0==posmod(x-y,8)%2 and x%2==0):
			arr2.append(cent)
	return arr2




func Outline(finalarr:Array)->Array:
	#Damn, every ~month of coding and you notice how trash your old code was...
	var temparr:=Array()
	if finalarr.size()==1:
		var k:int=0
		while k<7:
			var _k:Vector2=DirToV(k-1)*0.5+finalarr[0]
			temparr.append(_k)
			_k=DirToV(k)*0.5+finalarr[0]
			temparr.append(_k)
			k+=2
		return temparr
	for i in range(finalarr.size()):
		var _x:Vector2=finalarr[posmod((i-1),finalarr.size())]
		var _y:Vector2=finalarr[posmod((i+1),finalarr.size())]
		var cent:Vector2=finalarr[i]
		var x :int= VToDir(_x-cent)
		var diff:int=(x+2)%8
		var y :int= posmod(VToDir(_y-cent)-diff,8)
		
		var k := 0
		while k<y:
			var _k:Vector2=DirToV(k+diff-1)*0.5+cent
			temparr.append(_k)
			_k=DirToV(k+diff)*0.5+cent
			temparr.append(_k)
			k+=2
	return temparr






#Vec2(r,g),[b,col,type]
func ColorIf(pos:Vector2,args:Array=[])->Array:
	var arr:=[pos.x,pos.y,args[0]]
	var col:String=args[1]
	var off:int=args[2]
	var isinbox:bool=Vec3IfInBox(Vector3(arr[0],arr[1],arr[2]),NewVec3(0),NewVec3(255))
	
	if isinbox:
		var tempcol:String=ColorClosestSearch(arr[off],arr[(1+off)%3],arr[(2+off)%3])
		return [tempcol==col,tempcol]
	return [null,""]
	

#Dependencies: ColorClosestSearch! Neatify! TraceShape! ColorIf!

#enter:
#pos = r,g
#slider = b
#type 0-2

#change of internal order depending on type:
#type 1= brg, 2= gbr

func ColorInfluence(pos:Vector2,slider:int,type:int)->Array:
	var arr:Array=[pos.x,pos.y,slider]
	#switch depending on type
	arr=[arr[posmod(type,3)],arr[posmod(1+type,3)],arr[posmod(2+type,3)]]
	var col = ColorClosestSearch(arr[0],arr[1],arr[2]) 
	var rule = funcref(self,"ColorIf")
	var traced=TraceShape(pos,rule,[slider,col,type]) #where issues usually are
	if traced[0]==null:
		return [null]
	#Output: [ready],[to check]
	#ready = [col,poly]
	#to check = [cols],[pos's]
	
#	var _arr:=Array()
#	#undo type switch
#	for n in traced[1][0].size():
#		_arr=[traced[1][1][n].x,traced[1][1][n].y,arr[2]] #emulates what was passed
#		#back to rgb format
#		traced[1][1][n]=Vector2(_arr[type],_arr[(1+type)%3])

#	Nevermind, no undoing, because info is lost otherwise
#	color type handling is left to the caller.
#	v2.0 - don't even give TraceShape changed values anymore, the arr idea feels less smart now
	return [[col,Neatify(Outline(traced[0]))],traced[1]]
#type safety checker must be having a stroke with this




func SliderIf(pos,slider,col):
	return ColorClosestSearch(pos.x,pos.y,slider)==col
#god what a mess
func SliderOrganize(arr):
	var newarr=[]
	newarr.append(arr[0])
	for n in range(1,arr.size()-1):
		if arr[n-1]+arr[n+1]!=2*arr[n]:
			newarr.append(n)
	newarr.append(arr[arr.size()-1])
	return newarr

func SliderInfluence(pos):
	var cols=[]
	var colsinfo=[]
	for i in 256:
		var col=ColorClosestSearch(pos.x,pos.y,i)
		var index=cols.find(col)
		if index!=-1:
			colsinfo[index].append(i)
		else:
			cols.append(col)
			colsinfo.append([i])
	
	for n in cols.size():
		cols[n]=[cols[n],SliderOrganize(colsinfo[n])]
	
	
	return cols

func CreatePolygon(arr,off=5):
	var newarr=[]
	newarr.append(Vector2(-off,arr[0]))
	newarr.append(Vector2(off,arr[0]))
	newarr.append(Vector2(off,arr[1]))
	newarr.append(Vector2(-off,arr[1]))
	return newarr











