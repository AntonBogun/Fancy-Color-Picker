extends Node


func arrcreate(pos,_scale,col,slider):
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




func f(x,type=0,cent=Vector2()):
	# Point relative to point
	var k
	#better:
	#diff.x+1=a
	#diff.y+1=b
	#abs(a+b+1-(2*a+abs(b-2)*2+2+2*b)*int(b==2)+int(b==1)*(6*b*b-15*b+6))
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
		var diff=floor(float(x/2))*2
		#just x-x%2? idk why it has to be so dumb
		#this thing below is clearly high level sorcery
		#after some inspecting i guess it like tries to do something cool
		#oh i completely forgot this has to basically do outlines
		#the logic for it was insane iirc, so i have no idea how this even functions
		#just trust it
		#ehh i have basic theory - it just takes y as the limit for k
		#and to do that it needs to perform this operation, as it gets the accurate
		#limit for the y.
		#specifics are probably more details but i cant be bothered and it doesnt really matter
		var y = mod(int(f(_y,1,cent)-diff),8)+int(f(_y,1,cent)==diff)*8
#		if cent==Vector2(6,-15):
#			pass
#		print(str(x)+" sus "+str(y)+" bruh "+str(f(_y,1,cent)))
#		var yswitch=0
#		if y==0:
#			yswitch=1
#			diff-=2
		
		var k = 2
		#k=(k%8)*float(k>8)+float(k<=8)*k
		var first=1
		
		while k<y or ( k!=10):
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


func outline(finalarr,_size):
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
	return (x%y)*int(x>=0)+((x%y) + y)*int(x<0 and x%y!=0)

func pogger(pos):
	#i uh... i have no idea honestly
	#ohhh nvm i get it - thats the cool pattern that behaves like a bitch cus
	#it has empty spaces.. yeah, i would have to add an entire algorithm to exising
	#algorithm for it to account for empty spaces - suffering
	
	#copy paste in desmos
	#\left(\left(\sin\left(x\cdot\frac{\pi}{6}+\frac{\pi}{2}\right)-1\right)\cdot-10\right)^{2}-y^{2}>y^{2}+x^{2}-250
	var a = pow((sin(pos.x*PI/6 + PI/2)-1)*(-10),2)-pow(pos.y,2)
	var b = pow(pos.y,2)+pow(pos.x,2)-250
	return b<a

func pogger1(pos,_scale):
	#different pattern i guess? 
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
	#dude wtf are you talkign about i have literally no idea
	#god not the call_funcs... this is so bad
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
	#the actual expand function, or from my understanding f1() 2, electric boogel
	#oh right it doesnt function inside a loop as a child, this does its own loop
	#var up=1
	var done=1
	var printcount=0
	var completed=0
	while done!=0:
		done=0
		var i = completed
		while i<finalarr.size():
			
			var _x=finalarr[mod((i-1),finalarr.size())]
			var _y=finalarr[mod((i+1),finalarr.size())]
			var cent=finalarr[i]
			var x = f(_x,1,cent)
			var y = f(_y,1,cent)
			
			if i>400:
				done = 0
				#400 isnt actually that much, but it probably should never get that big
				#with colors
				#wait this is actual loops... yeahhhhhhhhh thats before i realized you can
				#just skip all points you have already gone through to make the amount of stuff
				#to check much smaller
				#400 makes more sense now
				#nvm looks like its not loops, but just point amount? then i was corrent
				#but my point also is correct, so yeahh
				print("OVERFLOW")
				break
	#		if funcc.call_func(cent+Vector2(0,-1)*_scale,_scale):
	#			finalarr.insert(0,cent+Vector2(0,-1)*_scale)
	#			finalarr.insert(finalarr.size(),finalarr[1])
	#			continue
	#		else:
	#			up=0
			
			var arr = []
			#print(str(finalarr)+" bruh "+str(y))
			
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
			var temp=0
			var err=0
			var _n =0
			var dead =-1
			var _i=0
			for n in arr:
				if funcc.call_func(cent+f(n)*_scale,_scale):
					finalarr.insert(i+temp,cent+f(n)*_scale)
					done=1
					_i+=1
					temp+=1
					if dead==1:
						finalarr.insert(i+temp,cent)
						dead=0
						temp+=1
					
					
					
				else:
					pass
					temp+=int(temp==0)
					err+=1
					dead+=int(dead!=1)
				
				n+=1
			if dead==1 and err!=arr.size():
					finalarr.insert(i+temp,cent)
					temp+=1
			#print(str(finalarr)+" sus "+str(y)+", i="+str(i)+", err="+str(err)+", arr="+str(arr.size())+", temp="+str(temp))
			
			if err==0:
				finalarr.remove(i+temp)
				_i-=1
			#completed = completed+int(arr.size()==0 and i==completed)
			i+=1+_i
			
			
			
		if (finalarr[0]==finalarr[finalarr.size()-1]):
			finalarr.remove(finalarr.size()-1)
#		print(finalarr)
#		print("count="+str(printcount))
		printcount+=1
	#		if arr.size()!=0:
	#			i+=int(err==arr.size())
	return finalarr


func forinbox(pos,_scale,funcc,_args=[]):
	#wtf is this
	#bruh this really is iff() but that works with any function???
	#god funcrefing is so tedious
	var x= pos.x
	var y = pos.y
	#return pow(pos.x,2)+pow(pos.y,2)<45
	
	var off= (_scale-1)/2
	var err=0
	var box = []
	if off>0:
		box = [pos+Vector2(off,off),pos+Vector2(-off,-off),pos+Vector2(off,-off),pos+Vector2(-off,off)]
	else:
		box = [pos]
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
