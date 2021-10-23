shader_type canvas_item;
uniform bool online=false;
uniform bool fill_in=false;
uniform sampler2D textre;//bbbbbb
float ptf(int n,int size){//Convert int (0:n-1) to corresponding UV given total size (n)
	return (float(n)+0.5)/float(size);//works with color as well
}
int ftp(float n, int size){//inverse of ptf, also works with color
	return int(n*float(size)-0.5);
}

vec4 pixat(sampler2D tex, vec2 uv,int x,int y){
	return texture(tex,vec2(
		ptf(clamp(ftp(uv.x,512)+x,0,511)/2,256),
		ptf(clamp(ftp(uv.y,512)+y,0,511)/2,256)//horrible
		));
}
void fragment(){
	vec2 uv=vec2(ptf(ftp(UV.x,512),512),ptf(ftp(UV.y,512),512));
	//WHY????
	bool black=(uv.x==ptf(0,512))||(uv.x>=ptf(510,512))||(uv.y==ptf(0,512))||(uv.y>=ptf(510,512));
	black=black&&online;
	vec4 col=pixat(textre,uv,0,0);
	if (online){
		if (col!=pixat(textre,uv,0,-1) ||col!=pixat(textre,uv,0,1) ||col!=pixat(textre,uv,-1,0) ||col!=pixat(textre,uv,1,0)){
			black=true;
		}
	}
	COLOR=vec4(col.r*float(!black),col.g*float(!black),col.b*float(!black),float(black ||fill_in));
}

//	//single pixel outline, big brian
//	COLOR=col;//vec4(uv.x,uv.y,0.0,1.0);
//	bool black=(UV.x==ptf(0,256)) ||(UV.x==ptf(255,256))||(UV.y==ptf(0,256)) ||(UV.y==ptf(255,256));
//	black=black&&online;
//	if (online){
//	bool x=(pixat(TEXTURE,UV,1,0)!=col);
//	bool y=(pixat(TEXTURE,UV,0,1)!=col);
//	black=black||( (x||y)&&(pixat(TEXTURE,UV,1,1)!=col) )||
//	( ( (pixat(TEXTURE,UV,1,2)!=col)||(pixat(TEXTURE,UV,-1,2)!=col) )&&(pixat(TEXTURE,UV,0,2)!=col)&&y );
//	}
//	COLOR=vec4(col.r*float(!black),col.g*float(!black),col.b*float(!black),float(black ||fill_in));