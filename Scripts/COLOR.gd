extends Node
tool
var all:Array
var individual:Array
#LMAO at first i had vars inside the func, which means they get initialized every time
#now its like 10 times faster
#btw it was done using a cool c# program which i made to output with syntax that
#you can paste into here and it should work
#big brian
#also i cant help but notice that the entire editor lags when you type and are
#near init... suspicious
#god, after a lot of work, version 2 now separates info and color names.
#the thing may actually run decently fast now
func _init():
	var bi000=[0x0000000, 0x11b1811, 0x21b1b1b, 0x316161d, 0x4010b13, 0x5010203, 0x6100c08]
	var bc000=["black", "black chocolate", "eerie black", "eigengrau", "rich black (Fogra29)", "rich black (Fogra39)", "smoky black"]
	var b000=[bi000,bc000]
	var bi001=[]
	var bc001=[]
	var b001=[bi001,bc001]
	var bi002=[]
	var bc002=[]
	var b002=[bi002,bc002]
	var bi003=[0x0191970]
	var bc003=["midnight blue"]
	var b003=[bi003,bc003]
	var bi004=[0x000009c, 0x1000080, 0x2000f89, 0x300008b]
	var bc004=["duke blue", "navy blue", "phthalo blue", "dark blue"]
	var b004=[bi004,bc004]
	var bi005=[0x00018a8, 0x11c05b3, 0x20014a8]
	var bc005=["blue (Pantone)", "trypan blue", "zaffre"]
	var b005=[bi005,bc005]
	var bi006=[0x00000cd]
	var bc006=["medium blue"]
	var b006=[bi006,bc006]
	var bi007=[0x00000ff]
	var bc007=["blue"]
	var b007=[bi007,bc007]
	var g00=[b000, b001, b002, b003, b004, b005, b006, b007]
	var bi010=[]
	var bc010=[]
	var b010=[bi010,bc010]
	var bi011=[0x0013220, 0x11a2421, 0x2123524, 0x3043927, 0x41c352d, 0x51e272c, 0x61b3427, 0x7193925, 0x81d393c, 0x91e2f3c]
	var bc011=["dark green", "dark jungle green", "phthalo green", "sacramento state green", "medium jungle green", "black pearl", "cardin green", "deep fir", "nordic", "tangaroa"]
	var b011=[bi011,bc011]
	var bi012=[0x0002147, 0x1003153, 0x21d2951, 0x31e3442]
	var bc012=["oxford blue", "prussian blue", "space cadet", "blue whale"]
	var b012=[bi012,bc012]
	var bi013=[0x0002366, 0x100356b, 0x2002e63, 0x3003366]
	var bc013=["royal blue (Dark)", "yale blue", "cool black", "dark midnight blue"]
	var b013=[bi013,bc013]
	var bi014=[0x0002387, 0x1003399]
	var bc014=["resolution blue", "dark powder blue"]
	var b014=[bi014,bc014]
	var bi015=[0x01034a6, 0x11c39bb, 0x20033aa, 0x3002fa7, 0x40038a8]
	var bc015=["egyptian blue", "persian blue", "ua blue", "international klein blue", "royal azure"]
	var b015=[bi015,bc015]
	var bi016=[]
	var bc016=[]
	var b016=[bi016,bc016]
	var bi017=[]
	var bc017=[]
	var b017=[bi017,bc017]
	var g01=[b010, b011, b012, b013, b014, b015, b016, b017]
	var bi020=[0x0195905]
	var bc020=["lincoln green"]
	var b020=[bi020,bc020]
	var bi021=[0x0004225, 0x11b4d3e, 0x200563f, 0x3014421, 0x418453b, 0x51e4d2b, 0x61b4b35, 0x7165b31, 0x819443c, 0x91b4636, 0xa17462e]
	var bc021=["british racing green", "brunswick green", "castleton green", "forest green (Traditional)", "msu green", "cal poly pomona green", "county green", "crusoe", "deep teal", "sherwood green", "zuccini"]
	var b021=[bi021,bc021]
	var bi022=[0x0064e40, 0x1004b49, 0x2004953, 0x3004040, 0x4004242, 0x50f4645, 0x6005f5b, 0x700494e, 0x8184343]
	var bc022=["blue-green (Color wheel)", "deep jungle green", "midnight green (Eagle green)", "rich black", "warm black", "cyprus", "mosque", "sherpa blue", "tiber"]
	var b022=[bi022,bc022]
	var bi023=[0x000416a, 0x108457e]
	var bc023=["indigo dye", "dark cerulean"]
	var b023=[bi023,bc023]
	var bi024=[0x0004f98, 0x1035096]
	var bc024=["usafa blue", "medium electric blue"]
	var b024=[bi024,bc024]
	var bi025=[0x00048ba, 0x10047ab, 0x20f52ba, 0x30054b4]
	var bc025=["absolute zero", "cobalt blue", "sapphire", "medium teal blue"]
	var b025=[bi025,bc025]
	var bi026=[]
	var bc026=[]
	var b026=[bi026,bc026]
	var bi027=[0x00247fe]
	var bc027=["blue (Ryb)"]
	var b027=[bi027,bc027]
	var g02=[b020, b021, b022, b023, b024, b025, b026, b027]
	var bi030=[0x0006400, 0x1006600]
	var bc030=["dark green (X11)", "pakistan green"]
	var b030=[bi030,bc030]
	var bi031=[0x0006b3c, 0x100703c, 0x2087830, 0x315633d]
	var bc031=["cadmium green", "dartmouth green", "la salle green", "fun green"]
	var b031=[bi031,bc031]
	var bi032=[0x0006a4e, 0x1177245, 0x2007f5c, 0x300755e, 0x4006d5b, 0x5136843, 0x6177b4d, 0x7006e4e]
	var bc032=["bottle green", "dark spring green", "spanish viridian", "tropical rainforest", "teal green", "jewel", "salem", "watercourse"]
	var b032=[bi032,bc032]
	var bi033=[0x0007f66, 0x101796f, 0x2007474, 0x31f6a7d, 0x400626f, 0x5166461, 0x6167e65, 0x7007b77]
	var bc033=["generic viridian", "pine green", "skobeloff", "allports", "blue lagoon", "blue stone", "deep sea", "surfie green"]
	var b033=[bi033,bc033]
	var bi034=[0x0126180, 0x10a7e8c, 0x2006994]
	var bc034=["blue sapphire", "metallic seaweed", "sea blue"]
	var b034=[bi034,bc034]
	var bi035=[0x0007ba7, 0x1007aa5, 0x21560bd, 0x30072bb, 0x41164b4, 0x5006db0, 0x60067a5, 0x70070b8, 0x8007bb8, 0x90077be]
	var bc035=["celadon blue", "cg blue", "denim", "french blue", "green-blue", "honolulu blue", "sapphire blue", "spanish blue", "star command blue", "ocean boat blue"]
	var b035=[bi035,bc035]
	var bi036=[0x01974d2]
	var bc036=["bright navy blue"]
	var b036=[bi036,bc036]
	var bi037=[0x0007fff, 0x11f75fe, 0x20070ff]
	var bc037=["azure", "blue (Crayola)", "brandeis blue"]
	var b037=[bi037,bc037]
	var g03=[b030, b031, b032, b033, b034, b035, b036, b037]
	var bi040=[0x0008000, 0x1138808, 0x2009000]
	var bc040=["ao (English)", "india green", "islamic green"]
	var b040=[bi040,bc040]
	var bi041=[0x0059033]
	var bc041=["north texas green"]
	var b041=[bi041,bc041]
	var bi042=[0x0009150]
	var bc042=["spanish green"]
	var b042=[bi042,bc042]
	var bi043=[0x0009f6b, 0x1009966, 0x2009b7d, 0x3009e60, 0x41b8a6b, 0x5029d74, 0x6008f70]
	var bc043=["green (Ncs)", "green-cyan", "paolo veronese green", "shamrock green", "elf green", "free speech aquamarine", "observatory"]
	var b043=[bi043,bc043]
	var bi044=[0x0008b8b, 0x1008080, 0x2009698, 0x300879f]
	var bc044=["dark cyan", "teal", "viridian green", "eastern blue"]
	var b044=[bi044,bc044]
	var bi045=[0x00093af, 0x10087bd, 0x20d98ba, 0x30095b6]
	var bc045=["blue (Munsell)", "blue (Ncs)", "blue-green", "bondi blue"]
	var b045=[bi045,bc045]
	var bi046=[0x00892d0]
	var bc046=["rich electric blue"]
	var b046=[bi046,bc046]
	var bi047=[0x01e90ff]
	var bc047=["dodger blue"]
	var b047=[bi047,bc047]
	var g04=[b040, b041, b042, b043, b044, b045, b046, b047]
	var bi050=[]
	var bc050=[]
	var b050=[bi050,bc050]
	var bi051=[]
	var bc051=[]
	var b051=[bi051,bc051]
	var bi052=[0x000ad43, 0x100a550]
	var bc052=["green (Pantone)", "green (Pigment)"]
	var b052=[bi052,bc052]
	var bi053=[0x000ab66, 0x11cac78, 0x200a877, 0x300a86b]
	var bc053=["go green", "green (Crayola)", "green (Munsell)", "jade"]
	var b053=[bi053,bc053]
	var bi054=[0x000a693]
	var bc054=["persian green"]
	var b054=[bi054,bc054]
	var bi055=[0x00abab5]
	var bc055=["tiffany blue"]
	var b055=[bi055,bc055]
	var bi056=[0x01dacd6, 0x11ca9c9, 0x203b4c8]
	var bc056=["cerulean (Crayola)", "pacific blue", "iris blue"]
	var b056=[bi056,bc056]
	var bi057=[0x000bfff, 0x100b7eb]
	var bc057=["capri", "cyan (Process)"]
	var b057=[bi057,bc057]
	var g05=[b050, b051, b052, b053, b054, b055, b056, b057]
	var bi060=[]
	var bc060=[]
	var b060=[bi060,bc060]
	var bi061=[0x003c03c]
	var bc061=["dark pastel green"]
	var b061=[bi061,bc061]
	var bi062=[0x00bda51]
	var bc062=["malachite"]
	var b062=[bi062,bc062]
	var bi063=[]
	var bc063=[]
	var b063=[bi063,bc063]
	var bi064=[0x000cc99]
	var bc064=["caribbean green"]
	var b064=[bi064,bc064]
	var bi065=[]
	var bc065=[]
	var b065=[bi065,bc065]
	var bi066=[0x000ced1, 0x100cccc, 0x21fcecb]
	var bc066=["dark turquoise", "robin egg blue", "robins egg blue"]
	var b066=[bi066,bc066]
	var bi067=[0x000ccff, 0x10fc0fc]
	var bc067=["vivid sky blue", "spiro disco ball"]
	var b067=[bi067,bc067]
	var g06=[b060, b061, b062, b063, b064, b065, b066, b067]
	var bi070=[0x000ff00, 0x109f911]
	var bc070=["electric green", "free speech green"]
	var b070=[bi070,bc070]
	var bi071=[]
	var bc071=[]
	var b071=[bi071,bc071]
	var bi072=[0x000ff40]
	var bc072=["erin"]
	var b072=[bi072,bc072]
	var bi073=[0x000ff7f]
	var bc073=["spring green"]
	var b073=[bi073,bc073]
	var bi074=[0x000fa9a]
	var bc074=["medium spring green"]
	var b074=[bi074,bc074]
	var bi075=[]
	var bc075=[]
	var b075=[bi075,bc075]
	var bi076=[0x000ffcd, 0x108e8de]
	var bc076=["sea green (Crayola)", "bright turquoise"]
	var b076=[bi076,bc076]
	var bi077=[0x000ffff, 0x115f4ee, 0x200ffef]
	var bc077=["aqua", "fluorescent blue", "turquoise blue"]
	var b077=[bi077,bc077]
	var g07=[b070, b071, b072, b073, b074, b075, b076, b077]
	var r0=[g00, g01, g02, g03, g04, g05, g06, g07]
	var bi100=[0x03d0c02, 0x13c1414, 0x22c1608, 0x33a181a]
	var bc100=["black bean", "dark sienna", "zinnwaldite brown", "rustic red"]
	var b100=[bi100,bc100]
	var bi101=[0x0301934, 0x12e183b]
	var bc101=["dark purple", "blackcurrant"]
	var b101=[bi101,bc101]
	var bi102=[0x032174d]
	var bc102=["russian violet"]
	var b102=[bi102,bc102]
	var bi103=[0x032127a]
	var bc103=["persian indigo"]
	var b103=[bi103,bc103]
	var bi104=[]
	var bc104=[]
	var b104=[bi104,bc104]
	var bi105=[]
	var bc105=[]
	var b105=[bi105,bc105]
	var bi106=[]
	var bc106=[]
	var b106=[bi106,bc106]
	var bi107=[0x03f00ff]
	var bc107=["ultramarine"]
	var b107=[bi107,bc107]
	var g10=[b100, b101, b102, b103, b104, b105, b106, b107]
	var bi110=[0x03d2b1f, 0x13c341f, 0x23c241b, 0x335281e, 0x4363e1d]
	var bc110=["bistre", "olive drab #7", "brown pod", "cocoa brown", "turtle green"]
	var b110=[bi110,bc110]
	var bi111=[0x03b2f2f, 0x13b3c36, 0x2232b2b, 0x32a3439, 0x4343434, 0x5353839, 0x62d383a, 0x72a2f23, 0x8242124, 0x935312c, 0xa372528, 0xb293432, 0xc3c3d3e, 0xd2c2c32, 0xe3f3726, 0xf2c3227, 0x10332c22, 0x112c2d3c, 0x1224252b, 0x13262b2f, 0x142a2725, 0x15292c2f, 0x162b3f36, 0x17242a2e, 0x182d3032, 0x19362d26, 0x1a3c2f23, 0x1b393227, 0x1c322c2b, 0x1d323438, 0x1e3f3939, 0x1f39392c, 0x202d2f28, 0x213c3b3c, 0x22373332, 0x2329332b, 0x24383428, 0x25393d2a, 0x262c2d24, 0x272c2a35, 0x283b2b2c, 0x2925342b, 0x2a29292f, 0x2b2d2d24, 0x2c3a3532, 0x2d312a29, 0x2e393e2e, 0x2f2a2922, 0x302b2e26, 0x31342931, 0x3221263a, 0x33242e28, 0x343f3623, 0x35393b3c, 0x36252525, 0x37332e2e, 0x38313330, 0x3920392c, 0x3a232f2c, 0x3b2b2e25, 0x3c37363f, 0x3d3b2e25, 0x3e34363a, 0x3f252f2f, 0x403c2126, 0x413e2631, 0x42382c38, 0x4336383c, 0x44302621, 0x452b3230, 0x463b3c38]
	var bc111=["black coffee", "black olive", "charleston green", "gunmetal", "jet", "onyx", "outer space (Crayola)", "pine tree", "raisin black", "acadia", "aubergine", "aztec", "baltic sea", "bastille", "birch", "black forest", "black magic", "black rock", "black russian", "blue charcoal", "bokara grey", "bunker", "celtic", "cinder", "cod grey", "coffee bean", "cola", "creole", "diesel", "ebony clay", "eclipse", "el paso", "eternity", "fuscous grey", "gondola", "gordons green", "graphite", "green kelp", "green waterloo", "haiti", "havana", "holly", "jaguar", "karaka", "kilamanjaro", "livid brown", "log cabin", "maire", "marshland", "melanzane", "midnight express", "midnight moss", "mikado", "montana", "nero", "night rider", "oil", "palm green", "racing green", "rangoon green", "revolver", "sambuca", "shark", "swamp", "temptress", "toledo", "valentino", "vulcan", "wood bark", "woodsmoke", "zeus"]
	var b111=[bi111,bc111]
	var bi112=[0x02f3c53, 0x1383740, 0x22b3449, 0x3273c5a, 0x4372d52, 0x5353e4f, 0x6243640, 0x7343f5c, 0x83d325d, 0x93f2e4c, 0xa2e3749, 0xb292d4f, 0xc2d3c54, 0xd3c3748, 0xe373e41, 0xf373f43, 0x10253f4e, 0x112a2551, 0x12203f58, 0x13253c48, 0x142d2541, 0x152a2b41, 0x162e2249]
	var bc112=["biscay", "black marlin", "bunting", "catalina blue", "cherry pie", "cloud burst", "elephant", "gulf blue", "jacarta", "jagger", "licorice", "lucky point", "madison", "martinique", "mine shaft", "mirage", "nile blue", "paua", "regal blue", "tarawera", "tolopea", "valhalla", "violent violet"]
	var b112=[bi112,bc112]
	var bi113=[0x023297a, 0x1353e64, 0x2382161, 0x3343467, 0x43d3f7d, 0x53e3267, 0x6312760, 0x7353d75]
	var bc113=["st. patricks blue", "bay of many", "christalle", "deep koamaru", "jacksons purple", "minsk", "paris m", "torea bay"]
	var b113=[bi113,bc113]
	var bi114=[0x0333399, 0x12e2d88, 0x22e2787]
	var bc114=["blue (Pigment)", "cosmic cobalt", "picotee blue"]
	var b114=[bi114,bc114]
	var bi115=[]
	var bc115=[]
	var b115=[bi115,bc115]
	var bi116=[]
	var bc116=[]
	var b116=[bi116,bc116]
	var bi117=[0x0273be2]
	var bc117=["palatinate blue"]
	var b117=[bi117,bc117]
	var g11=[b110, b111, b112, b113, b114, b115, b116, b117]
	var bi120=[0x021421e]
	var bc120=["myrtle"]
	var b120=[bi120,bc120]
	var bi121=[0x0355e3b, 0x1354230, 0x2234537, 0x3274234, 0x4264334, 0x534533d, 0x6245336, 0x73a4531, 0x836482f, 0x9305d35, 0xa3d4031, 0xb37412a, 0xc324336]
	var bc121=["hunter green", "kombu green", "burnham", "english holly", "everglade", "goblin", "kaitoke green", "mallard", "palm leaf", "parsley", "scrub", "seaweed", "timber green"]
	var b121=[bi121,bc121]
	var bi122=[0x036454f, 0x12f4f4f, 0x2274a5d, 0x33b444b, 0x4214559, 0x53d4b52, 0x6334046, 0x735514f, 0x83c4354, 0x93f545a, 0xa3a4e5f, 0xb394043, 0xc314643, 0xd2c4641, 0xe23414e, 0xf395555, 0x103e594c, 0x113d4653, 0x12375d4f, 0x132b4b40]
	var bc122=["charcoal", "dark slate gray", "arapawa", "arsenic", "astronaut blue", "atomic", "big stone", "blue dianne", "blue zodiac", "casal", "cello", "charade", "firefly", "gable green", "green vogue", "oracle", "plantation", "rhino", "spectra", "te papa green"]
	var b122=[bi122,bc122]
	var bi123=[0x025597f, 0x1305c71, 0x22c5971, 0x3365c7d, 0x4255b77, 0x53b436c, 0x62c5778]
	var bc123=["bahama blue", "blumine", "chathams blue", "matisse", "orient", "port gore", "venice blue"]
	var b123=[bi123,bc123]
	var bi124=[0x02e5894, 0x126428b, 0x22e5090, 0x329598b, 0x4335083, 0x5325482, 0x6374e88]
	var bc124=["bdazzled blue", "dark cornflower blue", "yinmn blue", "endeavour", "fun blue", "st tropaz", "tory blue"]
	var b124=[bi124,bc124]
	var bi125=[0x02a52be, 0x12243b6, 0x2324ab2]
	var bc125=["cerulean blue", "denim blue", "violet-blue"]
	var b125=[bi125,bc125]
	var bi126=[]
	var bc126=[]
	var b126=[bi126,bc126]
	var bi127=[]
	var bc127=[]
	var b127=[bi127,bc127]
	var g12=[b120, b121, b122, b123, b124, b125, b126, b127]
	var bi130=[]
	var bc130=[]
	var b130=[bi130,bc130]
	var bi131=[0x0206937, 0x13e6334, 0x22f7532, 0x32c6e31]
	var bc131=["camarone", "green house", "japanese laurel", "san felix"]
	var b131=[bi131,bc131]
	var bi132=[0x03b7a57, 0x1266255, 0x226604f, 0x3266242]
	var bc132=["amazon", "eden", "evening sea", "green pea"]
	var b132=[bi132,bc132]
	var bi133=[0x036747d, 0x1317873, 0x22b797a, 0x3297b76, 0x431796d]
	var bc133=["ming", "myrtle green", "atoll", "elm", "genoa"]
	var b133=[bi133,bc133]
	var bi134=[0x026619c, 0x1367588, 0x2376f89, 0x33d7188]
	var bc134=["lapis lazuli", "teal blue", "astral", "calypso"]
	var b134=[bi134,bc134]
	var bi135=[0x0316ea0]
	var bc135=["lochmara"]
	var b135=[bi135,bc135]
	var bi136=[0x0246bce, 0x12d68c4]
	var bc136=["celtic blue", "true blue"]
	var b136=[bi136,bc136]
	var bi137=[0x03c69e7]
	var bc137=["bluetiful"]
	var b137=[bi137,bc137]
	var g13=[b130, b131, b132, b133, b134, b135, b136, b137]
	var bi140=[0x0299617, 0x12a8000]
	var bc140=["slimy green", "napier green"]
	var b140=[bi140,bc140]
	var bi141=[0x0228b22, 0x13e8027]
	var bc141=["forest green (Web)", "bilbao"]
	var b141=[bi141,bc141]
	var bi142=[0x02e8b57]
	var bc142=["sea green"]
	var b142=[bi142,bc142]
	var bi143=[0x02f847c, 0x1319177, 0x2329760]
	var bc143=["celadon green", "illuminating emerald", "eucalyptus"]
	var b143=[bi143,bc143]
	var bi144=[0x0399f86, 0x1259797]
	var bc144=["gossamer", "java"]
	var b144=[bi144,bc144]
	var bi145=[0x03d85b8, 0x12599b2, 0x2308ea0]
	var bc145=["curious blue", "pelorous", "scooter"]
	var b145=[bi145,bc145]
	var bi146=[0x02887c8, 0x13e8ede]
	var bc146=["green-blue (Crayola)", "tufts blue"]
	var b146=[bi146,bc146]
	var bi147=[0x0318ce7]
	var bc147=["bleu de france"]
	var b147=[bi147,bc147]
	var g14=[b140, b141, b142, b143, b144, b145, b146, b147]
	var bi150=[0x030b21a]
	var bc150=["yellow-green (Color wheel)"]
	var b150=[bi150,bc150]
	var bi151=[]
	var bc151=[]
	var b151=[bi151,bc151]
	var bi152=[]
	var bc152=[]
	var b152=[bi152,bc152]
	var bi153=[0x03cb371]
	var bc153=["medium sea green"]
	var b153=[bi153,bc153]
	var bi154=[0x029ab87, 0x13ab09e, 0x23eb489, 0x330ba8f, 0x439a78e, 0x529a98b]
	var bc154=["jungle green", "keppel", "mint", "mountain meadow", "zomp", "niagara"]
	var b154=[bi154,bc154]
	var bi155=[0x020b2aa, 0x130bfbf]
	var bc155=["light sea green", "maximum blue green"]
	var b155=[bi155,bc155]
	var bi156=[0x021abcd, 0x138b0de]
	var bc156=["ball blue", "summer sky"]
	var b156=[bi156,bc156]
	var bi157=[]
	var bc157=[]
	var b157=[bi157,bc157]
	var g15=[b150, b151, b152, b153, b154, b155, b156, b157]
	var bi160=[]
	var bc160=[]
	var b160=[bi160,bc160]
	var bi161=[0x032cd32]
	var bc161=["lime green"]
	var b161=[bi161,bc161]
	var bi162=[]
	var bc162=[]
	var b162=[bi162,bc162]
	var bi163=[0x03cd070]
	var bc163=["ufo green"]
	var b163=[bi163,bc163]
	var bi164=[]
	var bc164=[]
	var b164=[bi164,bc164]
	var bi165=[]
	var bc165=[]
	var b165=[bi165,bc165]
	var bi166=[]
	var bc166=[]
	var b166=[bi166,bc166]
	var bi167=[]
	var bc167=[]
	var b167=[bi167,bc167]
	var g16=[b160, b161, b162, b163, b164, b165, b166, b167]
	var bi170=[0x03fff00, 0x139ff14]
	var bc170=["harlequin", "neon green"]
	var b170=[bi170,bc170]
	var bi171=[]
	var bc171=[]
	var b171=[bi171,bc171]
	var bi172=[]
	var bc172=[]
	var b172=[bi172,bc172]
	var bi173=[]
	var bc173=[]
	var b173=[bi173,bc173]
	var bi174=[]
	var bc174=[]
	var b174=[bi174,bc174]
	var bi175=[]
	var bc175=[]
	var b175=[bi175,bc175]
	var bi176=[]
	var bc176=[]
	var b176=[bi176,bc176]
	var bi177=[]
	var bc177=[]
	var b177=[bi177,bc177]
	var g17=[b170, b171, b172, b173, b174, b175, b176, b177]
	var r1=[g10, g11, g12, g13, g14, g15, g16, g17]
	var bi200=[0x0480607, 0x1560319, 0x25d1f1e]
	var bc200=["bulgarian rose", "dark scarlet", "red oxide"]
	var b200=[bi200,bc200]
	var bi201=[0x043182f, 0x14c1c24]
	var bc201=["blackberry", "bordeaux"]
	var b201=[bi201,bc201]
	var bi202=[]
	var bc202=[]
	var b202=[bi202,bc202]
	var bi203=[0x04d1a7f]
	var bc203=["blue-violet (Color wheel)"]
	var b203=[bi203,bc203]
	var bi204=[0x04b0082]
	var bc204=["indigo"]
	var b204=[bi204,bc204]
	var bi205=[]
	var bc205=[]
	var b205=[bi205,bc205]
	var bi206=[]
	var bc206=[]
	var b206=[bi206,bc206]
	var bi207=[0x05218fa]
	var bc207=["han purple"]
	var b207=[bi207,bc207]
	var g20=[b200, b201, b202, b203, b204, b205, b206, b207]
	var bi210=[0x059260b, 0x15c3317, 0x253331e, 0x34f301f]
	var bc210=["seal brown", "bakers chocolate", "brown bramble", "indian tan"]
	var b210=[bi210,bc210]
	var bi211=[0x04b3621, 0x1592720, 0x2483c32, 0x3543d37, 0x443302e, 0x5452e39, 0x6532934, 0x75b3d27, 0x8582124, 0x94a2e32, 0xa5b3a24, 0xb44232f, 0xc463430, 0xd5d3b2e, 0xe463623, 0xf4f3835, 0x10443736, 0x114d3e3c, 0x1245362b, 0x134e312d, 0x144f2a2c, 0x15413628, 0x165f2c2f, 0x17463d3e, 0x18522426, 0x19473e23, 0x1a582f2b, 0x1b442d21, 0x1c453430, 0x1d42342b, 0x1e44362d, 0x1f523936, 0x204e2728, 0x21522c35, 0x22463629]
	var bc211=["café noir", "caput mortuum", "dark lava", "dark liver (Horses)", "old burgundy", "barossa", "black rose", "bracken", "burnt crimson", "cab sav", "carnaby tan", "castro", "cedar", "cioccolato", "clinker", "cocoa bean", "cowboy", "crater brown", "dark rum", "espresso", "heath", "jacko bean", "jazz", "jon", "lonestar", "madras", "moccaccino", "morocco brown", "rebel", "slugger", "tobago", "van cleef", "volcano", "wine berry", "woodburn"]
	var b211=[bi211,bc211]
	var bi212=[0x05d3954, 0x1563c5c, 0x25b3256, 0x34c3d4e, 0x4413d4b, 0x54e2e53, 0x64c3347, 0x74a2d57, 0x8443240]
	var bc212=["dark byzantium", "english violet", "japanese violet", "bossanova", "grape", "hot purple", "loulou", "scarlet gum", "voodoo"]
	var b212=[bi212,bc212]
	var bi213=[0x04b2d72, 0x15c3c6d, 0x24a3b6a, 0x3462c77]
	var bc213=["blue diamond", "honey flower", "meteorite", "windsor"]
	var b213=[bi213,bc213]
	var bi214=[0x0483d8b, 0x1512888, 0x24c2882, 0x34b3c8e, 0x45b3e90, 0x5583580]
	var bc214=["dark slate blue", "ksu purple", "spanish violet", "blue gem", "daisy bush", "kingfisher daisy"]
	var b214=[bi214,bc214]
	var bi215=[]
	var bc215=[]
	var b215=[bi215,bc215]
	var bi216=[]
	var bc216=[]
	var b216=[bi216,bc216]
	var bi217=[]
	var bc217=[]
	var b217=[bi217,bc217]
	var g21=[b210, b211, b212, b213, b214, b215, b216, b217]
	var bi220=[0x048531a]
	var bc220=["verdun green"]
	var b220=[bi220,bc220]
	var bi221=[0x04b5320, 0x14a5d23, 0x2444c38, 0x3584c25, 0x4434c28, 0x5594537, 0x64f4d32, 0x747562f, 0x851412d, 0x946473e, 0xa4d503c, 0xb554a3c, 0xc48412b, 0xd4f4037, 0xe544f3a, 0xf534931, 0x10555b2c, 0x114b433b, 0x12544e31, 0x135c4033, 0x144c4e31, 0x155c512f, 0x1645402b]
	var bc221=["army green", "dark moss green", "rifle green", "bronze olive", "bronzetone", "brown derby", "camouflage", "clover", "deep bronze", "heavy metal", "kelp", "metallic bronze", "onion", "paco", "panda", "punga", "saratoga", "space shuttle", "thatch green", "very dark brown", "waiouru", "west coast", "woodrush"]
	var b221=[bi221,bc221]
	var bi222=[0x0534b4f, 0x1555555, 0x2555d50, 0x34d5d53, 0x4465945, 0x5414a4c, 0x650404d, 0x7484a46, 0x857595d, 0x94c5544, 0xa4e5552, 0xb5b5d56, 0xc404d49, 0xd5a4c42, 0xe465352, 0xf5a4f51, 0x10514f4a, 0x1150494a, 0x124a4b46, 0x13484753, 0x145d5346, 0x154e5541, 0x16505555, 0x1757534b, 0x18524b4b, 0x194f4e48, 0x1a595648, 0x1b554d42, 0x1c565051, 0x1d524d5b, 0x1e4e5d4e, 0x1f404048, 0x205a4d41, 0x215d4e46, 0x224e4e4c, 0x2343464b, 0x244d4d4b, 0x254c5356, 0x26454642, 0x2746494e, 0x28585452, 0x29554545]
	var bc222=["dark liver", "davys grey", "ebony", "feldgrau", "gray asparagus", "outer space", "purple taupe", "armadillo", "bright grey", "cabbage pont", "cape cod", "chicago", "corduroy", "cork", "dark slate", "don juan", "dune", "emperor", "gravel", "gun powder", "judge grey", "lunar green", "mako", "masala", "matterhorn", "merlin", "millbrook", "mondo", "mortar", "mulled wine", "nandor", "paynes grey", "rock", "saddle", "ship grey", "steel grey", "thunder", "trout", "tuatara", "tuna", "tundora", "woody brown"]
	var b222=[bi222,bc222]
	var bi223=[0x058427c, 0x14c516d, 0x2445172, 0x3475877, 0x442426f, 0x547526e, 0x64b5a62, 0x7445761]
	var bc223=["cyber grape", "independence", "astronaut", "chambray", "corn flower blue", "east bay", "fiord", "san juan"]
	var b223=[bi223,bc223]
	var bi224=[0x04e5180, 0x1564786, 0x251559b, 0x3564985]
	var bc224=["purple navy", "gigas", "governor bay", "victoria"]
	var b224=[bi224,bc224]
	var bi225=[0x0545aa7, 0x14f42b5, 0x25946b2, 0x35959ab]
	var bc225=["liberty", "ocean blue", "plump purple", "rich blue"]
	var b225=[bi225,bc225]
	var bi226=[0x05a4fcf, 0x14156c5]
	var bc226=["iris", "free speech blue"]
	var b226=[bi226,bc226]
	var bi227=[]
	var bc227=[]
	var b227=[bi227,bc227]
	var g22=[b220, b221, b222, b223, b224, b225, b226, b227]
	var bi230=[]
	var bc230=[]
	var b230=[bi230,bc230]
	var bi231=[0x0556b2f, 0x1507d2a, 0x2486531, 0x3526b2d]
	var bc231=["dark olive green", "sap green", "dell", "green leaf"]
	var b231=[bi231,bc231]
	var bi232=[0x04f7942, 0x15b6f55, 0x25a6e41, 0x34c785c, 0x449764f, 0x5506355, 0x6406356, 0x74f6348]
	var bc232=["fern green", "cactus", "chalet green", "como", "killarney", "mineral green", "stromboli", "tom thumb"]
	var b232=[bi232,bc232]
	var bi233=[0x054626f, 0x1536872, 0x2536878, 0x34a646c, 0x449796b, 0x5486c7a, 0x6517b78, 0x74a766e, 0x8556061, 0x9496267, 0xa496569, 0xb53736f]
	var bc233=["black coral", "cadet", "dark electric blue", "deep space sparkle", "hookers green", "bismark", "breaker bay", "dark green copper", "river bed", "smalt blue", "tax break", "william"]
	var b233=[bi233,bc233]
	var bi234=[0x0436b95, 0x1536895, 0x244798e, 0x3576d8e, 0x442639f, 0x54e6c9d, 0x65b6e91, 0x74c6b88]
	var bc234=["queen blue", "ucla blue", "jelly bean", "kashmir blue", "mariner", "san marino", "waikawa grey", "wedgewood"]
	var b234=[bi234,bc234]
	var bi235=[0x05072a7]
	var bc235=["blue yonder"]
	var b235=[bi235,bc235]
	var bi236=[0x0446ccf]
	var bc236=["han blue"]
	var b236=[bi236,bc236]
	var bi237=[0x04666ff, 0x14169e1, 0x24166f5]
	var bc237=["neon blue", "royal blue (Light)", "ultramarine blue"]
	var b237=[bi237,bc237]
	var g23=[b230, b231, b232, b233, b234, b235, b236, b237]
	var bi240=[0x0568203]
	var bc240=["avocado"]
	var b240=[bi240,bc240]
	var bi241=[0x05e8c31, 0x1428929, 0x25f9727, 0x35f9228]
	var bc241=["maximum green", "la palma", "limeade", "vida loca"]
	var b241=[bi241,bc241]
	var bi242=[0x04c9141, 0x14d8c57, 0x2419f59, 0x35f8151]
	var bc242=["may green", "middle green", "chateau green", "glade green"]
	var b242=[bi242,bc242]
	var bi243=[0x040826d, 0x156887d, 0x25c8173]
	var bc243=["viridian", "wintergreen dream", "cutty sark"]
	var b243=[bi243,bc243]
	var bi244=[0x05f8a8b, 0x1408f90, 0x2558f93, 0x349889a, 0x4489084, 0x5488084]
	var bc244=["steel teal", "blue chill", "half baked", "hippie blue", "lochinvar", "paradiso"]
	var b244=[bi244,bc244]
	var bi245=[0x05f9ea0, 0x14682b4, 0x25d8aa8, 0x3438eac]
	var bc245=["cadet blue", "steel blue", "air force blue", "boston blue"]
	var b245=[bi245,bc245]
	var bi246=[0x04997d0, 0x15b89c0, 0x25784c1]
	var bc246=["celestial blue", "danube", "havelock blue"]
	var b246=[bi246,bc246]
	var bi247=[0x05b92e5]
	var bc247=["united nations blue"]
	var b247=[bi247,bc247]
	var g24=[b240, b241, b242, b243, b244, b245, b246, b247]
	var bi250=[0x04cbb17]
	var bc250=["kelly green"]
	var b250=[bi250,bc250]
	var bi251=[]
	var bc251=[]
	var b251=[bi251,bc251]
	var bi252=[0x04ba351]
	var bc252=["fruit salad"]
	var b252=[bi252,bc252]
	var bi253=[0x05fa777, 0x15fa778]
	var bc253=["forest green (Crayola)", "shiny shamrock"]
	var b253=[bi253,bc253]
	var bi254=[0x048bf91, 0x15da493]
	var bc254=["ocean green", "polished pine"]
	var b254=[bi254,bc254]
	var bi255=[0x043b3ae, 0x159baa3]
	var bc255=["verdigris", "puerto rico"]
	var b255=[bi255,bc255]
	var bi256=[0x056a0d3, 0x147abcc, 0x25ba0d0, 0x34db1c8]
	var bc256=["carolina blue", "maximum blue", "picton blue", "viking"]
	var b256=[bi256,bc256]
	var bi257=[0x05dadec]
	var bc257=["blue jeans"]
	var b257=[bi257,bc257]
	var g25=[b250, b251, b252, b253, b254, b255, b256, b257]
	var bi260=[]
	var bc260=[]
	var b260=[bi260,bc260]
	var bi261=[]
	var bc261=[]
	var b261=[bi261,bc261]
	var bi262=[]
	var bc262=[]
	var b262=[bi262,bc262]
	var bi263=[0x050c878]
	var bc263=["emerald"]
	var b263=[bi263,bc263]
	var bi264=[]
	var bc264=[]
	var b264=[bi264,bc264]
	var bi265=[0x045cea2]
	var bc265=["shamrock"]
	var b265=[bi265,bc265]
	var bi266=[0x048d1cc]
	var bc266=["medium turquoise"]
	var b266=[bi266,bc266]
	var bi267=[]
	var bc267=[]
	var b267=[bi267,bc267]
	var g26=[b260, b261, b262, b263, b264, b265, b266, b267]
	var bi270=[]
	var bc270=[]
	var b270=[bi270,bc270]
	var bi271=[]
	var bc271=[]
	var b271=[bi271,bc271]
	var bi272=[]
	var bc272=[]
	var b272=[bi272,bc272]
	var bi273=[]
	var bc273=[]
	var b273=[bi273,bc273]
	var bi274=[]
	var bc274=[]
	var b274=[bi274,bc274]
	var bi275=[]
	var bc275=[]
	var b275=[bi275,bc275]
	var bi276=[0x040e0d0]
	var bc276=["turquoise"]
	var b276=[bi276,bc276]
	var bi277=[]
	var bc277=[]
	var b277=[bi277,bc277]
	var g27=[b270, b271, b272, b273, b274, b275, b276, b277]
	var r2=[g20, g21, g22, g23, g24, g25, g26, g27]
	var bi300=[0x07c0a02, 0x1660000, 0x2701c1c, 0x365000b, 0x47b1113]
	var bc300=["barn red", "blood red", "persian plum", "rosewood", "up maroon"]
	var b300=[bi300,bc300]
	var bi301=[0x07f1734, 0x166023c, 0x2651c26, 0x3701f28]
	var bc301=["claret", "tyrian purple", "pohutukawa", "red berry"]
	var b301=[bi301,bc301]
	var bi302=[0x078184a, 0x16a1f44]
	var bc302=["pansy purple", "pompadour"]
	var b302=[bi302,bc302]
	var bi303=[]
	var bc303=[]
	var b303=[bi303,bc303]
	var bi304=[]
	var bc304=[]
	var b304=[bi304,bc304]
	var bi305=[0x06a0dad]
	var bc305=["purple"]
	var b305=[bi305,bc305]
	var bi306=[]
	var bc306=[]
	var b306=[bi306,bc306]
	var bi307=[0x06f00ff, 0x17f00ff]
	var bc307=["electric indigo", "violet (Color wheel)"]
	var b307=[bi307,bc307]
	var g30=[b300, b301, b302, b303, b304, b305, b306, b307]
	var bi310=[0x07b3f00, 0x16c2e1f, 0x2733d1f]
	var bc310=["chocolate (Traditional)", "liver (Organ)", "peru tan"]
	var b310=[bi310,bc310]
	var bi311=[0x0722f37, 0x1763c33, 0x2633528, 0x36c322e, 0x4782e2c, 0x573343a, 0x66e3d34, 0x76f372d, 0x86b252c, 0x96d3b24, 0xa7c2d37, 0xb6e3326, 0xc662a2c, 0xd6c3736, 0xe7e2530, 0xf69293b, 0x10752b2f]
	var bc311=["wine", "crown of thorns", "hairy heath", "kenyan copper", "lusty", "merlot", "metallic copper", "mocha", "monarch", "new amber", "paprika", "pueblo", "red devil", "sanguine brown", "scarlett", "siren", "tamarillo"]
	var b311=[bi311,bc311]
	var bi312=[0x0703642, 0x1673147, 0x2663854, 0x3643a48]
	var bc312=["catawba", "old mauve", "halayà úbe", "tawny port"]
	var b312=[bi312,bc312]
	var bi313=[0x0702963, 0x1702670, 0x2682860, 0x369326e]
	var bc313=["byzantium", "midnight", "palatinate purple", "seance"]
	var b313=[bi313,bc313]
	var bi314=[0x06c3082, 0x1733380, 0x2663399, 0x369359c]
	var bc314=["eminence", "maximum purple", "rebecca purple", "purple heart"]
	var b314=[bi314,bc314]
	var bi315=[]
	var bc315=[]
	var b315=[bi315,bc315]
	var bi316=[]
	var bc316=[]
	var b316=[bi316,bc316]
	var bi317=[]
	var bc317=[]
	var b317=[bi317,bc317]
	var g31=[b310, b311, b312, b313, b314, b315, b316, b317]
	var bi320=[0x0665d1e, 0x16c541e, 0x2644117, 0x3704214]
	var bc320=["antique bronze", "field drab", "pullman brown (Ups brown)", "sepia"]
	var b320=[bi320,bc320]
	var bi321=[0x079443b, 0x16f4e37, 0x2654321, 0x36b4423, 0x4664228, 0x575442b, 0x66a4928, 0x775482f, 0x87d4e38, 0x977422c, 0xa625d2a, 0xb784430, 0xc664a2d, 0xd6d562c, 0xe62422b, 0xf674834, 0x107e4a3b, 0x1173503b, 0x127a4434, 0x137d4138, 0x146b4226, 0x15745937, 0x166c4f3f]
	var bc321=["bole", "coffee", "dark brown", "kobicha", "van dyke brown", "bull shot", "cafe royale", "cape palliser", "cigar", "copper canyon", "costa del sol", "cumin", "dallas", "horses neck", "irish coffee", "jambalaya", "nutmeg", "old copper", "peanut", "red robin", "semi-sweet chocolate", "shingle fawn", "spice"]
	var b321=[bi321,bc321]
	var bi322=[0x0614051, 0x1674c47, 0x2674846, 0x37c4848, 0x4635147, 0x5704241, 0x6645452, 0x76e5150, 0x8654d49, 0x96c5b4c, 0xa6e5f56, 0xb6e5a5b, 0xc694554, 0xd6c5e53, 0xe695f50, 0xf6a5445, 0x106d5843, 0x11744042, 0x126b5a5a]
	var bc322=["eggplant", "liver", "rose ebony", "tuscan red", "umber", "deep coffee", "wenge", "buccaneer", "congo brown", "domino", "dorado", "falcon", "finn", "kabul", "makara", "quincy", "tobacco brown", "tosca", "zambezi"]
	var b322=[bi322,bc322]
	var bi323=[0x07e5e60, 0x1794d60, 0x2625665, 0x3605a67, 0x4605d6b]
	var bc323=["deep taupe", "cosmic", "fedora", "mobster", "smoky"]
	var b323=[bi323,bc323]
	var bi324=[0x0734f96, 0x1745085, 0x268578c, 0x3695d87]
	var bc324=["dark lavender", "affair", "butterfly bush", "kimberly"]
	var b324=[bi324,bc324]
	var bi325=[0x07851a9, 0x16a5bb1, 0x2724aa1]
	var bc325=["royal purple", "blue marguerite", "studio"]
	var b325=[bi325,bc325]
	var bi326=[0x06050dc, 0x16a5acd]
	var bc326=["majorelle blue", "slate blue"]
	var b326=[bi326,bc326]
	var bi327=[]
	var bc327=[]
	var b327=[bi327,bc327]
	var g32=[b320, b321, b322, b323, b324, b325, b326, b327]
	var bi330=[]
	var bc330=[]
	var b330=[bi330,bc330]
	var bi331=[0x077712b, 0x1636f22, 0x2736330, 0x3747028, 0x47a7229, 0x5667028, 0x673633e]
	var bc331=["crete", "fiji green", "himalaya", "olivetone", "pesto", "rain forest", "yellow metal"]
	var b331=[bi331,bc331]
	var bi332=[0x063775a, 0x1706950, 0x2607c47, 0x375785a, 0x461755b, 0x5786e4c, 0x669684b, 0x77b785a, 0x87a715c, 0x9766d52, 0xa756556, 0xb7d6757, 0xc7d655c, 0xd786d5f, 0xe686b50, 0xf6f634b, 0x1065645f, 0x1169755c, 0x12626746]
	var bc332=["axolotl", "crocodile", "dingley", "finch", "finlandia", "go ben", "hemlock", "kokoda", "pablo", "peat", "pine cone", "roman coffee", "russett", "sandstone", "siam", "soya bean", "storm dust", "willow grove", "woodland"]
	var b332=[bi332,bc332]
	var bi333=[0x0696969, 0x1676767, 0x2727472, 0x3796878, 0x4757575, 0x562777e, 0x6636373, 0x76a6873, 0x8777672, 0x97c7173, 0xa716e61, 0xb7a7c76, 0xc706e66, 0xd766d7c, 0xe666a6d, 0xf7a7679, 0x10666f6f, 0x11636d70, 0x126f747b, 0x136d7876, 0x14716675, 0x15696268, 0x166b6a6c, 0x176a6466, 0x1861666b, 0x1968766e, 0x1a7c7c72]
	var bc333=["dim gray", "granite gray", "nickel", "old lavender", "sonic silver", "blue bayoux", "comet", "dolphin", "dove grey", "empress", "flint", "gunsmoke", "ironside grey", "mamba", "mid grey", "monsoon", "nevada", "pale sky", "raven", "rolling stone", "rum", "salt box", "scarpa flow", "scorpion", "shuttle grey", "sirocco", "tapa"]
	var b333=[bi333,bc333]
	var bi334=[0x0666699, 0x1777696, 0x26e7f80, 0x3647d86, 0x4697d89, 0x5747880]
	var bc334=["dark blue-gray", "rhythm", "aurometalsaurus", "hoki", "lynch", "storm grey"]
	var b334=[bi334,bc334]
	var bi335=[0x07366bd, 0x1666fb4, 0x26f63a0]
	var bc335=["blue-violet (Crayola)", "chetwode blue", "scampi"]
	var b335=[bi335,bc335]
	var bi336=[0x0766ec8, 0x1746cc0]
	var bc336=["violet-blue (Crayola)", "toolbox"]
	var b336=[bi336,bc336]
	var bi337=[0x07b68ee]
	var bc337=["medium slate blue"]
	var b337=[bi337,bc337]
	var g33=[b330, b331, b332, b333, b334, b335, b336, b337]
	var bi340=[]
	var bc340=[]
	var b340=[bi340,bc340]
	var bi341=[0x06b8e23, 0x17c9f2f, 0x27e8424]
	var bc341=["olive drab (#3)", "sushi", "trendy green"]
	var b341=[bi341,bc341]
	var bi342=[0x0608a5a]
	var bc342=["hippie green"]
	var b342=[bi342,bc342]
	var bi343=[0x0679267, 0x1738678, 0x278866b, 0x37d9d72, 0x478857a, 0x57c817c, 0x67a9461, 0x76e8d71, 0x86d9a78]
	var bc343=["russian green", "xanadu", "camouflage green", "amulet", "blue smoke", "boulder", "highland", "laurel", "oxley"]
	var b343=[bi343,bc343]
	var bi344=[0x0778899, 0x1708090, 0x26f8c9f, 0x3698890, 0x47b948c, 0x5718f8a, 0x6648894, 0x774918e, 0x8639283, 0x9798488]
	var bc344=["light slate gray", "slate gray", "bermuda grey", "gothic", "granny smith", "gumbo", "horizon", "juniper", "patina", "regent grey"]
	var b344=[bi344,bc344]
	var bi345=[0x06082b6, 0x1778ba5, 0x2609ab8, 0x37988ab]
	var bc345=["glaucous", "shadow blue", "shakespeare", "ship cove"]
	var b345=[bi345,bc345]
	var bi346=[0x06699cc, 0x16d9bc3, 0x2779ecb]
	var bc346=["blue-gray", "cerulean frost", "dark pastel blue"]
	var b346=[bi346,bc346]
	var bi347=[0x06495ed]
	var bc347=["cornflower blue"]
	var b347=[bi347,bc347]
	var g34=[b340, b341, b342, b343, b344, b345, b346, b347]
	var bi350=[0x071a91d]
	var bc350=["christi"]
	var b350=[bi350,bc350]
	var bi351=[0x066b032, 0x17aac21]
	var bc351=["green (Ryb)", "lima"]
	var b351=[bi351,bc351]
	var bi352=[0x066b348]
	var bc352=["apple"]
	var b352=[bi352,bc352]
	var bi353=[0x07bb661, 0x171bc78]
	var bc353=["bud green", "fern"]
	var b353=[bi353,bc353]
	var bi354=[0x075aa94, 0x17bb18d, 0x27eb394, 0x367be90]
	var bc354=["acapulco", "bay leaf", "padua", "silver tree"]
	var b354=[bi354,bc354]
	var bi355=[0x06eaea1, 0x165adb2, 0x278b1bf, 0x374b2a8, 0x477a8ab, 0x56dafa7]
	var bc355=["green sheen", "fountain blue", "glacier", "gulf stream", "neptune", "tradewind"]
	var b355=[bi355,bc355]
	var bi356=[0x072a0c1, 0x171a6d2, 0x26ca0dc, 0x373a9c2, 0x477b7d0]
	var bc356=["air superiority blue", "iceberg", "little boy blue", "moonstone blue", "seagull"]
	var b356=[bi356,bc356]
	var bi357=[0x07cb9e8, 0x177b5fe, 0x27aaae0, 0x366b7e1]
	var bc357=["aero", "french sky blue", "jordy blue", "malibu"]
	var b357=[bi357,bc357]
	var g35=[b350, b351, b352, b353, b354, b355, b356, b357]
	var bi360=[]
	var bc360=[]
	var b360=[bi360,bc360]
	var bi361=[]
	var bc361=[]
	var b361=[bi361,bc361]
	var bi362=[]
	var bc362=[]
	var b362=[bi362,bc362]
	var bi363=[0x074c365, 0x177dd77]
	var bc363=["mantis", "pastel green"]
	var b363=[bi363,bc363]
	var bi364=[]
	var bc364=[]
	var b364=[bi364,bc364]
	var bi365=[0x066ddaa, 0x16fd2be, 0x27ac5b4]
	var bc365=["medium aquamarine", "downy", "monte carlo"]
	var b365=[bi365,bc365]
	var bi366=[0x07ecddd]
	var bc366=["spray"]
	var b366=[bi366,bc366]
	var bi367=[0x073c2fb, 0x17ed4e6, 0x276d7ea]
	var bc367=["maya blue", "middle blue", "sky blue (Crayola)"]
	var b367=[bi367,bc367]
	var g36=[b360, b361, b362, b363, b364, b365, b366, b367]
	var bi370=[0x066ff00, 0x17fff00, 0x27cfc00]
	var bc370=["bright green", "chartreuse (Web)", "lawn green"]
	var b370=[bi370,bc370]
	var bi371=[]
	var bc371=[]
	var b371=[bi371,bc371]
	var bi372=[]
	var bc372=[]
	var b372=[bi372,bc372]
	var bi373=[0x066ff66]
	var bc373=["screamin green"]
	var b373=[bi373,bc373]
	var bi374=[]
	var bc374=[]
	var b374=[bi374,bc374]
	var bi375=[]
	var bc375=[]
	var b375=[bi375,bc375]
	var bi376=[0x07fffd4]
	var bc376=["aquamarine"]
	var b376=[bi376,bc376]
	var bi377=[0x07df9ff]
	var bc377=["electric blue"]
	var b377=[bi377,bc377]
	var g37=[b370, b371, b372, b373, b374, b375, b376, b377]
	var r3=[g30, g31, g32, g33, g34, g35, g36, g37]
	var bi400=[0x0960018, 0x18b0000, 0x2801818, 0x3800000, 0x4841617, 0x59b111e, 0x6990000, 0x792000a]
	var bc400=["carmine", "dark red", "falu red", "maroon (Web)", "ou crimson red", "ruby red", "crimson red", "sangria"]
	var b400=[bi400,bc400]
	var bi401=[0x0841b2d, 0x1800020, 0x29e1b32, 0x39f1d35]
	var bc401=["antique ruby", "burgundy", "crimson (Ua)", "vivid burgundy"]
	var b401=[bi401,bc401]
	var bi402=[]
	var bc402=[]
	var b402=[bi402,bc402]
	var bi403=[]
	var bc403=[]
	var b403=[bi403,bc403]
	var bi404=[0x08b008b, 0x1880085, 0x2800080]
	var bc404=["dark magenta", "mardi gras", "patriarch"]
	var b404=[bi404,bc404]
	var bi405=[0x08601af]
	var bc405=["violet (Ryb)"]
	var b405=[bi405,bc405]
	var bi406=[0x09400d3, 0x18806ce, 0x29f00c5]
	var bc406=["dark violet", "french violet", "purple (Munsell)"]
	var b406=[bi406,bc406]
	var bi407=[0x08f00ff, 0x19f00ff]
	var bc407=["electric violet", "vivid violet"]
	var b407=[bi407,bc407]
	var g40=[b400, b401, b402, b403, b404, b405, b406, b407]
	var bi410=[0x0882d17]
	var bc410=["kobe"]
	var b410=[bi410,bc410]
	var bi411=[0x08a3324, 0x19d2933, 0x2922b3e, 0x3922724, 0x4922a31, 0x587382f, 0x68f3f2a, 0x786282e, 0x8952e31, 0x98e2323, 0xa9b3d3d, 0xb9e3332, 0xc8a3335, 0xd883c32, 0xe842833, 0xf833d3e, 0x10853534, 0x11923830, 0x128e3537]
	var bc411=["burnt umber", "japanese carmine", "red-violet (Color wheel)", "vivid auburn", "bright red", "crab apple", "fire", "flame red", "guardsman red", "mandarian orange", "mexican red", "milano red", "old brick", "prairie sand", "shiraz", "stiletto", "tall poppy", "thunderbird", "well read"]
	var b411=[bi411,bc411]
	var bi412=[0x09c2542, 0x1893f45, 0x28e3a59, 0x3893843, 0x4872657, 0x5933d41, 0x6803a4b, 0x7892d4f, 0x8962c54, 0x98a2d52]
	var bc412=["big dip o’ruby", "cordovan", "quinacridone magenta", "solid pink", "dark raspberry", "smokey topaz", "camelot", "disco", "lipstick", "rose bud cherry"]
	var b412=[bi412,bc412]
	var bi413=[0x09f2b68, 0x1963d7f, 0x2873260]
	var bc413=["amaranth (M&p)", "violet (Crayola)", "boysenberry"]
	var b413=[bi413,bc413]
	var bi414=[]
	var bc414=[]
	var b414=[bi414,bc414]
	var bi415=[]
	var bc415=[]
	var b415=[bi415,bc415]
	var bi416=[0x09932cc]
	var bc416=["dark orchid"]
	var b416=[bi416,bc416]
	var bi417=[0x08a2be2]
	var bc417=["blue-violet"]
	var b417=[bi417,bc417]
	var g41=[b410, b411, b412, b413, b414, b415, b416, b417]
	var bi420=[0x088540b, 0x187421f, 0x280461b, 0x38b4513]
	var bc420=["brown", "fuzzy wuzzy", "russet", "saddle brown"]
	var b420=[bi420,bc420]
	var bi421=[0x087413f, 0x1954535, 0x2905e26, 0x3954e2c, 0x495532f, 0x59a463d, 0x699522b, 0x7815b28, 0x89c5b34, 0x9804e2c, 0xa97463c, 0xb864b36, 0xc9d5432, 0xd9d442d, 0xe8e593c, 0xf8d5f2c, 0x1097422d]
	var bc421=["brandy", "chestnut", "afghan tan", "alert tan", "chelsea gem", "cognac", "hawaiian tan", "hot curry", "indochine", "korma", "mojo", "paarl", "piper", "rock spray", "rope", "rusty nail", "tia maria"]
	var b421=[bi421,bc421]
	var bi422=[0x0905d5d, 0x195524c, 0x2855e42, 0x38f4e45, 0x4865040, 0x58b504b, 0x68e4d45, 0x7884f40, 0x8845c40, 0x98b5f4d]
	var bc422=["rose taupe", "copper rust", "dark wood", "el salva", "ironstone", "lotus", "matrix", "mule fawn", "potters clay", "spicy mix"]
	var b422=[bi422,bc422]
	var bi423=[0x09f4576, 0x1915f6d, 0x29e5e6f, 0x3914e75, 0x48a496b, 0x5984961, 0x68e5164, 0x7955264]
	var bc423=["magenta haze", "mauve taupe", "rose dust", "sugar plum", "twilight lavender", "cadillac", "cannon pink", "vin rouge"]
	var b423=[bi423,bc423]
	var bi424=[0x0915c83, 0x18e4585, 0x28d4e85, 0x3805d80, 0x49f5f9f]
	var bc424=["antique fuchsia", "plum", "razzmic berry", "trendy pink", "violet blue"]
	var b424=[bi424,bc424]
	var bi425=[0x09c51b6, 0x19a4eae, 0x29955bb]
	var bc425=["purple plum", "purpureus", "deep lilac"]
	var b425=[bi425,bc425]
	var bi426=[]
	var bc426=[]
	var b426=[bi426,bc426]
	var bi427=[0x09457eb]
	var bc427=["lavender indigo"]
	var b427=[bi427,bc427]
	var g42=[b420, b421, b422, b423, b424, b425, b426, b427]
	var bi430=[0x0967117, 0x1996515]
	var bc430=["bistre brown", "golden brown"]
	var b430=[bi430,bc430]
	var bi431=[0x081613c, 0x19c7c38, 0x2807532, 0x39d702e, 0x48d702a, 0x58c6338, 0x6826a21]
	var bc431=["coyote brown", "metallic sunburst", "spanish bistre", "buttered rum", "corn harvest", "mckenzie", "yukon gold"]
	var b431=[bi431,bc431]
	var bi432=[0x0856d4d, 0x185754e, 0x2987456, 0x3826644, 0x48a795d, 0x5987654, 0x6836953, 0x79e6759, 0x8857158, 0x9897e59, 0xa816e5c, 0xb906a54, 0xc9e7e53, 0xd9f715f]
	var bc432=["french bistre", "gold fusion", "liver chestnut", "raw umber", "shadow", "pale brown", "pastel brown", "au chico", "cement", "clay creek", "donkey brown", "leather", "muesli", "toast"]
	var b432=[bi432,bc432]
	var bi433=[0x0996666, 0x198777b, 0x2986960, 0x38a7d72, 0x4827a67, 0x5827f79, 0x6876a68, 0x7987d73, 0x88b7e77, 0x9856363, 0xa987e7e, 0xb826663, 0xc867665, 0xd9d7f61, 0xe8f7d6b, 0xf807661]
	var bc433=["copper rose", "bazaar", "dark chestnut", "americano", "arrowtown", "concord", "ferra", "hemp", "hurricane", "light wood", "opium", "pharlap", "sand dune", "sorrell brown", "squirrel", "stonewall"]
	var b433=[bi433,bc433]
	var bi434=[0x0856088, 0x186608e, 0x2997a8d, 0x38a7f80, 0x4946a81, 0x58b7d82]
	var bc434=["chinese violet", "french lilac", "mountbatten pink", "rocket metallic", "strikemaster", "venus"]
	var b434=[bi434,bc434]
	var bi435=[0x08b72be, 0x19678b6, 0x2967bb6, 0x39271a7, 0x48272a4]
	var bc435=["middle blue purple", "purple mountain majesty", "lavender purple", "ce soir", "deluge"]
	var b435=[bi435,bc435]
	var bi436=[0x09966cc, 0x19370db, 0x2966fd6, 0x38878c3, 0x49470c4, 0x58378c7, 0x68e72c7]
	var bc436=["amethyst", "medium purple", "dark pastel purple", "ube", "lilac bush", "moody blue", "true v"]
	var b436=[bi436,bc436]
	var bi437=[0x08470ff]
	var bc437=["light slate blue"]
	var b437=[bi437,bc437]
	var g43=[b430, b431, b432, b433, b434, b435, b436, b437]
	var bi440=[0x0808000]
	var bc440=["olive"]
	var b440=[bi440,bc440]
	var bi441=[0x09e8022, 0x1928c3c, 0x2968428, 0x3849137]
	var bc441=["hacienda", "highball", "lemon ginger", "wasabi"]
	var b441=[bi441,bc441]
	var bi442=[0x08a9a5b, 0x1918151]
	var bc442=["moss green", "dark tan"]
	var b442=[bi442,bc442]
	var bi443=[0x08f9779, 0x19f8170, 0x298817b, 0x39a8678, 0x4878466, 0x588896c, 0x686837a, 0x78b8265, 0x8989171, 0x9948c7e, 0xa97976f, 0xb888064, 0xc9c8d72, 0xd87876f, 0xe8d8478]
	var bc443=["artichoke", "beaver", "cinereous", "almond frost", "bandicoot", "bitter", "friar grey", "granite green", "gurkha", "heathered grey", "malachite green", "olive haze", "pale oyster", "schist", "schooner"]
	var b443=[bi443,bc443]
	var bi444=[0x0848482, 0x1808080, 0x28b8680, 0x3838996, 0x4989898, 0x58b8589, 0x6848789, 0x795879c, 0x89f9d91, 0x9999b95, 0xa878785, 0xb999a86, 0xc818988, 0xd9f9b9d, 0xe858885, 0xf8c9c9c, 0x108b8685]
	var bc444=["battleship grey", "gray (Web)", "middle grey", "roman silver", "spanish gray", "taupe gray", "aluminium", "amethyst smoke", "dawn", "delta", "jumbo", "lemon grass", "oslo grey", "shady lady", "stack", "submarine", "suva grey"]
	var b444=[bi444,bc444]
	var bi445=[0x08c92ac, 0x1979aaa, 0x29d81ba, 0x3849ca9, 0x49d8abf, 0x59391a0, 0x69d9cb4, 0x79998a7]
	var bc445=["cool grey", "manatee", "purple mountains majesty", "bali hai", "cold purple", "grey suit", "logan", "santas grey"]
	var b445=[bi445,bc445]
	var bi446=[0x08b98d8]
	var bc446=["portage"]
	var b446=[bi446,bc446]
	var bi447=[]
	var bc447=[]
	var b447=[bi447,bc447]
	var g44=[b440, b441, b442, b443, b444, b445, b446, b447]
	var bi450=[0x08db600, 0x19fa91f, 0x29fb70a]
	var bc450=["apple green", "citron", "citrus"]
	var b450=[bi450,bc450]
	var bi451=[0x089ac27]
	var bc451=["limerick"]
	var b451=[bi451,bc451]
	var bi452=[0x088a95b]
	var bc452=["chelsea cucumber"]
	var b452=[bi452,bc452]
	var bi453=[0x087a96b, 0x19ab973, 0x285bb65, 0x39ca664]
	var bc453=["asparagus", "olivine", "dollar bill", "green smoke"]
	var b453=[bi453,bc453]
	var bi454=[0x08fbc8f, 0x18da399, 0x297a49a, 0x38ba58f, 0x496a793, 0x591a092, 0x68fb69c]
	var bc454=["dark sea green", "morning blue", "edward", "envy", "mantle", "pewter", "summer green"]
	var b454=[bi454,bc454]
	var bi455=[0x091a3b0, 0x18ba8b7, 0x292acb4, 0x38ca8a0, 0x49fa3a7, 0x593aab9, 0x693a2ba, 0x78aaea4, 0x89db4aa, 0x99caca5, 0xa81a6aa]
	var bc455=["cadet grey", "pewter blue", "botticelli", "cascade", "grey chateau", "nepal", "rock blue", "sea nymph", "skeptic", "tower grey", "ziggurat"]
	var b455=[bi455,bc455]
	var bi456=[0x08cbed6, 0x18aa7cc]
	var bc456=["dark sky blue", "polo blue"]
	var b456=[bi456,bc456]
	var bi457=[]
	var bc457=[]
	var b457=[bi457,bc457]
	var g45=[b450, b451, b452, b453, b454, b455, b456, b457]
	var bi460=[0x08fd400]
	var bc460=["sheen green"]
	var b460=[bi460,bc460]
	var bi461=[0x09acd32, 0x19cd03b]
	var bc461=["yellow-green", "atlantis"]
	var b461=[bi461,bc461]
	var bi462=[]
	var bc462=[]
	var b462=[bi462,bc462]
	var bi463=[0x093c572]
	var bc463=["pistachio"]
	var b463=[bi463,bc463]
	var bi464=[0x085ca87, 0x19fd385]
	var bc464=["de york", "gossip"]
	var b464=[bi464,bc464]
	var bi465=[0x096c8a2, 0x19dd3a8, 0x29ac0b6, 0x397d5b3]
	var bc465=["eton blue", "chinook", "shadow green", "vista blue"]
	var b465=[bi465,bc465]
	var bi466=[0x08dd9cc, 0x196ded1, 0x288d8c0, 0x386d2c1, 0x49ed1d3, 0x589d9c8]
	var bc466=["middle blue green", "pale robin egg blue", "pearl aqua", "bermuda", "morning glory", "riptide"]
	var b466=[bi466,bc466]
	var bi467=[0x089cff0, 0x193ccea, 0x287cefa, 0x39bc4e2, 0x487ceeb, 0x59aceeb, 0x68cceea]
	var bc467=["baby blue", "light cornflower blue", "light sky blue", "pale cerulean", "sky blue", "cornflower", "anakiwa"]
	var b467=[bi467,bc467]
	var g46=[b460, b461, b462, b463, b464, b465, b466, b467]
	var bi470=[]
	var bc470=[]
	var b470=[bi470,bc470]
	var bi471=[0x09efd38, 0x187ff2a]
	var bc471=["french lime", "spring frost"]
	var b471=[bi471,bc471]
	var bi472=[]
	var bc472=[]
	var b472=[bi472,bc472]
	var bi473=[]
	var bc473=[]
	var b473=[bi473,bc473]
	var bi474=[0x090ee90, 0x198ff98, 0x298fb98]
	var bc474=["light green", "mint green", "pale green"]
	var b474=[bi474,bc474]
	var bi475=[]
	var bc475=[]
	var b475=[bi475,bc475]
	var bi476=[]
	var bc476=[]
	var b476=[bi476,bc476]
	var bi477=[]
	var bc477=[]
	var b477=[bi477,bc477]
	var g47=[b470, b471, b472, b473, b474, b475, b476, b477]
	var r4=[g40, g41, g42, g43, g44, g45, g46, g47]
	var bi500=[0x0b31b1b, 0x1ba160c, 0x2a91101, 0x3a81c07, 0x4a40000, 0x5ae0c00]
	var bc500=["carnelian", "international orange (Engineering)", "rojo spanish red", "rufous", "dark candy apple red", "mordant red 19"]
	var b500=[bi500,bc500]
	var bi501=[0x0a50021, 0x1be0032]
	var bc501=["university of pennsylvania red", "crimson glory"]
	var b501=[bi501,bc501]
	var bi502=[0x0a50b5e]
	var bc502=["jazzberry jam"]
	var b502=[bi502,bc502]
	var bi503=[0x0a2006d]
	var bc503=["flirt"]
	var b503=[bi503,bc503]
	var bi504=[]
	var bc504=[]
	var b504=[bi504,bc504]
	var bi505=[]
	var bc505=[]
	var b505=[bi505,bc505]
	var bi506=[]
	var bc506=[]
	var b506=[bi506,bc506]
	var bi507=[0x0bf00ff]
	var bc507=["electric purple"]
	var b507=[bi507,bc507]
	var g50=[b500, b501, b502, b503, b504, b505, b506, b507]
	var bi510=[0x0aa381e]
	var bc510=["chinese red"]
	var b510=[bi510,bc510]
	var bi511=[0x0a52a2a, 0x1b22222, 0x2a83731, 0x3ae2029, 0x4a9203e]
	var bc511=["auburn", "firebrick", "sweet brown", "upsdell red", "deep carmine"]
	var b511=[bi511,bc511]
	var bi512=[0x0ab274f, 0x1a23d54]
	var bc512=["amaranth purple", "night shadz"]
	var b512=[bi512,bc512]
	var bi513=[0x0b03060, 0x1a63a79]
	var bc513=["maroon (X11)", "maximum red purple"]
	var b513=[bi513,bc513]
	var bi514=[0x0b53389, 0x1bb3385]
	var bc514=["fandango", "medium red violet"]
	var b514=[bi514,bc514]
	var bi515=[0x0bd33a4]
	var bc515=["byzantine"]
	var b515=[bi515,bc515]
	var bi516=[]
	var bc516=[]
	var b516=[bi516,bc516]
	var bi517=[0x0a020f0]
	var bc517=["purple (X11)"]
	var b517=[bi517,bc517]
	var g51=[b510, b511, b512, b513, b514, b515, b516, b517]
	var bi520=[0x0b7410e, 0x1a75502]
	var bc520=["rust", "windsor tan"]
	var b520=[bi520,bc520]
	var bi521=[0x0af4035, 0x1a15f3b, 0x2b1592f, 0x3a85335, 0x4ad522e, 0x5a15226, 0x6ac512d, 0x7a0522d, 0x8bb5f34, 0x9a85533]
	var bc521=["medium carmine", "desert", "fiery orange", "orange roughy", "red stage", "rich gold", "rose of sharon", "sienna", "smoke tree", "vesuvius"]
	var b521=[bi521,bc521]
	var bi522=[0x0bf4f51, 0x1b94e48, 0x2ab4b52, 0x3a55353, 0x4a45a52, 0x5ab4e52, 0x6a95249, 0x7a65648, 0x8be5c48, 0x9ab495c, 0xaa14743]
	var bc522=["bittersweet shimmer", "deep chestnut", "english red", "middle red purple", "redwood", "rose vale", "apple blossom", "crail", "flame pea", "hippie pink", "roof terracotta"]
	var b522=[bi522,bc522]
	var bi523=[0x0a8516e, 0x1b3446c, 0x2ad4379, 0x3be4f62, 0x4a94064, 0x5b54b73]
	var bc523=["china rose", "irresistible", "mystic maroon", "popstar", "rouge", "royal heath"]
	var b523=[bi523,bc523]
	var bi524=[]
	var bc524=[]
	var b524=[bi524,bc524]
	var bi525=[]
	var bc525=[]
	var b525=[bi525,bc525]
	var bi526=[0x0ba55d3]
	var bc526=["medium orchid"]
	var b526=[bi526,bc526]
	var bi527=[]
	var bc527=[]
	var b527=[bi527,bc527]
	var g52=[b520, b521, b522, b523, b524, b525, b526, b527]
	var bi530=[0x0a57c00, 0x1b06500, 0x2b5651d]
	var bc530=["gold", "ginger", "light brown"]
	var b530=[bi530,bc530]
	var bi531=[0x0b87333, 0x1b86d29, 0x2bb6528, 0x3af6c3e, 0x4bf652e, 0x5a7752c, 0x6a56531, 0x7b57b2e, 0x8bb7431, 0x9ba782a, 0xab26e33]
	var bc531=["copper", "liver (Dogs)", "ruddy brown", "bourbon", "christine", "hot toddy", "mai tai", "mandalay", "meteor", "pirate gold", "reno sand"]
	var b531=[bi531,bc531]
	var bi532=[0x0af6e4d, 0x1a67b5b, 0x2a0785a, 0x3a96a50]
	var bc532=["brown sugar", "café au lait", "chamoisee", "sante fe"]
	var b532=[bi532,bc532]
	var bi533=[0x0a57164, 0x1a17a74, 0x2ad6f69, 0x3b76e79, 0x4ab6e67]
	var bc533=["blast-off bronze", "burnished brown", "copper penny", "rose gold", "coral tree"]
	var b533=[bi533,bc533]
	var bi534=[0x0b57281, 0x1b37084]
	var bc534=["turkish rose", "tapestry"]
	var b534=[bi534,bc534]
	var bi535=[0x0b768a2]
	var bc535=["pearly purple"]
	var b535=[bi535,bc535]
	var bi536=[0x0b57edc, 0x1b666d2]
	var bc536=["lavender (Floral)", "rich lilac"]
	var b536=[bi536,bc536]
	var bi537=[]
	var bc537=[]
	var b537=[bi537,bc537]
	var g53=[b530, b531, b532, b533, b534, b535, b536, b537]
	var bi540=[0x0b8860b, 0x1bc9b1b, 0x2ab9a1c]
	var bc540=["dark goldenrod", "buddha gold", "lucky"]
	var b540=[bi540,bc540]
	var bi541=[0x0b78727, 0x1ad8a3b, 0x2bb8e34, 0x3ab8d3f, 0x4bc9229, 0x5bf8d3c, 0x6a98d36, 0x7b79826]
	var bc541=["university of california gold", "alpine", "hokey pokey", "luxor gold", "nugget", "pizza", "reef gold", "sahara"]
	var b541=[bi541,bc541]
	var bi542=[0x0b6935c, 0x1b2994b, 0x2a9844f, 0x3b69642, 0x4ab8953, 0x5ae9041, 0x6bf914b]
	var bc542=["barley corn", "husk", "muddy waters", "roti", "teak", "turmeric", "tussock"]
	var b542=[bi542,bc542]
	var bi543=[0x0b38b6d, 0x1bc987e, 0x2b6857a, 0x3a19a7f, 0x4a68064, 0x5a58b6f, 0x6a3876a, 0x7af937d, 0x8a39977]
	var bc543=["light taupe", "pale taupe", "brandy rose", "grey olive", "medium wood", "mongoose", "sandal", "sandrift", "tallow"]
	var b543=[bi543,bc543]
	var bi544=[0x0b48395, 0x1a99a86, 0x2bc8f8f, 0x3a78199, 0x4a79781, 0x5b5998e, 0x6ac9b9b, 0x7a59784, 0x8a09f9c, 0x9a39a87, 0xaa99d9d, 0xba19986, 0xcb1948f, 0xda29589]
	var bc544=["english lavender", "grullo", "rosy brown", "bouquet", "bronco", "del rio", "dusty grey", "malta", "mountain mist", "napa", "nobel", "nomad", "thatch", "zorba"]
	var b544=[bi544,bc544]
	var bi545=[0x0b284be, 0x1ab92b3, 0x2aa98a9, 0x3ae98aa, 0x4b784a7, 0x5b39eb5, 0x6aa8cbc, 0x7ae94ab]
	var bc545=["african violet", "glossy grape", "heliotrope gray", "lilac luster", "opera mauve", "pastel purple", "east side", "london hue"]
	var b545=[bi545,bc545]
	var bi546=[0x0b19cd9, 0x1ae99d2, 0x2a29ecd]
	var bc546=["light pastel purple", "biloba flower", "wistful"]
	var b546=[bi546,bc546]
	var bi547=[0x0bf94e4]
	var bc547=["bright lavender"]
	var b547=[bi547,bc547]
	var g54=[b540, b541, b542, b543, b544, b545, b546, b547]
	var bi550=[0x0b0bf1a]
	var bc550=["acid green"]
	var b550=[bi550,bc550]
	var bi551=[0x0b8a722]
	var bc551=["earls green"]
	var b551=[bi551,bc551]
	var bi552=[0x0b5b35c, 0x1b5a642]
	var bc552=["olive green", "brass"]
	var b552=[bi552,bc552]
	var bi553=[0x0bdb76b, 0x1acbf60, 0x2bbb477, 0x3b9ad61, 0x4a7a07e]
	var bc553=["dark khaki", "middle green yellow", "misty moss", "gimblet", "hillary"]
	var b553=[bi553,bc553]
	var bi554=[0x0a9ba9d, 0x1bcb88a, 0x2beb29a, 0x3b5ac94, 0x4a5a88f, 0x5b8ad8a, 0x6b0a99f, 0x7bbb58d, 0x8b0ac94, 0x9a7a69d, 0xaa9af99, 0xba2a580, 0xcaaa583, 0xda4b88f, 0xebaab87, 0xfa3bd9c, 0x10a0a197]
	var bc554=["laurel green", "sage", "akaroa", "bison hide", "bud", "chino", "cloudy", "coriander", "eagle", "foggy grey", "green spring", "locust", "neutral green", "norway", "pavlova", "spring rain", "star dust"]
	var b554=[bi554,bc554]
	var bi555=[0x0b2beb5, 0x1bfafb2, 0x2bebebe, 0x3a6a6a6, 0x4aaa9ad, 0x5acacac, 0x6a9a9a9, 0x7bebaa7, 0x8bcbfa8, 0x9aeaead, 0xaaab5b8, 0xbb3abb6, 0xca0b1ae, 0xdbfbaaf, 0xebdbaae, 0xfa4adb0, 0x10a1a9a8, 0x11b3bbb7, 0x12b9acbb, 0x13b7a8a3, 0x14a5a9b2, 0x15bab9a9, 0x16acb6b2, 0x17bfb3b2, 0x18bbada1, 0x19a2a1ac, 0x1ab8b5a1, 0x1bbfb5a2, 0x1cbeb4ab]
	var bc555=["ash gray", "black shadows", "gray (X11 gray)", "quick silver", "silver (Metallic)", "silver chalice", "dark gray", "ash", "beryl green", "bombay", "casper", "chatelle", "conch", "cotton seed", "grey nickel", "gull grey", "hit grey", "loblolly", "lola", "martini", "mischka", "mist grey", "periglacial blue", "pink swan", "silk", "spun pearl", "tana", "tea", "tide"]
	var b555=[bi555,bc555]
	var bi556=[0x0a2a2d0, 0x1a9b2c3, 0x2a2add0, 0x3bdbace, 0x4a4afcd, 0x5bfbdc1, 0x6aebbc1, 0x7bdbbd7]
	var bc556=["blue bell", "cadet blue (Crayola)", "wild blue yonder", "blue haze", "echo blue", "french grey", "heather", "lavender grey"]
	var b556=[bi556,bc556]
	var bi557=[0x0acace6, 0x1acb9e8]
	var bc557=["maximum blue purple", "perano"]
	var b557=[bi557,bc557]
	var g55=[b550, b551, b552, b553, b554, b555, b556, b557]
	var bi560=[0x0a9c01c, 0x1bac00e, 0x2b7c61a]
	var bc560=["bahia", "la rioja", "rio grande"]
	var b560=[bi560,bc560]
	var bi561=[0x0a4c639]
	var bc561=["android green"]
	var b561=[bi561,bc561]
	var bi562=[0x0bdda57, 0x1b4c04c, 0x2b1dd52]
	var bc562=["june bud", "celery", "conifer"]
	var b562=[bi562,bc562]
	var bi563=[0x0bdc07e, 0x1beca60]
	var bc563=["pine glade", "wild willow"]
	var b563=[bi563,bc563]
	var bi564=[0x0afc182, 0x1a5d785, 0x2bfc298, 0x3b8ca9d]
	var bc564=["caper", "feijoa", "green mist", "sprout"]
	var b564=[bi564,bc564]
	var bi565=[0x0a3c1ad, 0x1a8c3bc, 0x2a0d6b4, 0x3acc9b2, 0x4bfc0ab, 0x5b8c6be, 0x6bdcaa8, 0x7bbcda5, 0x8bac0b4, 0x9b3c1b1, 0xab8d4bb, 0xbbac0b3, 0xcb9c3be, 0xdb2c6b1]
	var bc565=["cambridge blue", "opal", "turquoise green", "gum leaf", "kidnapper", "nebula", "pale leaf", "pixie green", "pumice", "rainee", "surf", "tasman", "tiara", "zanah"]
	var b565=[bi565,bc565]
	var bi566=[0x0b0c4de, 0x1bfc1c2, 0x2aec6cf, 0x3bbd0c9, 0x4b0c4c4, 0x5bfcdc0, 0x6a0cdd9, 0x7add9d1, 0x8a6d5d0, 0x9b3c4d8]
	var bc566=["light steel blue", "silver sand", "pastel blue", "jet stream", "jungle mist", "paris white", "regent st blue", "scandal", "sinbad", "spindle"]
	var b566=[bi566,bc566]
	var bi567=[0x0a1caf1, 0x1bcd4e6, 0x2b9d9eb, 0x3add8e6, 0x4a4dded, 0x5afdbf5, 0x6abcdef, 0x7a4dce6, 0x8a4d2e0, 0x9a5ceec, 0xaaec9eb]
	var bc567=["baby blue eyes", "beau blue", "columbia blue", "light blue", "non-photo blue", "uranian blue", "pale cornflower blue", "charlotte", "french pass", "sail", "tropical blue"]
	var b567=[bi567,bc567]
	var g56=[b560, b561, b562, b563, b564, b565, b566, b567]
	var bi570=[0x0bfff00, 0x1a7fc00, 0x2b0e313]
	var bc570=["bitter lime", "spring bud", "inch worm"]
	var b570=[bi570,bc570]
	var bi571=[0x0a7f432, 0x1adff2f]
	var bc571=["green lizard", "green-yellow"]
	var b571=[bi571,bc571]
	var bi572=[0x0b2ec5d]
	var bc572=["inchworm"]
	var b572=[bi572,bc572]
	var bi573=[]
	var bc573=[]
	var b573=[bi573,bc573]
	var bi574=[]
	var bc574=[]
	var b574=[bi574,bc574]
	var bi575=[0x0ace1af, 0x1a8e4a0, 0x2b4e1bb, 0x3b7e3a8]
	var bc575=["celadon", "granny smith apple", "fringy flower", "madang"]
	var b575=[bi575,bc575]
	var bi576=[0x0aaf0d1, 0x1b4e2d5, 0x2afe3d6, 0x3b6ecde]
	var bc576=["magic mint", "cruise", "ice cold", "water leaf"]
	var b576=[bi576,bc576]
	var bi577=[0x0ace5ee, 0x1b2ffff, 0x2b0e0e6, 0x3afeeee]
	var bc577=["blizzard blue", "celeste", "powder blue", "pale blue"]
	var b577=[bi577,bc577]
	var g57=[b570, b571, b572, b573, b574, b575, b576, b577]
	var r5=[g50, g51, g52, g53, g54, g55, g56, g57]
	var bi600=[0x0d40000, 0x1c80815, 0x2cc0000, 0x3c90016, 0x4c00000]
	var bc600=["rosso corsa", "venetian red", "boston university red", "harvard crimson", "free speech red"]
	var b600=[bi600,bc600]
	var bi601=[0x0c41e3a, 0x1dc143c, 0x2cf1020, 0x3c40233, 0x4d3003f]
	var bc601=["cardinal", "crimson", "lava", "red (Ncs)", "utah crimson"]
	var b601=[bi601,bc601]
	var bi602=[0x0d70040, 0x1c30b4e, 0x2c21e56, 0x3d10056, 0x4d10047, 0x5d9004c, 0x6d70a53]
	var bc602=["carmine (M&p)", "pictorial carmine", "rose red", "rubine red", "spanish carmine", "ua red", "debian red"]
	var b602=[bi602,bc602]
	var bi603=[0x0d71868, 0x1ca1f7b]
	var bc603=["dogwood rose", "magenta (Dye)"]
	var b603=[bi603,bc603]
	var bi604=[0x0da1884, 0x1c71585, 0x2da1d81]
	var bc604=["barbie pink", "medium violet-red", "vivid cerise"]
	var b604=[bi604,bc604]
	var bi605=[]
	var bc605=[]
	var b605=[bi605,bc605]
	var bi606=[0x0cc00cc]
	var bc606=["deep magenta"]
	var b606=[bi606,bc606]
	var bi607=[0x0df00ff, 0x1dd00ff]
	var bc607=["phlox", "psychedelic purple"]
	var b607=[bi607,bc607]
	var g60=[b600, b601, b602, b603, b604, b605, b606, b607]
	var bi610=[0x0d9381e, 0x1c93413]
	var bc610=["vermilion", "harley davidson orange"]
	var b610=[bi610,bc610]
	var bi611=[0x0d3212d, 0x1ce2029, 0x2c0362c, 0x3cc3336, 0x4d92121, 0x5cc3333, 0x6c23b22, 0x7d73b3e]
	var bc611=["amaranth red", "fire engine red", "international orange (Golden gate bridge)", "madder lake", "maximum red", "persian red", "dark pastel red", "jasper"]
	var b611=[bi611,bc611]
	var bi612=[0x0c32148, 0x1c72c48, 0x2da2c43]
	var bc612=["bright maroon", "french raspberry", "rusty red"]
	var b612=[bi612,bc612]
	var bi613=[0x0de3163, 0x1cc397b, 0x2cf3476]
	var bc613=["cerise", "fuchsia purple", "telemagenta"]
	var b613=[bi613,bc613]
	var bi614=[0x0da3287, 0x1ca2c92]
	var bc614=["deep cerise", "royal fuchsia"]
	var b614=[bi614,bc614]
	var bi615=[]
	var bc615=[]
	var b615=[bi615,bc615]
	var bi616=[0x0cc33cc]
	var bc616=["steel pink"]
	var b616=[bi616,bc616]
	var bi617=[]
	var bc617=[]
	var b617=[bi617,bc617]
	var g61=[b610, b611, b612, b613, b614, b615, b616, b617]
	var bi620=[0x0cc5500, 0x1c04000, 0x2cb410b, 0x3d44500, 0x4cd5700]
	var bc620=["burnt orange", "mahogany", "sinopia", "syracuse orange", "tenné (Tawny)"]
	var b620=[bi620,bc620]
	var bi621=[0x0d05e34, 0x1c14d36, 0x2c54f33]
	var bc621=["chilean fire", "grenadier", "trinidad"]
	var b621=[bi621,bc621]
	var bi622=[0x0cb4154, 0x1c95a49, 0x2cc474b, 0x3cd5c5c, 0x4cd5b45, 0x5cc4e5c, 0x6c45655, 0x7cd525b, 0x8c0514a, 0x9d4574e]
	var bc622=["brick red", "cedar chest", "english vermillion", "indian red", "dark coral", "dark terra cotta", "fuzzy wuzzy brown", "mandy", "sunset", "valencia"]
	var b622=[bi622,bc622]
	var bi623=[0x0c74375, 0x1d0417e, 0x2ce4676, 0x3cd526c, 0x4db5079]
	var bc623=["fuchsia rose", "magenta (Pantone)", "ruber", "cabaret", "cranberry"]
	var b623=[bi623,bc623]
	var bi624=[0x0de5d83, 0x1de5285, 0x2c54b8c, 0x3c8509b, 0x4d65282, 0x5d74894, 0x6c0448f, 0x7c84186]
	var bc624=["blush", "fandango pink", "mulberry", "mulberry (Crayola)", "mystic", "pink (Pantone)", "red-violet (Crayola)", "smitten"]
	var b624=[bi624,bc624]
	var bi625=[]
	var bc625=[]
	var b625=[bi625,bc625]
	var bi626=[0x0c154c1]
	var bc626=["fuchsia (Crayola)"]
	var b626=[bi626,bc626]
	var bi627=[]
	var bc627=[]
	var b627=[bi627,bc627]
	var g62=[b620, b621, b622, b623, b624, b625, b626, b627]
	var bi630=[0x0c46210, 0x1d2691e]
	var bc630=["alloy orange", "chocolate (Web)"]
	var b630=[bi630,bc630]
	var bi631=[0x0cd7f32, 0x1cc7722, 0x2c96138, 0x3d56c30, 0x4dd6b38, 0x5dc722a, 0x6d46f31, 0x7c6723b]
	var bc631=["bronze", "ochre", "ecstasy", "gold drop", "sorbus", "tahiti gold", "tango", "zest"]
	var b631=[bi631,bc631]
	var bi632=[0x0cb6d51, 0x1c07c40, 0x2ce7259, 0x3cb6f4a, 0x4d8625b, 0x5c76155]
	var bc632=["copper red", "brandy punch", "japonica", "red damask", "roman", "sunglo"]
	var b632=[bi632,bc632]
	var bi633=[0x0cd607e, 0x1c16f68]
	var bc633=["cinnamon satin", "contessa"]
	var b633=[bi633,bc633]
	var bi634=[0x0db7093, 0x1d0748b, 0x2cd6d93]
	var bc634=["pale red violet", "charm", "hopbush"]
	var b634=[bi634,bc634]
	var bi635=[0x0de6fa1, 0x1cf71af, 0x2cf6ba9, 0x3d470a2]
	var bc635=["china pink", "sky magenta", "super pink", "wild orchid"]
	var b635=[bi635,bc635]
	var bi636=[0x0d473d4, 0x1da70d6]
	var bc636=["french mauve", "orchid"]
	var b636=[bi636,bc636]
	var bi637=[0x0df73ff]
	var bc637=["heliotrope"]
	var b637=[bi637,bc637]
	var g63=[b630, b631, b632, b633, b634, b635, b636, b637]
	var bi640=[0x0da9100]
	var bc640=["harvest gold"]
	var b640=[bi640,bc640]
	var bi641=[0x0c68e3f, 0x1da9429, 0x2cd8431, 0x3d19033, 0x4c5832e, 0x5ca8136, 0x6cd853f]
	var bc641=["anzac", "buttercup", "dixie", "fuel yellow", "geebung", "golden bell", "peru"]
	var b641=[bi641,bc641]
	var bi642=[0x0d99058, 0x1d68a59, 0x2df9d5b, 0x3c19156, 0x4d4915d]
	var bc642=["persian orange", "raw sienna", "porsche", "twine", "whiskey sour"]
	var b642=[bi642,bc642]
	var bi643=[0x0cd9575, 0x1c19a6b, 0x2da8a67, 0x3d7837f, 0x4d99a6c, 0x5d08363, 0x6d19275, 0x7db817e, 0x8d29062]
	var bc643=["antique brass", "camel", "copper (Crayola)", "new york pink", "tan (Crayola)", "burning sand", "feldspar", "sea pink", "whiskey"]
	var b643=[bi643,bc643]
	var bi644=[0x0c08081, 0x1cc8899, 0x2d98695, 0x3c09999, 0x4d08a9b, 0x5d68b80, 0x6c28e88, 0x7da9790, 0x8c3988b, 0x9c58f9d]
	var bc644=["old rose", "puce", "shimmering blush", "tuscany", "can can", "my pink", "oriental pink", "petite orchid", "quicksand", "viola"]
	var b644=[bi644,bc644]
	var bi645=[0x0d982b5, 0x1c99aa0, 0x2c19fb3]
	var bc645=["middle purple", "careys pink", "lily"]
	var b645=[bi645,bc645]
	var bi646=[0x0cb99c9]
	var bc646=["pastel violet"]
	var b646=[bi646,bc646]
	var bi647=[0x0d891ef, 0x1d19fe8]
	var bc647=["bright lilac", "bright ube"]
	var b647=[bi647,bc647]
	var g64=[b640, b641, b642, b643, b644, b645, b646, b647]
	var bi650=[0x0cca01d]
	var bc650=["lemon curry"]
	var b650=[bi650,bc650]
	var bi651=[0x0d4af37, 0x1daa520, 0x2d3af37, 0x3cfb53b, 0x4cba135, 0x5d8a723]
	var bc651=["gold (Metallic)", "goldenrod", "metallic gold", "old gold", "satin sheen gold", "galliano"]
	var b651=[bi651,bc651]
	var bi652=[0x0c5b358, 0x1d3a95c, 0x2c6a95e, 0x3ddad56, 0x4c4aa4d]
	var bc652=["vegas gold", "apache", "laser", "rob roy", "sundance"]
	var b652=[bi652,bc652]
	var bi653=[0x0c8ad7f, 0x1dab160, 0x2cdae70, 0x3d2b960]
	var bc653=["light french beige", "equator", "putty", "tacha"]
	var b653=[bi653,bc653]
	var bi654=[0x0deb887, 0x1c2b280, 0x2c3b091, 0x3d2b48c, 0x4deaa88, 0x5d5b185, 0x6cca483, 0x7d1b399, 0x8cda59c, 0x9dfb992, 0xac7a384, 0xbc9b59a, 0xcccb69b, 0xdc7b882]
	var bc654=["burlywood", "ecru", "khaki (Web)", "tan", "tumbleweed", "calico", "cameo", "cashmere", "eunry", "pancho", "rodeo dust", "sour dough", "vanilla", "yuma"]
	var b654=[bi654,bc654]
	var bi655=[0x0dea5a4, 0x1c4aead, 0x2ddadaf, 0x3dfb1b6, 0x4d2b3a9, 0x5c2bcb1, 0x6cab5b2, 0x7cab8a2, 0x8dcbfac, 0x9d4b5b0, 0xac3bebb, 0xbd8b4b6, 0xcc5baa0, 0xdcfbea5, 0xed4bbb1]
	var bc655=["pastel pink", "silver pink", "pale chestnut", "blossom", "clam shell", "cloud", "cold turkey", "grain brown", "just right", "oyster pink", "pale slate", "pink flare", "sisal", "soft amber", "wafer"]
	var b655=[bi655,bc655]
	var bi656=[0x0c8a2c8, 0x1d8b2d1, 0x2dda0dd, 0x3d8bfd8, 0x4c9a0dc, 0x5c0bfc7, 0x6c8b1c0, 0x7c3b9dd, 0x8c0b2d7, 0x9c2a9db, 0xacab4d4]
	var bc656=["lilac", "pink lavender", "plum (Web)", "thistle", "wisteria", "ghost", "maverick", "melrose", "moon raker", "perfume", "prelude"]
	var b656=[bi656,bc656]
	var bi657=[]
	var bc657=[]
	var b657=[bi657,bc657]
	var g65=[b650, b651, b652, b653, b654, b655, b656, b657]
	var bi660=[0x0d2c61f, 0x1d0c117, 0x2dac01a]
	var bc660=["barberry", "bird flower", "sunflower"]
	var b660=[bi660,bc660]
	var bi661=[0x0c2d62e, 0x1c6da36, 0x2d6ca3d]
	var bc661=["fuego", "las palmas", "wattle"]
	var b661=[bi661,bc661]
	var bi662=[0x0ddcb46]
	var bc662=["confetti"]
	var b662=[bi662,bc662]
	var bi663=[0x0dec371]
	var bc663=["chenin"]
	var b663=[bi663,bc663]
	var bi664=[0x0c9dc87, 0x1dfc281, 0x2cccf82, 0x3decb81, 0x4d8cc9b, 0x5d0c383, 0x6ddc283]
	var bc664=["medium spring bud", "chalky", "deco", "sandwisp", "tahuna sands", "winter hazel", "zombie"]
	var b664=[bi664,bc664]
	var bi665=[0x0c9c0bb, 0x1d5cbb2, 0x2cac7b7, 0x3d2c3a3, 0x4c5c3b0, 0x5cecdb8, 0x6d2d3b3, 0x7dcc6a0, 0x8ded1b7, 0x9d2c6b6, 0xac3d6bd, 0xbdfd7bd, 0xcd4cfb4]
	var bc665=["pale silver", "aths special", "chrome white", "double spanish white", "kangaroo", "moon mist", "orinoco", "raffia", "spanish white", "stark white", "surf crest", "wheatfield", "white rock"]
	var b665=[bi665,bc665]
	var bi666=[0x0dcdcdc, 0x1d6cadd, 0x2c4c3d0, 0x3d3d3d3, 0x4c0c0c0, 0x5dbd7d2, 0x6cfcfc4, 0x7cdc6c5, 0x8d9ddd5, 0x9dcdddd, 0xad9d0c1, 0xbdfd7d2, 0xcd2d1cd, 0xdd6d1c0, 0xec1d8c5, 0xfdcd7d1, 0x10cbd0cf, 0x11d9dfcd, 0x12deddcb, 0x13d1d3cc, 0x14cbcec0, 0x15cbcdcd, 0x16c7cdd8, 0x17dbd9c2, 0x18d5d2d1, 0x19dcd9cd, 0x1ad3dbcb, 0x1bded1c6, 0x1cdddcdb, 0x1dcbc9c0, 0x1edfddd6, 0x1fc2d5c4, 0x20d7cec5, 0x21dbd0ca, 0x22dac0cd, 0x23cdcdcd, 0x24d4cfc5, 0x25dad6cc, 0x26cdd5d5]
	var bc666=["gainsboro", "languid lavender", "lavender gray", "light gray", "silver", "timberwolf", "pastel gray", "alto", "aqua haze", "athens grey", "blanc", "bon jour", "concrete", "ecru white", "edgewater", "gallery", "geyser", "gin", "green white", "grey nurse", "harp", "iron", "link water", "loafer", "mercury", "milk white", "ottoman", "pearl bush", "porcelain", "quill grey", "sea fog", "sea mist", "swirl", "swiss coffee", "twilight", "very light grey", "westar", "white pointer", "zumthor"]
	var b666=[bi666,bc666]
	var bi667=[0x0ccccff, 0x1c5cbe1, 0x2c3cde6, 0x3dcd0ff, 0x4d5c7e8, 0x5d2daed, 0x6d9d9f3, 0x7ddd6e1]
	var bc667=["lavender blue", "light periwinkle", "periwinkle (Crayola)", "pale lavender", "fog", "hawkes blue", "quartz", "titan white"]
	var b667=[bi667,bc667]
	var g66=[b660, b661, b662, b663, b664, b665, b666, b667]
	var bi670=[0x0d0ff14, 0x1cae00d, 0x2dfff00, 0x3ccff00, 0x4ceff00]
	var bc670=["arctic lime", "bitter lemon", "chartreuse (Traditional)", "electric lime", "volt"]
	var b670=[bi670,bc670]
	var bi671=[0x0d1e231]
	var bc671=["pear"]
	var b671=[bi671,bc671]
	var bi672=[0x0d9e650]
	var bc672=["maximum green yellow"]
	var b672=[bi672,bc672]
	var bi673=[]
	var bc673=[]
	var b673=[bi673,bc673]
	var bi674=[0x0c5e384, 0x1d1ef9f, 0x2c6ea80]
	var bc674=["yellow-green (Crayola)", "reef", "sulu"]
	var b674=[bi674,bc674]
	var bi675=[]
	var bc675=[]
	var b675=[bi675,bc675]
	var bi676=[0x0c0e8d5, 0x1d0f0c0, 0x2dbe4dc, 0x3d8f0d2, 0x4dbe0d0, 0x5dbe5d2, 0x6c5e7cd, 0x7dff1d6, 0x8c6eadd, 0x9d7e7d0, 0xad6f0cd, 0xbdae6dd, 0xcdef1dd, 0xddfe6cf]
	var bc676=["aero blue", "tea green", "aqua squeeze", "blue romance", "feta", "frostee", "granny apple", "hint of green", "mint tulip", "peppermint", "snowy mint", "swans down", "tara", "willow brook"]
	var b676=[bi676,bc676]
	var bi677=[0x0dfefea, 0x1d0eae8, 0x2ceefe4, 0x3cae7e2, 0x4cbe8e8, 0x5dff0e2, 0x6c2e6ec, 0x7d1eaea, 0x8d3e5ef, 0x9ddede9, 0xad7eee4, 0xbdee3e3]
	var bc677=["clear day", "foam", "humming bird", "jagged ice", "mabel", "off green", "onahau", "oyster bay", "pattens blue", "tranquil", "white ice", "zircon"]
	var b677=[bi677,bc677]
	var g67=[b670, b671, b672, b673, b674, b675, b676, b677]
	var r6=[g60, g61, g62, g63, g64, g65, g66, g67]
	var bi700=[0x0ff0800, 0x1ff0000, 0x2e8000d]
	var bc700=["candy apple red", "red", "ku crimson"]
	var b700=[bi700,bc700]
	var bi701=[0x0e30022, 0x1e2062c, 0x2f2003c, 0x3ed1c24, 0x4e60026, 0x5ff033e, 0x6ff0038, 0x7ff003f, 0x8ff0028, 0x9fd0e35]
	var bc701=["cadmium red", "medium candy apple red", "red (Munsell)", "red (Pigment)", "spanish red", "american rose", "carmine red", "electric crimson", "ruddy", "tractor red"]
	var b701=[bi701,bc701]
	var bi702=[0x0e30b5d, 0x1e0115f, 0x2ff004f]
	var bc702=["raspberry", "ruby", "folly"]
	var b702=[bi702,bc702]
	var bi703=[0x0e4007c, 0x1e40078, 0x2ff007f, 0x3ff007c]
	var bc703=["mexican pink", "red-purple", "rose", "winter sky"]
	var b703=[bi703,bc703]
	var bi704=[0x0ff1493, 0x1ff0090]
	var bc704=["deep pink", "magenta (Process)"]
	var b704=[bi704,bc704]
	var bi705=[0x0f400a1, 0x1ff1cae]
	var bc705=["fashion fuchsia", "spicy pink"]
	var b705=[bi705,bc705]
	var bi706=[0x0ff1dce, 0x1fc0fc0]
	var bc706=["hot magenta", "shocking pink"]
	var b706=[bi706,bc706]
	var bi707=[0x0ff00ff]
	var bc707=["fuchsia"]
	var b707=[bi707,bc707]
	var g70=[b700, b701, b702, b703, b704, b705, b706, b707]
	var bi710=[0x0ff3800, 0x1fe2712, 0x2ff2400, 0x3ff2800]
	var bc710=["coquelicot", "red (Ryb)", "scarlet", "ferrari red"]
	var b710=[bi710,bc710]
	var bi711=[0x0e03c31, 0x1e23d28, 0x2ed2939, 0x3e12c2c, 0x4e32636, 0x5ef3038, 0x6e62020, 0x7ff3f34]
	var bc711=["cg red", "chili red", "imperial red", "permanent geranium lake", "rose madder", "deep carmine pink", "lust", "red orange"]
	var b711=[bi711,bc711]
	var bi712=[0x0e52b50, 0x1ff355e, 0x2ee204d, 0x3fd3a4a, 0x4ff3855, 0x5ff2052]
	var bc712=["amaranth", "radical red", "red (Crayola)", "red salsa", "sizzling red", "awesome"]
	var b712=[bi712,bc712]
	var bi713=[0x0e63e62, 0x1e3256b]
	var bc713=["paradise pink", "razzmatazz"]
	var b713=[bi713,bc713]
	var bi714=[0x0fd3f92, 0x1ec3b83]
	var bc714=["french fuchsia", "cerise pink"]
	var b714=[bi714,bc714]
	var bi715=[0x0e936a7, 0x1fe28a2]
	var bc715=["frostbite", "persian rose"]
	var b715=[bi715,bc715]
	var bi716=[0x0ff33cc]
	var bc716=["razzle dazzle rose"]
	var b716=[bi716,bc716]
	var bi717=[]
	var bc717=[]
	var b717=[bi717,bc717]
	var g71=[b710, b711, b712, b713, b714, b715, b716, b717]
	var bi720=[0x0ff4f00, 0x1ff5800, 0x2ec5800, 0x3ff4500, 0x4f94d00]
	var bc720=["international orange (Aerospace)", "orange (Pantone)", "persimmon", "red-orange (Color wheel)", "tangelo"]
	var b720=[bi720,bc720]
	var bi721=[0x0e34234, 0x1e25822, 0x2fa5b3d, 0x3ff5a36]
	var bc721=["cinnabar", "flame", "orange soda", "portland orange"]
	var b721=[bi721,bc721]
	var bi722=[0x0e95c4b, 0x1ff5349, 0x2fb4d46, 0x3eb4c42, 0x4ff4040, 0x5fd5e53]
	var bc722=["fire opal", "orange-red (Crayola)", "tart orange", "carmine pink", "coral red", "sunset orange"]
	var b722=[bi722,bc722]
	var bi723=[0x0ff5470, 0x1fe4164, 0x2fd5b78]
	var bc723=["fiery rose", "neon fuchsia", "wild watermelon"]
	var b723=[bi723,bc723]
	var bi724=[0x0f64a8a, 0x1f9429e, 0x2f75394, 0x3e75480, 0x4e25098, 0x5f7468a]
	var bc724=["french rose", "rose bonbon", "violet-red", "dark pink", "raspberry pink", "violet red"]
	var b724=[bi724,bc724]
	var bi725=[0x0ff55a3, 0x1f653a6, 0x2ff43a4]
	var bc725=["brilliant rose", "magenta (Crayola)", "wild strawberry"]
	var b725=[bi725,bc725]
	var bi726=[0x0fe4eda, 0x1e35bd8]
	var bc726=["purple pizzazz", "free speech magenta"]
	var b726=[bi726,bc726]
	var bi727=[]
	var bc727=[]
	var b727=[bi727,bc727]
	var g72=[b720, b721, b722, b723, b724, b725, b726, b727]
	var bi730=[0x0ff7e00, 0x1ff7a00, 0x2ff7f00, 0x3ff681f, 0x4ff7518, 0x5ff7800, 0x6ff6700, 0x7e86100]
	var bc730=["amber (Sae/ece)", "heat wave", "orange", "orange-red", "pumpkin", "safety orange", "safety orange (Blaze orange)", "spanish orange"]
	var b730=[bi730,bc730]
	var bi731=[0x0ff7538, 0x1e9692c, 0x2e57f3d]
	var bc731=["orange (Crayola)", "deep carrot orange", "pizazz"]
	var b731=[bi731,bc731]
	var bi732=[0x0fe6f5e, 0x1e97451, 0x2ff7f50, 0x3f37a48, 0x4ff6e4a, 0x5e2725b, 0x6ff6347, 0x7e1634f, 0x8e27945]
	var bc732=["bittersweet", "burnt sienna", "coral", "mandarin", "outrageous orange", "terra cotta", "tomato", "flamingo", "jaffa"]
	var b732=[bi732,bc732]
	var bi733=[0x0fb607f, 0x1e4717a, 0x2e66771, 0x3ff6961, 0x4e56d75, 0x5e77b75]
	var bc733=["brink pink", "candy pink", "light carmine pink", "pastel red", "froly", "geraldine"]
	var b733=[bi733,bc733]
	var bi734=[0x0fd6c9e, 0x1ed7a9b, 0x2fc6c85, 0x3f56991, 0x4e36f8a]
	var bc734=["french pink", "pale dogwood", "ultra red", "light crimson", "deep blush"]
	var b734=[bi734,bc734]
	var bi735=[0x0f56fa1, 0x1ff69b4, 0x2f77fbe]
	var bc735=["cyclamen", "hot pink", "persian pink"]
	var b735=[bi735,bc735]
	var bi736=[0x0ff66cc, 0x1ff6ec7]
	var bc736=["rose pink", "neon pink"]
	var b736=[bi736,bc736]
	var bi737=[0x0fc74fd, 0x1ff6fff, 0x2ff77ff]
	var bc737=["pink flamingo", "shocking pink (Crayola)", "fuchsia pink"]
	var b737=[bi737,bc737]
	var g73=[b730, b731, b732, b733, b734, b735, b736, b737]
	var bi740=[0x0ff8c00, 0x1e48400, 0x2e49b0f, 0x3ff9f00, 0x4f28500, 0x5ff9505]
	var bc740=["dark orange", "fulvous", "gamboge", "orange peel", "tangerine", "yellow orange (Color wheel)"]
	var b740=[bi740,bc740]
	var bi741=[0x0ed872d, 0x1ed9121, 0x2ff9933, 0x3f58025, 0x4e08d3c, 0x5e98c3a, 0x6ef8e38, 0x7e2813b, 0x8e5823a, 0x9f49f35]
	var bc741=["cadmium orange", "carrot orange", "deep saffron", "princeton orange", "tiger eye", "california", "sun", "tree poppy", "west side", "yellow sea"]
	var b741=[bi741,bc741]
	var bi742=[0x0ff8243, 0x1f38653, 0x2e09842, 0x3ea8645, 0x4ef9548, 0x5fa9d49]
	var bc742=["mango tango", "crusta", "fire bush", "flamenco", "sea buckthorn", "sunshade"]
	var b742=[bi742,bc742]
	var bi743=[0x0ff9966, 0x1f88379, 0x2e9967a, 0x3e58e73, 0x4fa8072]
	var bc743=["atomic tangerine", "congo pink", "dark salmon", "middle red", "salmon"]
	var b743=[bi743,bc743]
	var bi744=[0x0f08080, 0x1ff9999, 0x2e18e96, 0x3e68095, 0x4ff9889, 0x5ee918d, 0x6e79e88, 0x7f1919a]
	var bc744=["light coral", "light salmon pink", "ruddy pink", "carissma", "mona lisa", "sweet pink", "tonys pink", "wewak"]
	var b744=[bi744,bc744]
	var bi745=[0x0f19cbb, 0x1ff91af, 0x2e68fac, 0x3ef98aa, 0x4f78fa7, 0x5ff91a4, 0x6fc89ac, 0x7f38fa9, 0x8fc8eac, 0x9ef95ae, 0xae899be]
	var bc745=["amaranth pink", "baker-miller pink", "charm pink", "mauvelous", "pink sherbet", "salmon pink", "tickle me pink", "vanilla ice", "flamingo pink", "illusion", "shocking"]
	var b745=[bi745,bc745]
	var bi746=[0x0e79fc4, 0x1e29cd2, 0x2f49ac2, 0x3f883c2]
	var bc746=["kobi", "orchid (Crayola)", "pastel magenta", "tea rose"]
	var b746=[bi746,bc746]
	var bi747=[0x0ee82ee, 0x1f984ef, 0x2f984e5]
	var bc747=["violet (Web)", "light fuchsia pink", "pale magenta"]
	var b747=[bi747,bc747]
	var g74=[b740, b741, b742, b743, b744, b745, b746, b747]
	var bi750=[0x0ffbf00, 0x1ffaa1d, 0x2ffb200, 0x3ffa700, 0x4fdbe02, 0x5ffa500, 0x6f5bd1f, 0x7ffba00, 0x8ffa812, 0x9ffb300]
	var bc750=["amber", "bright yellow (Crayola)", "chinese yellow", "chrome yellow", "mango", "orange (Web)", "orange-yellow", "selective yellow", "dark tangerine", "ucla gold"]
	var b750=[bi750,bc750]
	var bi751=[0x0eaa221, 0x1e5b73b, 0x2e1ad21, 0x3ecbd2c, 0x4e2b227, 0x5f7a233, 0x6ffb437, 0x7e3ac3d]
	var bc751=["marigold", "meat brown", "urobilin", "bright sun", "gold tips", "lightning yellow", "supernova", "tulip tree"]
	var b751=[bi751,bc751]
	var bi752=[0x0e1a95f, 0x1e3a857, 0x2f2ba49, 0x3ffa343, 0x4e3ab57, 0x5ffae42, 0x6ffb347, 0x7f0b253, 0x8feb552, 0x9fdae45, 0xaeab852, 0xbfcb057]
	var bc752=["earth yellow", "indian yellow", "maximum yellow red", "neon carrot", "sunray", "yellow orange", "pastel orange", "casablanca", "koromiko", "my sin", "ronchi", "texas rose"]
	var b752=[bi752,bc752]
	var bi753=[0x0e5aa70, 0x1ffa07a, 0x2f8b878, 0x3ecb176, 0x4fbab60, 0x5f4a460, 0x6fda470, 0x7f6ae78]
	var bc753=["fawn", "light salmon", "mellow apricot", "middle yellow red", "rajah", "sandy brown", "hit pink", "tacao"]
	var b753=[bi753,bc753]
	var bi754=[0x0e6be8a, 0x1ffbd88, 0x2ffa089, 0x3e9ba81, 0x4e3b982, 0x5f5b799, 0x6e2af80, 0x7feab9a, 0x8eeb39e]
	var bc754=["gold (Crayola)", "macaroni and cheese", "vivid tangerine", "corvette", "maize", "mandys pink", "manhattan", "rose bud", "wax flower"]
	var b754=[bi754,bc754]
	var bi755=[0x0febaad, 0x1f7bfbe, 0x2ebb9b3, 0x3e0b8b1, 0x4e6b2a6, 0x5f8afa9]
	var bc755=["melon", "spanish pink", "beauty bush", "cavern pink", "shilo", "sundown"]
	var b755=[bi755,bc755]
	var bi756=[0x0efbbcc, 0x1ffa6c9, 0x2ffb7c5, 0x3ffbcd9, 0x4ffb6c1, 0x5f6adc6, 0x6f2bdcd, 0x7fbaed2, 0x8e7accf, 0x9edb8c7, 0xaf5b2c5, 0xbe0b7c2]
	var bc756=["cameo pink", "carnation pink", "cherry blossom pink", "cotton candy", "light pink", "nadeshiko pink", "orchid pink", "lavender pink", "pink pearl", "chantilly", "cupid", "melanie"]
	var b756=[bi756,bc756]
	var bi757=[0x0e0b0ff, 0x1f4bbff, 0x2fba0e3]
	var bc757=["mauve", "brilliant lavender", "lavender rose"]
	var b757=[bi757,bc757]
	var g75=[b750, b751, b752, b753, b754, b755, b756, b757]
	var bi760=[0x0e4d00a, 0x1ffd300, 0x2ffd700, 0x3fcc200, 0x4ffdf00, 0x5f4ca16, 0x6ffc40c, 0x7eed202, 0x8ffd800, 0x9ffdb00, 0xaefcc00, 0xbfedf00, 0xcffcc00]
	var bc760=["citrine", "cyber yellow", "gold (Web) (golden)", "golden poppy", "golden yellow", "jonquil", "mikado yellow", "safety yellow", "school bus yellow", "sizzling sunrise", "yellow (Munsell)", "yellow (Pantone)", "tangerine yellow"]
	var b760=[bi760,bc760]
	var bi761=[0x0f4c430, 0x1ffcc33, 0x2eecc24, 0x3f1cc2b, 0x4ebde31, 0x5f0c420, 0x6e3dd39, 0x7f5cc23]
	var bc761=["saffron", "sunglow", "broom", "golden dream", "golden fizz", "moon yellow", "starship", "turbo"]
	var b761=[bi761,bc761]
	var bi762=[0x0f2c649, 0x1ffdb58, 0x2fada5e, 0x3ecd540, 0x4eec051, 0x5f5d752, 0x6eacc4a, 0x7ffc152, 0x8f9d054, 0x9e4db55, 0xaf0d555]
	var bc762=["maize (Crayola)", "mustard", "naples yellow", "sandstorm", "cream can", "energy yellow", "festival", "golden tainoi", "kournikova", "manz", "portica"]
	var b762=[bi762,bc762]
	var bi763=[0x0e9d66b, 0x1f8de7e, 0x2f8d568, 0x3e4d96f, 0x4ffc87c, 0x5ffc878, 0x6f9d77e, 0x7eace6a, 0x8ffcd73, 0x9ffd67b, 0xae3d474]
	var bc763=["arylide yellow", "jasmine", "orange-yellow (Crayola)", "straw", "topaz", "chardonnay", "golden glow", "golden sand", "grandis", "salomie", "wild rice"]
	var b763=[bi763,bc763]
	var bi764=[0x0f0dc82, 0x1eedc82, 0x2ffd59a, 0x3e8cd9a, 0x4f5cd82, 0x5e4cf99, 0x6eedd82, 0x7ebc881, 0x8e4c385, 0x9ebc79e, 0xaffcc99, 0xbe4de8e, 0xcffc69e, 0xdf1d79e]
	var bc764=["buff", "flax", "caramel", "chamois", "cherokee", "double colonial white", "light goldenrod", "marzipan", "new orleans", "new tan", "peach-orange", "primrose", "romantic", "splash"]
	var b764=[bi764,bc764]
	var bi765=[0x0fbceb1, 0x1fad6a5, 0x2edc9af, 0x3efdfbb, 0x4fed8b1, 0x5ffdead, 0x6ffcba4, 0x7ffdab9, 0x8f5deb3, 0x9fdd5b1, 0xafadfad, 0xbedd5a6, 0xce9d7ab, 0xde1dabb, 0xeedd2a4, 0xfe9dcbe, 0x10ffd7a0, 0x11ebd4ae, 0x12e8d4a2, 0x13e0d8a7, 0x14eec7a2, 0x15f3d7b6, 0x16fedbb7, 0x17e1d5a6, 0x18e9d9a9, 0x19f4d0a4, 0x1af9d3be, 0x1bf2cdbb, 0x1cffc5bb, 0x1debc2af]
	var bc765=["apricot", "deep champagne", "desert sand", "dutch white", "light orange", "navajo white", "peach (Crayola)", "peach puff", "wheat", "light apricot", "peach yellow", "astra", "beeswax", "coconut cream", "dairy cream", "double pearl lusta", "frangipani", "givry", "hampton", "mint julep", "negroni", "pink lady", "sandy beach", "sapling", "sidecar", "tequila", "tuft bush", "watusi", "your pink", "zinnwaldite"]
	var b765=[bi765,bc765]
	var bi766=[0x0efdecd, 0x1f4c2c2, 0x2e3dac9, 0x3f1ddcf, 0x4fadadd, 0x5ffc0cb, 0x6e8ccd7, 0x7ffddca, 0x8ffc1cc, 0x9e1dacb, 0xaf9c0c4, 0xbe7d2c8, 0xce0ded7, 0xdf5d7dc, 0xefbd7cc, 0xff5d0c9, 0x10fcd5cf, 0x11e6d6cd, 0x12e5cac0, 0x13e6d8d4, 0x14e6dbc7, 0x15fedcc1, 0x16e1dbd0, 0x17efd6da, 0x18fcdbd2, 0x19efdcd4, 0x1ae2cdd5, 0x1bf6deda, 0x1cf5dec4, 0x1deedfde, 0x1eeadac2, 0x1fe2ddc7, 0x20e3dfd9, 0x21fdd7d8]
	var bc766=["almond", "baby pink", "bone", "champagne pink", "pale pink", "pink", "queen pink", "unbleached silk", "bubble gum", "albescent white", "azalea", "bizarre", "black haze", "cherub", "cinderella", "coral candy", "cosmos", "dawn pink", "dust storm", "ebb", "half spanish white", "karry", "merino", "pale rose", "pippin", "pot pourri", "prim", "remy", "sazerac", "soft peach", "solitaire", "travertine", "vista white", "we peep"]
	var b766=[bi766,bc766]
	var bi767=[0x0ffdae9, 0x1fddde6, 0x2ffddf4, 0x3fbcce7, 0x4e3d6e9, 0x5f8dbe0, 0x6fdd7e4, 0x7e6dfe7, 0x8e4d7e5]
	var bc767=["mimi pink", "piggy pink", "pink lace", "classic rose", "blue chalk", "carousel pink", "pig pink", "selago", "snuff"]
	var b767=[bi767,bc767]
	var g76=[b760, b761, b762, b763, b764, b765, b766, b767]
	var bi770=[0x0fdee00, 0x1fff600, 0x2ffef00, 0x3fff700, 0x4fdff00, 0x5ffeb00, 0x6eee600, 0x7eeed09, 0x8ffff00, 0x9e6e200]
	var bc770=["aureolin", "cadmium yellow", "canary yellow", "lemon", "lemon glacier", "middle yellow", "titanium yellow", "xanthic", "yellow", "peridot"]
	var b770=[bi770,bc770]
	var bi771=[0x0fafa37, 0x1fefe33, 0x2ffe135, 0x3ffff31, 0x4f0e130, 0x5fde336]
	var bc771=["maximum yellow", "yellow (Ryb)", "banana yellow", "daffodil", "dandelion", "gorse"]
	var b771=[bi771,bc771]
	var bi772=[0x0fbec5d, 0x1fcf75e, 0x2fff44f, 0x3f5e050, 0x4fbeb50]
	var bc772=["corn", "icterine", "lemon yellow", "minion yellow", "paris daisy"]
	var b772=[bi772,bc772]
	var bi773=[0x0ffff66, 0x1f5f171, 0x2e8ed69, 0x3f9e176, 0x4ece67e, 0x5fbf073]
	var bc773=["laser lemon", "dolly", "honeysuckle", "sweet corn", "texas", "witch haze"]
	var b773=[bi773,bc773]
	var bi774=[0x0ffff99, 0x1f0e891, 0x2e8f48c, 0x3f0e68c, 0x4ffff9f, 0x5e3f988, 0x6fce883, 0x7f7e98e, 0x8fdfd96, 0x9ffe39b, 0xafbeb9b, 0xbf6f493, 0xcf9f59f, 0xdf8ea97, 0xef4f09b, 0xff0f590, 0x10f9e496]
	var bc774=["canary", "green-yellow (Crayola)", "key lime", "khaki (X11) (light khaki)", "lemon yellow (Crayola)", "mindaro", "yellow (Crayola)", "flavescent", "pastel yellow", "cream brulee", "drover", "milan", "pale prim", "picasso", "portafino", "tidal", "vis vis"]
	var b774=[bi774,bc774]
	var bi775=[0x0fae7b5, 0x1faf0be, 0x2f6eabe, 0x3f3e5ab, 0x4ecebbd, 0x5ffe5b4, 0x6eee8aa, 0x7eff8aa, 0x8f7e5b7, 0x9f6e0a4, 0xafee0a5, 0xbf0f5bb, 0xcf2e5bf, 0xdeaeaae, 0xeffe4b5, 0xff8f6a8, 0x10e3e5b1]
	var bc775=["banana mania", "blond", "lemon meringue", "medium champagne", "pale spring bud", "peach", "pale goldenrod", "australian mint", "barley white", "buttermilk", "cape honey", "chiffon", "half colonial white", "medium goldenrod", "moccasin", "shalimar", "tusk"]
	var b775=[bi775,bc775]
	var bi776=[0x0faebd7, 0x1f5f5dc, 0x2ffe4c4, 0x3ffebcd, 0x4f7e7ce, 0x5fff8dc, 0x6fffdd0, 0x7f0ead6, 0x8fffacd, 0x9fafad2, 0xaf2e8d7, 0xbe9ffdb, 0xcffefd5, 0xdf1e9d2, 0xeeae0c8, 0xff7f0db, 0x10e5e6df, 0x11e5e4db, 0x12ebe1ce, 0x13f8ebdd, 0x14fae6df, 0x15f1ebda, 0x16ebe5d5, 0x17f5f9cb, 0x18e0e4dc, 0x19f8eadf, 0x1af9f7de, 0x1bfbf3d3, 0x1cf8f3c4, 0x1df5f4c1, 0x1ef9e4c6, 0x1ffbf2db, 0x20f9e4c5, 0x21f3e5dc, 0x22f2e6dd, 0x23fdefdb, 0x24e1e4c5, 0x25f8eaca, 0x26ede7c8, 0x27fbf0d6, 0x28f1ead7, 0x29f6f5d7, 0x2af8eddb, 0x2bf3e5c0, 0x2cf5f5cc, 0x2df5f3ce, 0x2ee9e6dc, 0x2ffcedc5, 0x30faf3dc, 0x31eae3cd, 0x32f1ebd9, 0x33eae4dc, 0x34f5e6c4, 0x35f8f6df, 0x36f6e3da, 0x37f2eddd, 0x38ebe2d2, 0x39efecde, 0x3aeff5d1, 0x3bf1edd4, 0x3ceee7c8, 0x3dfce9d7, 0x3ee3e3dc, 0x3feaf7c9, 0x40ece5da, 0x41f1f1c6, 0x42e9e1d9, 0x43eeefdf, 0x44fdefd3, 0x45e4e2dc, 0x46eee7dc, 0x47f8f6d8, 0x48e7e4de]
	var bc776=["antique white", "beige", "bisque", "blanched almond", "champagne", "cornsilk", "cream", "eggshell", "lemon chiffon", "light goldenrod yellow", "magnolia", "nyanza", "papaya whip", "parchment", "pearl", "apricot white", "black squeeze", "black white", "bleach white", "bridal heath", "bridesmaid", "buttery white", "cararra", "carla", "catskill white", "chardon", "chilean heath", "china ivory", "corn field", "cumulus", "derby", "early dawn", "egg sour", "fair pink", "fantasy", "forget me not", "frost", "gin fizz", "half and half", "half dutch white", "half pearl lusta", "hint of yellow", "island spice", "milk punch", "mimosa", "moon glow", "narvik", "oasis", "off yellow", "orange white", "orchid white", "pampas", "pipi", "promenade", "provincial pink", "quarter pearl lusta", "quarter spanish white", "rice cake", "rice flower", "rum swizzle", "scotch mist", "serenade", "snow drift", "snow flurry", "soapstone", "spring sun", "spring wood", "sugar cane", "varden", "wan white", "white linen", "white nectar", "wild sand"]
	var b776=[bi776,bc776]
	var bi777=[0x0edeae0, 0x1f0f8ff, 0x2f0ffff, 0x3fefefa, 0x4fff8e7, 0x5f5f5f5, 0x6fffaf0, 0x7f8f8ff, 0x8f0fff0, 0x9f4f0ec, 0xafffff0, 0xbe6e6fa, 0xcfff0f5, 0xde0ffff, 0xeffffe0, 0xffaf0e6, 0x10f5fffa, 0x11ffe4e1, 0x12fdf5e6, 0x13fae6fa, 0x14e5e4e2, 0x15fff5ee, 0x16fffafa, 0x17ffffff, 0x18f2f3f4, 0x19e7feff, 0x1ae6e8fa, 0x1bf5e6ea, 0x1ce8f3e8, 0x1df4efe0, 0x1efde9e0, 0x1fede7e0, 0x20e7f2e9, 0x21e2f2e4, 0x22f5efeb, 0x23e9eeeb, 0x24ebf7e4, 0x25e5f2e7, 0x26f4f0e6, 0x27fbeee8, 0x28eef3e5, 0x29f4eae4, 0x2ae9ecf1, 0x2bf8e4e3, 0x2cf4f6ec, 0x2defe6e6, 0x2ee7e5e8, 0x2ff9e8e2]
	var bc777=["alabaster", "alice blue", "azure (X11/web color)", "baby powder", "cosmic latte", "cultured", "floral white", "ghost white", "honeydew", "isabelline", "ivory", "lavender (Web)", "lavender blush", "light cyan", "light yellow", "linen", "mint cream", "misty rose", "old lace", "pale purple (Pantone)", "platinum", "seashell", "snow", "white", "anti-flash white", "bubbles", "glitter", "amour", "aqua spring", "bianca", "chablis", "desert storm", "dew", "frosted mint", "hint of red", "lily white", "panache", "polar", "romance", "rose white", "saltpan", "sauvignon", "solitude", "tutu", "twilight blue", "whisper", "white lilac", "wisp pink"]
	var b777=[bi777,bc777]
	var g77=[b770, b771, b772, b773, b774, b775, b776, b777]
	var r7=[g70, g71, g72, g73, g74, g75, g76, g77]
	all=[r0, r1, r2, r3, r4, r5, r6, r7]
