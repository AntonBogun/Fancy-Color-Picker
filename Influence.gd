extends Node


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
	if finalarr.size()==1:
		var k = 2
		var first =1
		var cent = finalarr[0]
		while k<9:
			var _k=f(int(k))*size
			if(first==1):
				first=0
				temparr.append(Vector2(_k.y+_k.x+cent.x,-_k.x+_k.y+cent.y))
			temparr.append(_k+cent)
			temparr.append(Vector2(-_k.y+_k.x+cent.x,_k.x+_k.y+cent.y))
			#print(str(_k)+" imposter "+str(k)+", sus =" + str(i))
			k+=2
		return temparr
	for i in range(finalarr.size()):
		var _x=finalarr[mod((i-1),finalarr.size())]
		var _y=finalarr[mod((i+1),finalarr.size())]
		var cent=finalarr[i]
		var x = f(_x,1,cent)
		var diff=floor(float(x/2))*2
		var y = mod(int(f(_y,1,cent)-diff),8)
		#print(str(x)+" sus "+str(y)+" bruh "+str(f(_y,1,cent)))
		var yswitch=0
		if y==0:
			yswitch=1
			diff-=2
		
		var k = 4
		#k=(k%8)*float(k>8)+float(k<=8)*k
		var first=1
		
		while k<y or (yswitch==1 and k!=10):
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
	return (x%y)*int(x>=0)+((x%y) + y)*int(x<0 and x%y!=0)

func pogger(pos):
	var a = pow((sin(pos.x*PI/12 + PI/2)-1)*(-20),2)-pow(pos.y,2)
	var b = pow(pos.y,2)+pow(pos.x,2)-1000
	return b<a

func pogger1(pos,_scale):
	var x= pos.x
	var y = pos.y
	#return pow(pos.x,2)+pow(pos.y,2)<45
	
	var off= (_scale-1)/2
	var err=0
	var box = [pos+Vector2(off,off),pos+Vector2(-off,-off),pos+Vector2(off,-off),pos+Vector2(-off,off)]
#	if pos.x+off<256 && pos.x-off>-1 && pos.y+off<256 && pos.x-off>-1:
#
#	else:
#		err=1
	for vec in box:
		if (x<5 and x>-5 and y<5 and y>-5):
			continue
		else:
			err=1
			break
	return !bool(err)

func new(pos,_scale, funcr):
	var arr = []
	var scale = (_scale-1)/2
	if funcr.call_func(pos,_scale):
		arr.append(pos)
	else:
		return [null,false]
	var n = 0
	var i = 0
	var cent = arr[0]
	var temp = 0
	#important magic here::
	while i<4:
		if funcr.call_func(pos+f(i*2+2)*_scale,_scale):
			arr.insert(n,pos+f(i*2+2)*_scale)
			if i+1<4:
				if temp==1 and !funcr.call_func(pos+f(i*2+4)*_scale,_scale):
					temp=0
					arr.insert(n+1,cent)
					n+=1
		else:
			temp=1
		n+=int(n<arr.size())
		
		
		
		i+=1
#
#		if funcr.call_func(pos+f(i*2+2)*_scale,_scale):
#			print("yes")
#			arr.insert(n,pos+f(i*2+2)*_scale)
#			i+=1
#			n+=1
#			if n<arr.size():
#				if !funcr.call_func(pos+f(i*2+2)*_scale,_scale) and arr[n]!=cent:
#					if (arr.size()!=2):
#						arr.insert(n,cent)
#					i+=1
#					n+=1
#		else:
#			print("nope")
#			n+=int(n<arr.size())#+int(i==n)
#			i+=1
	
	
	if arr.size()==5:
		arr.remove(4)
	elif(arr[arr.size()-1]==cent and arr[0]==cent and arr.size()>1):
		arr.remove(arr.size()-1)
	return [arr, true]


func expand(finalarr,funcc,_scale=1):
	var i = 0
	var up=1
	while i<finalarr.size():
		
		var _x=finalarr[mod((i-1),finalarr.size())]
		var _y=finalarr[mod((i+1),finalarr.size())]
		var cent=finalarr[i]
		var x = f(_x,1,cent)
		var y = f(_y,1,cent)
		
#		if funcc.call_func(cent+Vector2(0,-1)*_scale,_scale):
#			finalarr.insert(0,cent+Vector2(0,-1)*_scale)
#			finalarr.insert(finalarr.size(),finalarr[1])
#			continue
#		else:
#			up=0
		
		var arr = []
		print(str(finalarr)+" bruh "+str(y))
		
		if(x%2==1):
			y=mod(y-x,8)
			if(y>1):
				arr.append(x+1)
			if(y>3):
				arr.append((x+2)%8+1)
			if(y>5):
				arr.append((x+4)%8+1)
		else:
			y=mod(y-x,8)+8*int(y-x==0)
			if(y>1):
				arr.append((x+1)%8+1)
			if(y>3):
				arr.append((x+3)%8+1)
			if(y>5):
				arr.append((x+5)%8+1)
		var temp=0
		var err=0
		var _n =0
		var dead =0
		var uhoh=0
		for n in arr:
			if funcc.call_func(cent+f(n)*_scale,_scale):
				finalarr.insert(i+temp,cent+f(n)*_scale)
				if dead==1:
					finalarr.insert(i+temp,cent)
					dead=0
					temp+=1
					uhoh=1
				
				temp+=1
				
			else:
				if temp==0:
					temp=1
					err=1
				else:
					err+=1
				dead=1
			
			n+=1
			
		print(str(finalarr)+" sus "+str(y)+", i="+str(i)+", err="+str(err)+", arr="+str(arr.size())+", temp="+str(temp))
		
		if err==0:
			finalarr.remove(i+temp)
		if arr.size()!=0:
			i+=int(err==arr.size())
	return finalarr


func forinbox(pos,_scale,funcc,_args=[]):
	var x= pos.x
	var y = pos.y
	#return pow(pos.x,2)+pow(pos.y,2)<45
	
	var off= (_scale-1)/2
	var err=0
	var box = [pos+Vector2(off,off),pos+Vector2(-off,-off),pos+Vector2(off,-off),pos+Vector2(-off,off)]
#	if pos.x+off<256 && pos.x-off>-1 && pos.y+off<256 && pos.x-off>-1:
#
#	else:
#		err=1
	for vec in box:
		
		
		if (funcc.call_func(vec)):
			continue
		else:
			
			err=1
			break
	return !bool(err)
