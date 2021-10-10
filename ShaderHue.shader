shader_type canvas_item;
uniform int type = 0;
uniform int slider=0;
//ps: cant name a variable here and variable in a function the same

//int DistFromInside(ivec3 a,ivec3 b, int size){
//	//a=ivec3(a.x%32,a.y%32,a.z%32);
//	a%=32;
//	int result=
//	min(
//		min(
//			min(
//				min(
//					min(
//						a.x+0xffffff*int(b.x-size<=0),
//						31-a.x+0xffffff*int(b.x+size>=7)),
//					a.y+0xffffff*int(b.y-size<=0)),
//				31-a.y+0xffffff*int(b.y+size>=7)),
//			a.z+0xffffff*int(b.z-size<=0)),
//		31-a.z+0xffffff*int(b.z+size>=7))+size*32;
//	return result;
//}
//
////BS AFTER THIS LINE BRUHHHHHHH
////after being clueless at this after god knows how much time passed
////since ive made this, i think this is the code for the useless rainbow
//
//float f1(vec2 x,float div){
//	//return ((sin(x.r/2560.0*div)-sin(x.g/2560.0*div))+2.0)/4.0;
//	return (x.r+x.g)/2560.0*div;
//}
//
//
//
////BS ENDS YAYY
//
//
//vec2 vertconv(vec2 vert, vec2 viewpoort, float zooom){
//	//refer to 2dcolor explanation
//	//>>>consistency btw
//	return vec2(viewpoort.r/2.0+vert.r*zooom,viewpoort.g/2.0-vert.g*zooom);
//}
//bool ifinbox(vec2 pos, vec2 pos1, vec2 pos2){
//	//just check if a position is inside a box
//	return (pos2.r>=pos.r && pos.r>=pos1.r && pos2.g>=pos.g && pos.g>=pos1.g);
//}

float ptf(int n,int size){//Convert int (0:n-1) to corresponding UV given total size (n)
	return (float(n)+0.5)/float(size);//works with color as well
}
int ftp(float n, int size){//inverse of ptf, also works with color
	return int(n*float(size)-0.5);
}
void fragment() {
//	vec2 pos=FRAGCOORD.rg;
//	vec2 posrel = pos-vertconv(vertex3,viewport,zoom);
//	float r =posrel.r*float(mode==1)+posrel.g*float(mode==0)+slider*float(mode==2)*zoom;
//	float g =posrel.r*float(mode==0)+posrel.g*float(mode==2)+slider*float(mode==1)*zoom;
//	float b =posrel.r*float(mode==2)+posrel.g*float(mode==1)+slider*float(mode==0)*zoom;
//	COLOR= vec4(r/zoom/255.0,g/zoom/255.0,b/zoom/255.0,1);
	float k = ptf(slider,256);
	vec4 c=vec4((1.0-UV.y)*float(type==0)+UV.x*float(type==1)+k*float(type==2),
	(1.0-UV.y)*float(type==2)+UV.x*float(type==0)+k*float(type==1),
	(1.0-UV.y)*float(type==1)+UV.x*float(type==2)+k*float(type==0),
	1.0);
	COLOR=c;
}