func colorsector(r,g,b) -> Array:
	return all[r][g][b]
func colorname(r,g,b,n)->String:
	return all[r][g][b][1][n]


func get_dist_sum() -> float:
	for x in range(8):
		for y in range(8):
			for z in range(8):
				individual.append_array(all[x][y][z][0])
				#for c in all[x][y][z][0]:
				#	individual.append(c)
				#	individual.append_array()
				#	
	var total=0.0
	for a in individual:
		var minn=30949520304.0
		var _a=InfoToVec3(a)
		for b in individual:
			if a==b:
				continue
			minn=min(minn,_a.distance_to(InfoToVec3(b)))
		total+=minn#pow(minn,3)
	return total/len(individual)


func InfoToCol(i:int)->Color:
	return Color8(i>>16&0xff,i>>8&0xff,i&0xff)
func InfoToName(info:int)->String: #0x+r8+g8+b8+n ->[b,r,g,n]
# warning-ignore:integer_division
# warning-ignore:integer_division
# warning-ignore:integer_division
	return colorname(((info>>16)&0xff)/32,((info>>8)&0xff)/32,(info&0xff)/32,info>>24)
func InfoToHex(i:int)->String:
	return IntToHexR(i&0xffffff)
func InfoToVec3(i:int)->Vector3:
	return Vector3(i>>16&0xff,i>>8&0xff,i&0xff)

