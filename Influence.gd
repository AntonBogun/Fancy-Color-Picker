extends Node


func f(x,type=0,cent=Vector2()):
	var k
	if type==1:
		match x-cent:
			Vector2(-1,-1):
				k=1
			Vector2(0,-1):
				k=2
			Vector2(1,-1):
				k=3
			Vector2(1,0):
				k=4
			Vector2(1,1):
				k=5
			Vector2(0,1):
				k=6
			Vector2(-1,1):
				k=7
			Vector2(-1,0):
				k=8
			_:
				k=0
	else:
		match x:
			1:
				k=Vector2(-1,-1)
			2:
				k=Vector2(0,-1)
			3:
				k=Vector2(1,-1)
			4:
				k=Vector2(1,0)
			5:
				k=Vector2(1,1)
			6:
				k=Vector2(0,1)
			7:
				k=Vector2(-1,1)
			8:
				k=Vector2(-1,0)
			_:
				k=Vector2()
	return k


func f1(finalarr,i,_f,_scale=1):
	
	var _x=finalarr[i-1]
	var _y=finalarr[i+1]
	var cent=finalarr[i]
	var x = f(_x,1,cent)
	var y = f(_y,1,cent)
	var arr = []
	if(x%2==1):
		y=(y-x)%8
		if(y>1):
			arr[0]=x+1
		if(y>3):
			arr[1]=(x+2)%8+1
		if(y>5):
			arr[2]=(x+4)%8+1
	else:
		y=(y-x-2)%8
		if(y>1):
			arr[0]=(x+1)%8+1
		if(y>3):
			arr[1]=(x+3)%8+1
		if(y>5):
			arr[2]=(x+5)%8+1
	var temp=0
	var temp1=0
	var _n =0
	for n in arr:
		
		if _f.call_func((cent+f(n))*_scale):
			finalarr.insert(i+temp,cent+f(n))
			
			if n+1<arr.size():
				
				if temp==1 && !_f.call_func((cent+f(arr[n]))*_scale):
					finalarr.insert(i+temp+1,cent)
					temp1=1
					
			temp+=1
		else:
			if temp==0:
				temp=1
				temp1=0
				
		n+=1
