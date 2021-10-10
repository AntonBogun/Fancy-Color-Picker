shader_type canvas_item;

uniform int slider;
uniform sampler2D colorinfo;
uniform int textsize;//texturesize
uniform int type;
float ptf(int n,int size){//Convert int (0:n-1) to corresponding UV given total size (n)
	return (float(n)+0.5)/float(size);//works with color as well
}
int ftp(float n, int size){//inverse of ptf, also works with color
	return int(n*float(size)-0.5);
}

int DistTo(ivec3 a,ivec3 b){
	return int(pow(float(a.x-b.x),2)+pow(float(a.y-b.y),2)+pow(float(a.z-b.z),2));
} 
int DistToBox(ivec3 a,ivec3 b, ivec3 c){
	return int(pow(float(max(max(b.x-a.x,a.x-c.x),0)),2))+
	int(pow(float(max(max(b.y-a.y,a.y-c.y),0)),2))+
	int(pow(float(max(max(b.z-a.z,a.z-c.z),0)),2));
}
ivec3 ColToivec3(vec4 col){
	return ivec3(ftp(col.r,256),ftp(col.g,256),ftp(col.b,256));
}
vec4 ivec3ToCol(ivec3 col){
	return vec4(ptf(col.r,256),ptf(col.g,256),ptf(col.b,256),1.0);
}
int DistFromInside(ivec3 a,ivec3 b, int size){
	//a=ivec3(a.x%32,a.y%32,a.z%32);
	a%=32;
	int result=
	min(
		min(
			min(
				min(
					min(
						a.x+0xffffff*int(b.x-size<=0),31-a.x+0xffffff*int(b.x+size>=7)),
					a.y+0xffffff*int(b.y-size<=0)),
				31-a.y+0xffffff*int(b.y+size>=7)),
			a.z+0xffffff*int(b.z-size<=0)),
		31-a.z+0xffffff*int(b.z+size>=7))+size*32;
	return result;
}
ivec3 SectorCheck(ivec3 p){
	int dist=0xffffff;
	ivec3 info=ivec3(0,0,0);
	ivec3 c=p/32;
	for(int size=0; size<6;size++){
		int del=size-1;
		for(int r=int(max(c.x-size,0));r<int(min(c.x+size,7))+1;r++){
			for(int g=int(max(c.y-size,0));g<int(min(c.y+size,7))+1;g++){
				int skip=int(r<=c.x+del && r>=c.x-del && g<=c.y+del && g>=c.y-del);
				int deladj=(del*2+1+int(min(c.z-del,0))+7-int(max(c.z+del,7)))*skip;//delete adjust
				for(int btemp=int(max(c.z-size,0));btemp<int(min(c.z+size,7))-deladj+1;btemp++){
					//skip delete zone
					int b=btemp+int(btemp>=c.z-del)*skip*(del*2+1+int(min(c.z-del,0))+7-int(max(c.z+del,7)));
					//needed to skip sector if it's further than dist
					int boxdist=DistToBox(p,ivec3(r*32,g*32,b*32),ivec3(r*32+32,g*32+32,b*32+32));
					//length is stored in first pixel
					ivec3 sizecolor=ColToivec3(texture(colorinfo,vec2(0.0,ptf(r*64+g*8+b,512))));
					int linesize=(255-sizecolor.r)*int(sizecolor.r!=0)+
					(255-sizecolor.g)*int(sizecolor.g!=0)+
					(255-sizecolor.b)*int(sizecolor.b!=0);
					for(int n=1;n<linesize*int(!(boxdist>dist))+1;n++){
						ivec3 point=ColToivec3(
							texture(colorinfo,vec2(ptf(n,textsize),
							ptf(r*64+g*8+b,512))));
						int tempdist=DistTo(p,point);
						info=info*int(dist<=tempdist)+point*int(dist>tempdist);
						dist=int(min(dist,tempdist));
					}
				}
			}
		}
		if(pow(float(DistFromInside(p,c,size)),2)>float(dist)){
			break;
		}
	}
	return info;
}

void fragment(){
	float k=ptf(slider,256);
	vec4 c=vec4(UV.y*float(type==0)+UV.x*float(type==1)+k*float(type==2),
	UV.y*float(type==2)+UV.x*float(type==0)+k*float(type==1),
	UV.y*float(type==1)+UV.x*float(type==2)+k*float(type==0),
	1.0);
	COLOR=ivec3ToCol(SectorCheck(ColToivec3(c)));
}