#func FancyLum(c:Color)->float:
#	var R:float=c.r8/255.0
#	var G:float=c.g8/255.0
#	var B:float=c.b8/255.0
#	R=R/12.92 if R<=0.03928 else pow((R+0.055)/1.055,2.4)
#	G=G/12.92 if G<=0.03928 else pow((G+0.055)/1.055,2.4)
#	B=B/12.92 if B<=0.03928 else pow((B+0.055)/1.055,2.4)
#	return 0.2126 * R + 0.7152 * G + 0.0722 * B

class colsort:
	static func FancyLum(c:Color)->float:
		var R:float=c.r8/255.0
		var G:float=c.g8/255.0
		var B:float=c.b8/255.0
		R=R/12.92 if R<=0.04045 else pow((R+0.055)/1.055,2.4)
		G=G/12.92 if G<=0.04045 else pow((G+0.055)/1.055,2.4)
		B=B/12.92 if B<=0.04045 else pow((B+0.055)/1.055,2.4)
		var Y=0.2126* R + 0.7152*G + 0.0722*B
		return (Y*903.3 if Y<=0.008856 else pow(Y,1.0/3.0)*116-16)/100
	static func sort_lum(a:Color,b:Color)->bool:
		#if FancyLum(a)<FancyLum(b):
		#return false
		if FancyLum(a)<FancyLum(b):
			return true
		return false
	static func sort_red(a:Color,b:Color)->bool:
		if a.r8<b.r8:
			return true
		return false
	static func sort_dumb(a:Color,b:Color)->bool:
		if (a.r8+a.g8+a.b8)<(b.r8+b.g8+b.b8):
			return true
		return false
