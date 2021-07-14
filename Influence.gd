extends Node

#DEPRECATED - use new()
func arrcreate(pos,_scale,col,slider):
	#OLD (no funcref)
	#create array
	var arr = []
	#check if pos is correct
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
#DEPRECATED - use new()


# Point relative to point
func f(x,type=0,cent=Vector2()):
	# Point relative to point
	var k
	#better:
	#diff.x+1=a
	#diff.y+1=b
	#abs(a+b+1-(2*a+abs(b-2)*2+2+2*b)*int(b==2)+int(b==1)*(6*b*b-15*b+6))
	#NVM literally makes no difference/is worse, so not gonna change it
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




#DEPRECATED - use expand()
func f1(finalarr,i,col,slider,_scale=1):
	#i-1,i,i+1 = prev, curr and next points
	var _x=finalarr[(i-1)%finalarr.size()]
	var _y=finalarr[(i+1)%finalarr.size()]
	var cent=finalarr[i]
	#see f()
	var x = f(_x,1,cent)
	var y = f(_y,1,cent)
	var arr = []
	#if x not/is divisable by 2, add corresponding points between x and y
	#that should be checked for extension
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
		#for every valid point, do check sequence
		#see iff()
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
				#temp is magic that you shouldn't get into, and just believe it
				#err is also magic
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
#DEPRECATED - use expand()


func divid(finalarr,_size):
	#divides the point array into a smaller scale (9:3:1)
	var temparr=[]
	var size = (ceil(float(_size/3))-1)+1
	if finalarr.size()==1:
		#for when its literally one point (which i guess happens)
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
			#this i guess literally goes through each side point
			k+=2
		return temparr
	
	for i in range(finalarr.size()):
		#where the fun begins
		var _x=finalarr[mod((i-1),finalarr.size())]
		var _y=finalarr[mod((i+1),finalarr.size())]
		var cent=finalarr[i]
		var x = f(_x,1,cent)
		var diff=x-x%2
		var y = mod(int(f(_y,1,cent)-diff-1),8)+1
		
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
			
			
			
		
		
	
	return temparr


func outline(finalarr,_size=1):
	#oh right this actually does the corners for the point array... not entirely
	#sure this is even useful
	#wait right you can use this to your advantage when making a cool corner skip thing
	var temparr=[]
	var size = (_size-1)/2
	var first =1
	if finalarr.size()==1:
		var k = 2
		
		var cent = finalarr[0]
		while k<9:
			#literally again a specific case for just 1 point... happens ig??
			var _k=f(int(k))*size
			_k=Vector2(abs(float(_k.x)+float(_k.x!=0)*0.5)*sign(_k.x),abs(float(_k.y)+float(_k.y!=0)*0.5)*sign(_k.y))
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
		var y = mod(int(f(_y,1,cent)-diff),8)+int(f(_y,1,cent)==diff)*8
#		if cent==Vector2(6,-15):
#			pass
		
		var k = 2
		
		while k<y:
			var _k=f(int(k+diff-1)%8+1)
			
			_k=Vector2(float(_k.x),float(_k.y))
			#this seems pretty cool, but iirc just follows a basic pattern
			#and ignores the last point, as it lets the next
			#check bridge the gap, and that results in a nice loop
			var _k1=Vector2(float(_k.x!=0)*0.5*sign(_k.x),float(_k.y!=0)*0.5*sign(_k.y))
			_k=_k*size+_k1
#			if(first==1):
#				first=0
#				temparr.append(Vector2(_k.y+_k.x+float(cent.x),-_k.x+_k.y+float(cent.y)))
			temparr.append(Vector2(-_k.y+_k.x+float(cent.x),_k.x+_k.y+float(cent.y)) )
			k+=2
		
	
	return temparr


func mod(x,y):
	#oooo thats a poggers % like the one you see in desmos
	#not the bs one like you normally see where it can get negative (just generally not ideal)
	#(x%y)*int(x>=0)+((x%y) + y)*int(x<0 and x%y!=0) - earlier function, complete garbage
	return (x+y)%y

func pogger(pos,args):
	#i uh... i have no idea honestly
	#ohhh nvm i get it - thats the cool pattern that behaves like a bitch cus
	#it has empty spaces.. yeah, i would have to add an entire algorithm to exising
	#algorithm for it to account for empty spaces - suffering
	
	
	match args[0]:
		0:  #copy paste in desmos
			#non-convex, causes issues with divid
			#\left(\left(\sin\left(x\cdot\frac{\pi}{6}+\frac{\pi}{2}\right)-1\right)\cdot-10\right)^{2}-y^{2}>y^{2}+x^{2}-250
			var a = pow((sin(pos.x*PI/6 + PI/2)-1)*(-10),2)-pow(pos.y,2)
			var b = pow(pos.y,2)+pow(pos.x,2)-250
			return b<a
		1:
			#non-convex, doesnt cause issues due to lesser precision required to skip over
			#x^{2}-y^{2}>-17+\frac{\left|x^{3}\right|}{20}
			var a = pow(pos.x,2)-pow(pos.y,2)
			var b = -17+abs(pow(pos.x,3))/20
			return b<a
		2:
			#convex
			#x^{2}+y^{2}-\left(20\sin\left(\frac{y-15}{10}\right)\right)^{2}<400
			var x=pos.x
			var y=pos.y
			var iff=pow(x,2)+pow(y,2)-pow(20*sin((y-15)/10),2)<400
			return iff

