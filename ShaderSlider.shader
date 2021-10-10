shader_type canvas_item;
uniform int type = 0;
uniform float r=0;
uniform float g=0;
uniform float b=0;
float ptf(int n,int size){//Convert int (0:n-1) to corresponding UV given total size (n)
	return (float(n)+0.5)/float(size);//works with color as well
}
int ftp(float n, int size){//inverse of ptf, also works with color
	return int(n*float(size)-0.5);
}
void fragment() {
//	vec4 c=vec4(
//	r*float(type!=2)+(UV.y)*float(type==2),
//	g*float(type!=1)+(1.0-UV.y)*float(type==1),
//	b*float(type!=0)+(UV.y)*float(type==0),
//	1.0);
	vec4 c=vec4(0,0,UV.x,1.0);
	COLOR=c;
}