#A=65,Z=90,a=97,z=122,[=91,]=93
#find (,n) = n+
#1234.substr(1,2)=23
#1234123.substr(find(2),findnext(2)-find(2)) [1,5-1] = 2341
func editfile(path:String)->void:
	#						Reading file
	var file:=File.new()
# warning-ignore:return_value_discarded
	file.open(path,1)
	var coli=[]
	var cols=[]
	var togg=true
	var regex:=RegEx.new()
# warning-ignore:return_value_discarded
	regex.compile("[#\"][A-Fa-f0-9]{6}")
	while !file.eof_reached():
		var line:=file.get_line()
		var start:int=ord(line[0])
#		if debug>5986:
#			pass
		if start==93:
			togg=!togg
		elif !togg:
			if start<=90 and start>=65 or start<=122 and start>=97:
				#var div=line.find("#")
				var div=regex.search(line).get_start()
				coli.append(line.substr(div+1,6).to_lower())
				cols.append(line.substr(0,div))
			elif start==91: #
				coli.append(line.substr(2,6).to_lower())
				cols.append(line.substr(12,line.find("\"",12)-12))
		else:
			cols.append(line)
			line=file.get_line()
			coli.append(line.substr(1,6).to_lower())
		if cols.size()!=0:
			cols[cols.size()-1]=cols[cols.size()-1].dedent().to_lower().replace("'","").rstrip(" 	")
	file.close()
	#					Making array
	var arr=[]
	for r in 8:
		arr.append([])
		for g in 8:
			arr[r].append([])
			for b in 8:
				arr[r][g].append([[],[]])
	#						Deleting pos duplicates + filling array
	var lim=cols.size()
	var n1=0
	while n1 < lim:
		while true:
			var check=coli.find(coli[n1],n1+1)
			if check==-1:
				break
			else:
				coli.remove(check)
				cols.remove(check)
				lim-=1
		while true:
			var check = cols.find(cols[n1],n1+1)
			if check==-1:
				break
			else:
				coli.remove(check)
				cols.remove(check)
				lim-=1
		var h = coli[n1]
		var pos=[("0x"+h[0]+h[1]).hex_to_int(),("0x"+h[2]+h[3]).hex_to_int(),("0x"+h[4]+h[5]).hex_to_int()]
		var _n=int(arr[pos[0]/32][pos[1]/32][pos[2]/32][0].size())
		coli[n1]=((_n<<24)|(pos[0]<<16)|(pos[1]<<8)|(pos[2]))
		arr[pos[0]/32][pos[1]/32][pos[2]/32][0].append(coli[n1])
		arr[pos[0]/32][pos[1]/32][pos[2]/32][1].append(cols[n1])
		n1+=1
	#				Duplicates
	var duplicates:=[]
	var uniqdups:=[]
	for n in cols.size():
		var check=n
		var bads=[]
		if !cols[n] in uniqdups and cols.find(cols[n],n+1)!=-1:
			bads.append(coli[n])
			uniqdups.append(cols[n])
		else:
			continue
		while true:
			check=cols.find(cols[n],check+1)
			if check==-1:
				break
			else:
				bads.append(coli[check])
		duplicates.append(bads)
	#					Writing