#callfuncv = bad
func new(pos,_scale, funcr,args=[]):
	#this probably is arrcreate() 2 ElBoog
	var arr = []
	if funcr.call_func(pos,_scale,args):
		arr.append(pos)
	else:
		return [null]
	var n = 0
	var i = 0
	var cent = arr[0]
	var temp = 0
	#does a + shaped check
	while i<4:
		if funcr.call_func(pos+f(i*2+2)*_scale,_scale,args):
			arr.insert(n,pos+f(i*2+2)*_scale)
	#		
			if i+1<4:
				if temp==1 and !funcr.call_func(pos+f(i*2+4)*_scale,_scale,args):
					temp=0
					arr.insert(n+1,cent)
					n+=1
		else:
			temp=1
		n+=int(n<arr.size())
		
		
		
		i+=1
	if arr.size()==5:
		arr.remove(4)
	elif(arr[arr.size()-1]==cent and arr[0]==cent and arr.size()>1):
		arr.remove(arr.size()-1)
	return arr


#funcc in this context can be either the if() itself, or a forinbox(if()) in order to not allow
#issues when increasing precision with divid()

#funcc call - intended forinbox(pos,scale,args)
func expand(finalarr,funcc,_scale=1,args=[]):
	#the actual expand function, or from my understanding f1() 2, electric boogel
	#oh right it doesnt function inside a loop as a child, this does its own loop
	#var up=1
	var done=1
	#var printcount=0
	var completed=0
	#0 = default state, loop exists when done=0
	while done!=0:
		done=0
		var i = completed
		while i<finalarr.size():
			#get relative positions of x and y
			var _x=finalarr[mod((i-1),finalarr.size())]
			var _y=finalarr[mod((i+1),finalarr.size())]
			var cent=finalarr[i]
			var x = f(_x,1,cent)
			var y = f(_y,1,cent)
			
			if i>10000:
				done = 0
				#400 is the max amount of points.
				print("OVERFLOW")
				break
			
			#figure out which points to check
			var arr = []
			
			
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
				if(y>2):
					arr.append((x+1)%8+1)
				if(y>4):
					arr.append((x+3)%8+1)
				if(y>6):
					arr.append((x+5)%8+1)
			#all of the stuff needed for proper point insertion
			var temp=0
			var err=0
			var _n =0
			var dead =-1
			var _i=0
			for n in arr:
				#the check itself
				
				if funcc.call_func(cent+f(n)*_scale,_scale,args):
					finalarr.insert(i+temp,cent+f(n)*_scale)
					done=1
					_i+=1
					temp+=1
					if dead==1:
						finalarr.insert(i+temp,cent)
						dead=0
						temp+=1
					
					
					
				else:
					
					temp+=int(temp==0)
					err+=1
					dead+=int(dead!=1)
				
				
			
			if dead==1 and err!=arr.size():
					finalarr.insert(i+temp,cent)
					temp+=1
			if err==0:
				finalarr.remove(i+temp)
				_i-=1
			#CRUICIAL for making it run much faster
			completed = completed+int(err==arr.size() and arr.size()!=0 and i==completed)
			i+=1+_i
			
			
			
		
		
		if (finalarr[0]==finalarr[finalarr.size()-1]) and finalarr.size()!=1:
			finalarr.remove(finalarr.size()-1)
#		print(finalarr)
#		print("count="+str(printcount))
		#printcount+=1
	#		if arr.size()!=0:
	#			i+=int(err==arr.size())
	return finalarr


#calls funcc:
#(pos,args)
func forinbox(pos,_scale,funcc,_args=[]):
	#works ig
	
	var off= (_scale-1)/2
	var err=0
	var box = []
	if off>0:
		box = [pos+Vector2(off,off),pos+Vector2(-off,-off),pos+Vector2(off,-off),pos+Vector2(-off,off)]
	else:
		box = [pos]
	for vec in box:
		
		
		if (funcc.call_func(vec,_args)):
			continue
		else:
			
			err=1
			break
	
	return !bool(err)

#OLD (no funcref), new = forinbox()
func iff(point, _scale,col,slider):
	#check a box, yes if all are yes
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
		

func neatify(arr):
	var arr2=[]
	for i in arr.size():
		var _x=arr[mod((i-1),arr.size())]
		var _y=arr[mod((i+1),arr.size())]
		var cent=arr[i]
		var x = f(_x,1,cent)
		var y = f(_y,1,cent)
		#if Dot(x,y)!=0:
		
		if mod(y-x,8)!=2:
			arr2.append(cent)
	arr.clear()
	for i in arr2.size():
		var _x=arr2[mod((i-1),arr2.size())]
		var _y=arr2[mod((i+1),arr2.size())]
		var cent=arr2[i]
		var x = cent-_x
		var y = cent-_y
		if int(Dot(x,y))!=-1:
			arr.append(cent)
	return arr

func Dot(a,b):
	
	return a.dot(b)/sqrt((pow(a.x,2)+pow(a.y,2))*(pow(b.x,2)+pow(b.y,2)))
