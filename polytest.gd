extends Node2D
tool

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

var poly1 =[Vector2(135,106.5),Vector2(135.5,106),Vector2(135.5,105),Vector2(136,104.5),Vector2(136.5,104),Vector2(137,103.5),Vector2(137.5,103),Vector2(137.5,102),Vector2(138,101.5),Vector2(138.5,101),Vector2(139,100.5),Vector2(140,100.5),Vector2(140.5,100),Vector2(141,99.5),Vector2(145,99.5),Vector2(145.5,99),Vector2(146,98.5),Vector2(149,98.5),Vector2(149.5,98),Vector2(150,97.5),Vector2(154,97.5),Vector2(154.5,97),Vector2(155,96.5),Vector2(159,96.5),Vector2(159.5,96),Vector2(160,95.5),Vector2(162,95.5),Vector2(162.5,96),Vector2(163,96.5),Vector2(163.5,97),Vector2(164,97.5),Vector2(164.5,98),Vector2(165,98.5),Vector2(165.5,99),Vector2(165.5,102),Vector2(165,102.5),Vector2(164.5,103),Vector2(164.5,107),Vector2(164,107.5),Vector2(163.5,108),Vector2(163.5,109),Vector2(163,109.5),Vector2(162,109.5),Vector2(161.5,110),Vector2(161,110.5),Vector2(158,110.5),Vector2(157.5,111),Vector2(157,111.5),Vector2(155,111.5),Vector2(154.5,112),Vector2(154,112.5),Vector2(152,112.5),Vector2(151.5,113),Vector2(151,113.5),Vector2(149,113.5),Vector2(148.5,114),Vector2(148,114.5),Vector2(145,114.5),Vector2(144.5,115),Vector2(144,115.5),Vector2(143,115.5),Vector2(142.5,115),Vector2(142,114.5),Vector2(141,114.5),Vector2(140.5,114),Vector2(140,113.5),Vector2(139,113.5),Vector2(138.5,113),Vector2(138,112.5),Vector2(136,112.5),Vector2(135.5,112),Vector2(135,111.5),Vector2(134,111.5),Vector2(133.5,111),Vector2(133.5,108),Vector2(134,107.5),Vector2(134.5,107)]
var poly2 =[Vector2(134,99.5),Vector2(134.5,99),Vector2(134.5,98),Vector2(135,97.5),Vector2(135.5,97),Vector2(135.5,96),Vector2(136,95.5),Vector2(136.5,95),Vector2(137,94.5),Vector2(137.5,95),Vector2(137.5,97),Vector2(138,97.5),Vector2(138.5,98),Vector2(138.5,101),Vector2(138,101.5),Vector2(137.5,102),Vector2(137.5,103),Vector2(137,103.5),Vector2(136.5,104),Vector2(136,104.5),Vector2(135.5,105),Vector2(135.5,106),Vector2(135,106.5),Vector2(134.5,107),Vector2(134,107.5),Vector2(133.5,108),Vector2(133.5,109),Vector2(133,109.5),Vector2(132.5,109),Vector2(132.5,108),Vector2(132,107.5),Vector2(131.5,107),Vector2(131,106.5),Vector2(130.5,106),Vector2(130.5,105),Vector2(131,104.5),Vector2(131.5,104),Vector2(131.5,103),Vector2(132,102.5),Vector2(132.5,102),Vector2(132.5,101),Vector2(133,100.5),Vector2(133.5,100)]
var poly3 =[Vector2(132,109.5),Vector2(131.5,109),Vector2(131,108.5),Vector2(130,108.5),Vector2(129.5,108),Vector2(129,107.5),Vector2(128.5,107),Vector2(128,106.5),Vector2(127,106.5),Vector2(126.5,106),Vector2(126,105.5),Vector2(125,105.5),Vector2(124.5,105),Vector2(124,104.5),Vector2(123.5,104),Vector2(123,103.5),Vector2(122,103.5),Vector2(121.5,103),Vector2(121,102.5),Vector2(120,102.5),Vector2(119.5,102),Vector2(119,101.5),Vector2(118.5,101),Vector2(118,100.5),Vector2(117,100.5),Vector2(116.5,100),Vector2(116,99.5),Vector2(115,99.5),Vector2(114.5,99),Vector2(114.5,97),Vector2(115,96.5),Vector2(115.5,96),Vector2(116,95.5),Vector2(116.5,96),Vector2(117,96.5),Vector2(117.5,97),Vector2(118,97.5),Vector2(119,97.5),Vector2(119.5,98),Vector2(120,98.5),Vector2(120.5,99),Vector2(121,99.5),Vector2(122,99.5),Vector2(122.5,100),Vector2(123,100.5),Vector2(123.5,101),Vector2(124,101.5),Vector2(125,101.5),Vector2(125.5,102),Vector2(126,102.5),Vector2(127,102.5),Vector2(127.5,103),Vector2(128,103.5),Vector2(128.5,104),Vector2(129,104.5),Vector2(130,104.5),Vector2(130.5,105),Vector2(130.5,106),Vector2(131,106.5),Vector2(131.5,107),Vector2(132,107.5),Vector2(132.5,108),Vector2(132.5,109)]
var poly4 =[Vector2(133.5,112),Vector2(133,112.5),Vector2(132.5,113),Vector2(132.5,114),Vector2(132,114.5),Vector2(131.5,115),Vector2(131.5,116),Vector2(131,116.5),Vector2(130.5,117),Vector2(130,117.5),Vector2(129.5,118),Vector2(129,118.5),Vector2(128,118.5),Vector2(127.5,119),Vector2(127,119.5),Vector2(126,119.5),Vector2(125.5,120),Vector2(125,120.5),Vector2(124.5,121),Vector2(124,121.5),Vector2(123.5,121),Vector2(123.5,119),Vector2(123,118.5),Vector2(122.5,118),Vector2(122.5,116),Vector2(122,115.5),Vector2(121.5,115),Vector2(122,114.5),Vector2(123,114.5),Vector2(123.5,114),Vector2(124,113.5),Vector2(125,113.5),Vector2(125.5,113),Vector2(126,112.5),Vector2(127,112.5),Vector2(127.5,112),Vector2(128,111.5),Vector2(129,111.5),Vector2(129.5,111),Vector2(130,110.5),Vector2(132,110.5),Vector2(132.5,110),Vector2(133,109.5),Vector2(133.5,110)]
var poly5 =[Vector2(130,110.5),Vector2(129.5,111),Vector2(129,111.5),Vector2(128,111.5),Vector2(127.5,112),Vector2(127,112.5),Vector2(126,112.5),Vector2(125.5,113),Vector2(125,113.5),Vector2(124,113.5),Vector2(123.5,114),Vector2(123,114.5),Vector2(119,114.5),Vector2(118.5,114),Vector2(118,113.5),Vector2(115,113.5),Vector2(114.5,113),Vector2(114,112.5),Vector2(113.5,112),Vector2(113,111.5),Vector2(112.5,111),Vector2(112,110.5),Vector2(111.5,110),Vector2(111,109.5),Vector2(110.5,109),Vector2(110,108.5),Vector2(109.5,108),Vector2(109,107.5),Vector2(108.5,107),Vector2(108,106.5),Vector2(107.5,106),Vector2(107,105.5),Vector2(106.5,105),Vector2(107,104.5),Vector2(107.5,104),Vector2(108,103.5),Vector2(108.5,103),Vector2(109,102.5),Vector2(109.5,102),Vector2(110,101.5),Vector2(111,101.5),Vector2(111.5,101),Vector2(112,100.5),Vector2(112.5,100),Vector2(113,99.5),Vector2(116,99.5),Vector2(116.5,100),Vector2(117,100.5),Vector2(118,100.5),Vector2(118.5,101),Vector2(119,101.5),Vector2(119.5,102),Vector2(120,102.5),Vector2(121,102.5),Vector2(121.5,103),Vector2(122,103.5),Vector2(123,103.5),Vector2(123.5,104),Vector2(124,104.5),Vector2(124.5,105),Vector2(125,105.5),Vector2(126,105.5),Vector2(126.5,106),Vector2(127,106.5),Vector2(128,106.5),Vector2(128.5,107),Vector2(129,107.5),Vector2(129.5,108),Vector2(130,108.5),Vector2(131,108.5),Vector2(131.5,109),Vector2(132,109.5),Vector2(132.5,110),Vector2(132,110.5)]

func _ready():
#	$Polygon2D.polygon=poly1
#	$Polygon2D.color=Color(1,1,1)
#	$Polygon2D2.polygon=poly2
#	$Polygon2D2.color=Color(0,1,0)
#	$Polygon2D3.polygon=poly3
#	$Polygon2D3.color=Color(0,0,1)
#	$Polygon2D4.polygon=poly4
#	$Polygon2D4.color=Color(1,0,1)
#	$Polygon2D5.polygon=poly5
#	$Polygon2D5.color=Color(0,1,1)
	pass # Replace with function body.