# warning-ignore:return_value_discarded
	file.open(path,2)
	for r in 8:
		for g in 8:
			for b in 8:
				#Color8(255,255,255)
				#0x+n+r8+g8+b8
				var num:String=str(r)+str(g)+str(b)
				var _info=[]
				var _cols=[]
				for n in arr[r][g][b][0].size():
					var col=arr[r][g][b][1][n]
					var info=arr[r][g][b][0][n]
					info=IntToHex(info,HexLength(n)+6)
					_info.append(info)
					col.capitalize()
					if col.find("(")!=-1:
						var f=col.find("(")
						col[f+1]=col[f+1].to_upper()
					_cols.append("\""+col+"\"")
				file.store_line("var bi"+num+"="+str(_info))
				file.store_line("var bc"+num+"="+str(_cols))
				file.store_line("var b"+num+"=[bi"+num+",bc"+num+"]")
			var bs=[]
			for n in 8:
				bs.append("b"+str(r)+str(g)+str(n))
			file.store_line("var g"+str(r)+str(g)+"="+str(bs))
		var gs=[]
		for n in 8:
			gs.append("g"+str(r)+str(n))
		file.store_line("var r"+str(r)+"="+str(gs))
	var rs=[]
	for n in 8:
		rs.append("r"+str(n))
	file.store_line("all"+"="+str(rs))
	#							Writing duplicates
	for n in duplicates.size():
		for _n in duplicates[n].size():
			duplicates[n][_n]=IntToHex(duplicates[n][_n],HexLength(duplicates[n][_n]))
		file.store_line(str(duplicates[n]))
		file.store_line(uniqdups[n])
	#func editcols()->void: #  				Code below is for old system, not needed any more
