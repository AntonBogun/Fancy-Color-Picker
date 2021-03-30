extends Node

func test(arg):
	return Vector2(arg,arg)

func arrcreate(pos,_scale,col,slider):
	var arr = []
	if iff(pos,_scale,col,slider):
		arr.append(pos)
	else:
		return [null,false]
	var n = 0
	var i = 0
	var cent = arr[0]
	while i<4:
		if iff(pos+f(i*2+2)*_scale,_scale,col,slider):
			arr.insert(n,pos+f(i*2+2)*_scale)
			i+=1
			n+=1
			if !iff((pos+f((i)*2+2))*_scale,_scale,col,slider):
				if (arr.size()!=2):
					arr.insert(n,cent)
				i+=1
				n+=1
		else:
			if n==i:
				n+=2
			else:
				n+=1
			i+=1
	
	
	if arr.size()==5:
		arr.remove(5)
	return [arr, true]

func pointarrtopoly(arr):
	for i in range(arr):
		
		
		pass


func f(x,type=0,cent=Vector2()):
	var k
	if type==1:
		match (x-cent)/max(abs((x-cent).x),abs((x-cent).y)):
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

func iff(point, _scale,col,slider):
	if _scale>1:
		var off= (_scale-1)/2
		var err=0
		var box = [point+Vector2(off,off),point+Vector2(-off,-off),point+Vector2(off,-off),point+Vector2(-off,off)]
		if point.x+off<256 && point.x-off>-1 && point.y+off<256 && point.x-off>-1:
			for vec in box:
				if colr.colorclosestsearch(vec.x,vec.y,slider)==col:
					continue
				else:
					err=1
					break
		else:
			err=1
		
		return !bool(err)
		

func f1(finalarr,i,col,slider,_scale=1):
	
	var _x=finalarr[(i-1)%finalarr.size()]
	var _y=finalarr[(i+1)%finalarr.size()]
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
	var err=0
	var _n =0
	for n in arr:
		
		if iff(cent+f(n)*_scale,_scale,col,slider):
			finalarr.insert(i+temp,cent+f(n)*_scale)
			
			if n+1<arr.size():
				
				if temp==1 && err==1&& !iff((cent+f(n))*_scale,_scale,col,slider):
					finalarr.insert(i+temp+1,cent)
				else:
					if temp==1 && err==1:
						finalarr.insert(i+temp+1,cent)
					
			temp+=1
		else:
			if temp==0:
				temp=1
				err=1
			else:
				err+=1
		n+=1
	if err==0:
		finalarr.remove(i+temp)
	if arr.size()!=0:
		return [finalarr,err==arr.size()]
	else:
		return [finalarr,false]

func divid(finalarr,_size):
	var temparr=[]
	var size = (ceil(float(_size/3))-1)+1
	for i in range(finalarr.size()):
		var _x=finalarr[mod((i-1),finalarr.size())]
		var _y=finalarr[(i+1)%finalarr.size()]
		var cent=finalarr[i]
		var x = f(_x,1,cent)
		var diff=floor(float(x/2))*2
		var y = mod(int(f(_y,1,cent)-diff),8)
		if y==0:
			print(str(y)+" sus "+str(f(_y,1,cent)))
			
		
		
		var k = 2
		
		#k=(k%8)*float(k>8)+float(k<=8)*k
		var first=1
		
		
		while k<y:
			var _k=f(int(k+diff-1)%8+1)*size
			if(first==1):
				first=0
				temparr.append(Vector2(_k.y+_k.x+cent.x,-_k.x+_k.y+cent.y))
			temparr.append(_k+cent)
			temparr.append(Vector2(-_k.y+_k.x+cent.x,_k.x+_k.y+cent.y))
			#print(str(_k)+" imposter "+str(k)+", sus =" + str(i))
			if i==2:
				pass
			k+=2
		if(i==2):
			
			continue
		
	
	return temparr

func mod(x,y):
	return (x%y)*int(x>=0)+((x%y) + y)*int(x<0)
