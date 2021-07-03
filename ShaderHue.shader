shader_type canvas_item;
uniform vec4 color : hint_color;
//box vertecies
uniform vec2 vertex1;
uniform vec2 vertex2;
uniform vec2 vertex3;
uniform vec2 vertex0;
uniform vec2 viewport;
uniform float zoom = 2.0;
uniform int mode = 0;
uniform float slider=0;
//ps: cant name a variable here and variable in a function the same



//BS AFTER THIS LINE BRUHHHHHHH
//after being clueless at this after god knows how much time passed
//since ive made this, i think this is the code for the useless rainbow

float f(float x){
	return max(min(abs((x/2.0-round(x/2.0)+0.5)*2.0-1.0)*3.0-1.0,1.0),0.0);
}
float f1(vec2 x,float div){
	//return ((sin(x.r/2560.0*div)-sin(x.g/2560.0*div))+2.0)/4.0;
	return (x.r+x.g)/2560.0*div;
}
vec4 colfunc(float time){
	return vec4(f(-time),f(-time-1.5),f(-time-3.0),1);
}



//BS ENDS YAYY


vec2 vertconv(vec2 vert, vec2 viewpoort, float zooom){
	//refer to 2dcolor explanation
	//>>>consistency btw
	return vec2(viewpoort.r/2.0+vert.r*zooom,viewpoort.g/2.0-vert.g*zooom);
}
bool ifinbox(vec2 pos, vec2 pos1, vec2 pos2){
	//just check if a position is inside a box
	return (pos2.r>pos.r && pos.r>pos1.r && pos2.g>pos.g && pos.g>pos1.g);
}


void fragment() {
	vec2 pos=FRAGCOORD.rg;
    vec4 curr_color = texture(TEXTURE,UV); // Get current color of pixel (useless tbh)
	vec4 col=colfunc(TIME/4.0-f1(pos,20));
	
    ///if (curr_color.w!=float(0)){
       // COLOR = color
    //}else{
      //  COLOR = curr_color;
    ///}
	
	
	if (ifinbox(pos,vertconv(vertex3,viewport,zoom),vertconv(vertex1,viewport,zoom))){
		vec2 posrel = pos-vertconv(vertex3,viewport,zoom);
		float r =posrel.r*float(mode==2)+posrel.g*float(mode==0)+slider*float(mode==1)*zoom;
		float g =posrel.r*float(mode==0)+posrel.g*float(mode==1)+slider*float(mode==2)*zoom;
		float b =posrel.r*float(mode==1)+posrel.g*float(mode==2)+slider*float(mode==0)*zoom;
		COLOR= vec4(r/zoom/255.0,g/zoom/255.0,b/zoom/255.0,1);
	}else{
		COLOR= color;
	}
	
}