#	var arri=[]
#	var arrc=[]
#	var done=[]
#	for b in 8:
#		for r in 8:
#			for g in 8:
#				for n in all[b][r][g][0].size():
#					arri.append(all[b][r][g][0][n])
#					arrc.append(all[b][r][g][1][n].to_upper())
#	for n in arri.size():
#		var _n=arrc.find(arrc[n],n+1)
#		if !arrc[n] in done and _n!=-1:
#			print(str(InfoToArr(arri[n]))+arrc[n])
#			print(str(InfoToArr(arri[_n]))+arrc[_n])
#			done.append(arrc[n])
#			while _n!=-1:
#				_n=arrc.find(arrc[_n],_n+1)
#				print(str(InfoToArr(arri[_n]))+arrc[_n])
#
		
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
#	return
	
	file.close()


func ___COLOR_FUNCTIONS___():
	return true


func HexToColor(C:String) ->Color:
	#uhhh, i guess it does hex to color?
	#node: USELESS due to stuff being an integer
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


func ClosestInfoSearch(r:int,g:int,b:int)->int:
	return SectorChecker(r,g,b)

#contains old code
func InfoClosestSearch(r:int,g:int,b:int)->int:#0-255
	
	#fun seeing so much of old stuff being commented away yes?
	
#	assert(r>=0&&g>=0&&b>=0)
#	return "0"
#	r=r&0xff
#	g=g&0xff
#	b=b&0xff
#	var pos := Vector3(r,g,b)
#	var closest:float = 16384.0
## warning-ignore:integer_division
## warning-ignore:integer_division
## warning-ignore:integer_division
#	var center := Vector3(r/32,g/32,b/32)
#	var sectors :=Array()
#	var size:int=0
#	var delete:int=-1
#	var closestcol:String=""
#	var end:bool=false
#	#note - does not support equal distance points, a single one will get picked
#	#specifically one that appeared first/one in a sector that comes first
#	var dist:float
#	for n in 5:
#		sectors=[]#ColorSearchBoxMaker(center,[r,g,b],size,delete)
#		#sectors.sort_custom(sort,"sort_dist")
#		for sector in sectors:
#			if true:#closest>sector[1]:
#				for color in []:#color(sector[0][0],sector[0][1],sector[0][2]):
#					dist= pos.distance_squared_to(ColHexToPos(color))
#					if closest>dist:
#						closestcol=color
#						closest=dist
#			else:
#				end=true
#				break
#		if end:
#			break
#		size+=1
#		delete=size-1
#	return closestcol
	return SectorChecker(r,g,b)


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
func _HexToInt (hx):
	
	var hex=str(hx).to_upper()
	var final = 0
	for i in hex.length():
		var ch=ord(hex[hex.length()-1-i])
		
		#48-58 = 0-9
		#65-70 = A-F = 10-15
		final+=((ch-48)*int(ch<58)+(ch-55)*int(ch>64))*pow(16,i)
	return final

#bad approach apparently
func WhileHighestBit(i:int)->int:
	var result:int=int(min(i,1))
	while(!i>>1==0):
		i=i>>1
		result+=1
	return result


func HexLength(i:int)->int:
	var leng:=HighestBit(i)
	return int(max(leng-1,0)/4)+1

func HighestBit(i:int)->int:
	if i==0:
		return 0
	#var flot:float=log(i)/log(2)
	#var sanity :bool=is_equal_approx(flot,round(flot)) #is gone
	#return (int(round(flot))+1)*int(sanity)+(int(flot)+1)*int(!sanity)
	return int(log(i)/log(2))+1

func IntToHex(i:int,minleng:int=0)->String:
	return "0x%0*x"%[minleng,i]
#Readable
func IntToHexR(i:int,minleng:int=0)->String:
	return ("#%0*x"%[minleng,i]).to_upper()


#bad 
#https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_format_string.html
#func IntToHex(i:int,minleng:int=0)->String:
#	var hex:="0x"
#	var leng:=HighestBit(i)
## warning-ignore:integer_division
#	for _i in range(max(int(max(leng-1,0)/4)+1,minleng),0,-1): # cus intended
#		var n:=(i>>((_i-1)*4))&0xf
#		hex+=char(n+48+39*int(n>9))
#	return hex



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

#c1-c3 are center vector3
#p1-p3 are color position vector 3
#p=0:255
func SectorChecker(p1:int,p2:int,p3:int)->int:#p1-p3 are point coords, idk why its not a vec3
	var dist:=0xffffff
	var info:int=0
	var c1=int(p1/32)#c1-c3 are sector coords
	var c2=int(p2/32)
	var c3=int(p3/32)
	for size in 6: #6 means diameter of 9^3=729 sectors (theres no way theres nothing inside)
		var delete:int=size-1
		for r in range(int(max(c1-size,0)),int(min(c1+size,7))+1):
			for g in range(int(max(c2-size,0)),int(min(c2+size,7))+1):
				#if r and g are in delete area
				var skip:=int(r<=c1+delete and r>=c1-delete and g<=c2+delete and g>=c2-delete)
				#delete adjust is what "delete" would delete from normal range()
				#it also adjusts for the border, not deleting what is limited by border
				var deladjust:int=(delete*2+1+int(min(c3-delete,0))+7-int(max(c3+delete,7)))*skip
				for b in range(int(max(c3-size,0)),int(min(c3+size,7))-deladjust+1):
					#skips b over delete zone
					b+=int(b>=c3-delete)*skip*(delete*2+1+int(min(c3-delete,0))+7-int(max(c3+delete,7)))
					#if array is further than dist, skip
					var boxdist:=DistToBox(p1,p2,p3,r*32,g*32,b*32,r*32+32,g*32+32,b*32+32)
					
					for n in all[r][g][b][0].size()*int(!boxdist>dist):
						#if point closer, update dist and info
						var point:int=all[r][g][b][0][n]
						var tempdist:int=DistFromInfo(p1,p2,p3,point)
						info=info*int(dist<=tempdist)+point*int(dist>tempdist)
						dist=int(min(dist,tempdist))			#when they were equal info would become 0
		if pow(DistFromInside(p1,p2,p3,c1,c2,c3,size),2)>dist:
			break
	return info

#where 1-3 are part of vector3 but int
#p = position, s = start of box , e = end of box
func DistToBox(p1:int,p2:int,p3:int,s1:int,s2:int,s3:int,e1:int,e2:int,e3:int)->int:
	#max(max(start-pos,pos-end),0) repeated 3 times, once per axis
	var result:int=int(pow(int(max(max(s1-p1,p1-e1),0)),2))+int(pow(int(max(max(s2-p2,p2-e2),0)),2))+int(pow(int(max(max(s3-p3,p3-e3),0)),2))
	return result

#gets distance from point to the closest valid sector (outside border dont count)
#WARNING: IS NOT SQUARED
func DistFromInside(p1:int,p2:int,p3:int,c1:int,c2:int,c3:int,size:int)->int:
	#minminminminmin moment
	#min(p1%32+0xffffff*int(c1-size<=0),31-p1%32+0xffffff*int(c1+size>=7)) x3 times and then +size*32
	p1%=32 
	p2%=32
	p3%=32 #it gets distance to the nearest border, but ignores borders that are beyond/adjacent to sector limit
	var result:int=int(
		min(min(min(min(min(p1+0xffffff*int(c1-size<=0),31-p1+0xffffff*int(c1+size>=7)),p2+0xffffff*int(c2-size<=0)),31-p2+0xffffff*int(c2+size>=7)),p3+0xffffff*int(c3-size<=0)),31-p3+0xffffff*int(c3+size>=7)))+size*32
	return result

#normal dist to but only ints, presumably better than vector3 because no memory allocation
func DistTo(p1:int,p2:int,p3:int,t1:int,t2:int,t3:int)->int:
	return int(pow(p1-t1,2))+int(pow(p2-t2,2))+int(pow(p3-t3,2))

#works with color info
func DistFromInfo(p1:int,p2:int,p3:int,info:int)->int: 
	return DistTo(p1,p2,p3,(info>>16)&0xff,(info>>8)&0xff,info&0xff)

#product
func Dot(a,b):
	return cos(a.angle_to(b))

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

#combines everything to get the border of the rule-defined shape
#Dependencies: GetEdge! AToB! 

func TraceShape(pos,type,col)->Array:
	var result:Array=GetEdge(pos,type,col)
	if result.size()==1:
		return [0]
	var start:int=VToDir(result[1]-result[0])
	start-=start%2+1
	var temp:Array=AToB(result[1],result[0],pos,type,col,result[2],start)
	return temp


func GetEdge(pos:int,type:int,col:int,maxrange:float=100.0)->Array:
	#var posdebug=InfoToCol(pos)
	#posdebug=Vector3(posdebug.r8,posdebug.g8,posdebug.b8)
	var edgecol:int=0
	var leng:=maxrange
	var curr:=InfoToVec2(pos)
	while leng>1:
		var off:=ceil(leng/2)*Vector2(0,-1)
		var result=ColorGet(Vec2ToInfo(curr+off,pos),type)
		curr+=off*int(result==col)
		leng=ceil(leng/2)
	var start:=2
	var sanity:int=0 #WARNING: if sanity is on instead of while true:
		#all issues will be skipped
		#however, that is required for singles
	while sanity<8:
		var result=ColorGet(Vec2ToInfo(curr+DirToV(start),pos),type) 
		if result==col: 
			break
		edgecol=result
		start+=1
		sanity+=1
	if sanity==8:
		print("Warning: GetEdge failed at 0x%x, wanted color 0x%x"%[pos,col])
		#breakpoint
		return [0]
	return [curr,curr+DirToV(start),edgecol]

#goes clockwise from point a to b along border of rule (meaning border is on the left)
#Dependencies: DirToV! (ColorIf!-like as rule)

#explanation along with getedge and traceshape - getedge goes into top (2) direction
#until it hits edge (point 0). Then, it does a single circle check (starting at 2)
#until it finds valid point (point 1). It returns both points and last edgecol
#traceshape gets vector of point 0 to 1 and subtracts 1+dir%2, which results in
#next non-repeat (unchecked) dir. The last edgecol, then, shows the color at dir-1,
#allowing for the cornerinvalid checker to startup.
#AtoB, then, goes in a clockwise (0>7) direction until it hits point 0
# and the next point is already in array.
func AToB(a:Vector2,b:Vector2,pos:int,type:int,col:int,edgecol:int,start:int=0)->Array:
	var points:Array=[a]
	var invalidcorners:=Array()
	var lim:=600
	var edgecols:=Array()
	var edgeinfo:=Array()
	var prevpoint:Vector2=NewVec2(-1000)
	var prevcol:=-0xffff
	var currpoint:Vector2=NewVec2(-1000)
	var currcol:=-0xffff
	var unrepeat:=false
	#var currvalid:=false
	#var prevvalid:=false #avoids bad when hit corner
	#jokes on you, unsigned integers un-bad themselves
	var cornerinvalid:=0
	var loops:int=0
	while points.size()<lim:
		var n:int=points.size()-1
		cornerinvalid=0
		loops=0
		unrepeat=false
		#if n ==13:
		#	pass
		while true:
			var _result:int=ColorGet(Vec2ToInfo(points[n]+DirToV(start),pos),type)
			#if _result!=-0xffffffff:
			if _result==col:
				break
			else:
				unrepeat=true
			#else:
			#	cornerinvalid=cornerinvalid|(1<<loops/2) #the horror of unsigned integers
			#	currvalid=false
			if _result!=edgecol:
				cornerinvalid=cornerinvalid|(1<<loops/2)
			edgecol=_result
			start+=1
			loops+=1
#		while !rule.call_func(points[n]+DirToV(start),args)[0]:
#			start+=1
		cornerinvalid%=1<<((loops)>>1)
		currcol=ColorGet(Vec2ToInfo(points[n]+DirToV(start-1),pos),type)
		currpoint=points[n]+DirToV(start-1)
		if unrepeat and !currcol in edgecols: 
			if currcol==prevcol and currpoint.distance_to(prevpoint)<1.5:
				edgecols.append(currcol)
				edgeinfo.append(currpoint)
		prevcol=currcol
		prevpoint=currpoint
		#prevvalid=currvalid
		if cornerinvalid>0:
			invalidcorners.append((points.size()-1)<<3|cornerinvalid)
		if points[points.size()-1]==b and points[n]+DirToV(start) in points:
			break
		points.append(points[n]+DirToV(start))
		start-=start%2+1
		
	if points.size()>=lim:
		return [0]

	return [[points,invalidcorners],[edgecols,edgeinfo]]



func Outline(finalarr:Array)->Array:
	#Damn, every ~month of coding and you notice how trash your old code was...
	var temparr:=Array()
	var cornercount:=0
	var cornerinfo:=-69
	if finalarr[1].size()!=0:
		cornerinfo=finalarr[1][0]
	var cornerfind:=cornerinfo>>3
	var cornerarr:=Array()
	if finalarr[0].size()==1:
		var k:int=0
		while k<7:
			var _k:Vector2=DirToV(k-1)*0.5+finalarr[0][0]
			temparr.append(_k)
			_k=DirToV(k)*0.5+finalarr[0][0]
			temparr.append(_k)
			k+=2
		return temparr
	for i in range(finalarr[0].size()):
		var _x:Vector2=finalarr[0][posmod((i-1),finalarr[0].size())]
		var _y:Vector2=finalarr[0][posmod((i+1),finalarr[0].size())]
		var cent:Vector2=finalarr[0][i]
		var x :int= VToDir(_x-cent)
		var diff:int=(x-x%2+2)%8
		var y :int= VToDir(_y-cent)
		#a-b-1^a%2
		var lim:int=posmod(y-x-1,8)+1-(1^x%2)>>1<<1
		var k := 0
		while k<lim: #if x=0, y=4, k does 1,2
			if k>0 and i==cornerfind:
				if cornerinfo>>(k/2-1)&1==1:
					cornerarr.append(temparr.size())
			var _k:Vector2=DirToV(k+diff-1)*0.5+cent
			temparr.append(_k)
			_k=DirToV(k+diff)*0.5+cent
			temparr.append(_k)
			k+=2
		if i==cornerfind:
			cornercount+=1
			cornerinfo=finalarr[1][cornercount%finalarr[1].size()]
			cornerfind=cornerinfo>>3
	return [temparr,cornerarr]

func Neatify(totalarr:Array)->Array:
	var arr:Array=totalarr[0]
	var skip:Array=totalarr[1]
	var skipcount:int=0
	var skipnum:=-69
	if skip.size()!=0:
		skipnum=skip[0]
	var arr2:=Array()
	for i in arr.size():
		if i==skipnum:
			skipcount+=1
			skipnum=skip[skipcount%skip.size()]
			arr2.append(arr[i])
			continue
		var _c0:Vector2=arr[posmod(i-2,arr.size())]
		var _c1:Vector2=arr[posmod(i-1,arr.size())]
		var _c2:Vector2=arr[i]
		var _c3:Vector2=arr[posmod(i+1,arr.size())]
		var _c4:Vector2=arr[posmod(i+2,arr.size())]
		var if0 :bool= 4==posmod(VToDir(_c3-_c2)-VToDir(_c3-_c4),8) #is flat?
		var if1 :bool= 4==posmod(VToDir(_c1-_c0)-VToDir(_c1-_c2),8)
		if (!if0 or!if1) and _c2!=_c1: #is corner on back or front and not same?
			arr2.append(_c2)
	return arr2



func AreaCheck(r:int,g:int,b:int,size:int)->void:
	var cols:=Array()
	var toprint:=""
	for n2 in 1+size*2:
		n2=-n2+size
		for n1 in 1+size*2:
			n1-=size
			if Vec2IfInBox(Vector2(n1+r,n2+g),Vector2(),NewVec2(255)):
				
				var col=InfoClosestSearch(r+n1,g+n2,b)
				var pos=cols.find(col)
				if pos==-1:
					toprint+=" %d"%cols.size()
					cols.append(col)
				else:
					toprint+=" %d"%pos
			else:
				toprint+=" x"
		print(toprint)
		toprint=""
	for n in cols.size():
		toprint+="%d=%s %s"%[n,IntToHex(cols[n],7),InfoToName(cols[n])]
		if n%2==1:
			print(toprint)
			toprint=""
		else:
			toprint+=", "
	if cols.size()%2==1:
		print(toprint)

func AllCheck(r:int,g:int,b:int,leng:int=-1):
	if leng==-1:
		leng=0xfffffff
		var foundcols:=[]
		for n1 in 8:
			for n2 in 8:
				for n3 in 8:
					for col in colorsector(n1,n2,n3)[0]:
						var dist:int=DistFromInfo(r,g,b,col)
						if dist==leng:
							foundcols.append(col)
						if dist<leng:
							foundcols=[col]
							leng=dist
		return foundcols
	var found:=Array()
	for n1 in 8:
		for n2 in 8:
			for n3 in 8:
				for col in colorsector(n1,n2,n3)[0]:
					var dist:int=DistFromInfo(r,g,b,col)
					if dist<=leng:
						found.append("%d %s"%[dist,InfoToName(col)])
	found.sort()
	for n in found.size():
		print(found[n])


#0=rgb, 1=brg, -1=gbr
func InfoShift(i:int,n:int)->int:
	return (((i>>(posmod(n+2,3)*8))&0xff)<<16
	|
	((i>>(posmod(n+1,3)*8))&0xff)<<8
	|
	((i>>(posmod(n,3)*8))&0xff))
	#I still dont trust doing this, so i wont.
func Int3ToInfo(a:int,b:int,c:int)->int:
	return(((int(a)<<16)&0xff0000)|((int(b)<<8)&0xff00)|(c&0xff))
func Vec2ToInfo(vec:Vector2,col:int)->int:
	return (((int(vec.x)<<16)&0xff0000)|((int(vec.y)<<8)&0xff00)|(col&0xff))
func InfoToVec2(col:int)->Vector2:
	return Vector2((int(col)>>16)&0xff,(int(col)>>8)&0xff)
func ColorGet(pos:int,type:int)->int:
	pos=InfoShift(pos,-type)
	#var isinbox:bool=DistToBox((pos>>16)&0xff,(pos>>8)&0xff,pos&0xff,0,0,0,255,255,255)==0
	#Vec3IfInBox(Vector3(arr[0],arr[1],arr[2]),NewVec3(0),NewVec3(255))
	
	#if isinbox:
	var tempcol:int=InfoClosestSearch((pos>>16)&0xff,(pos>>8)&0xff,pos&0xff)
	return tempcol
	#return -0xffffffff
	

#Dependencies: ColorClosestSearch! Neatify! TraceShape! ColorIf!

#enter:
#pos = r,g
#slider = b
#type 0-2

#change of internal order depending on type:
#type 1= brg, 2= gbr

func ColorInfluence(pos:int,type:int)->Array:
	#switch depending on type
	pos=InfoShift(pos,-type)
	var col :int= InfoClosestSearch((pos>>16)&0xff,(pos>>8)&0xff,pos&0xff) 
	pos=InfoShift(pos,type)
	var traced=TraceShape(pos,type,col) #where issues usually are
	if traced.size()==1:
		return [0]
	#Output: [ready],[to check]
	#ready = [col,[poly]]
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
	return InfoClosestSearch(pos.x,pos.y,slider)==col
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
		var col=InfoClosestSearch(pos.x,pos.y,i)
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











