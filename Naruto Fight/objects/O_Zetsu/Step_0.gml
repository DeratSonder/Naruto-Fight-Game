vsp +=gra;
//Don't walk off edge
if((grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,O_Wall))){

hsp=-hsp;

}
if(hp<0 && state1==0){
	state1=1;
hsp=lengthdir_x(3,direction);
vsp=lengthdir_y(3,direction)+10;
}
if(image_alpha<0) instance_destroy();
//move left - right
if(place_meeting(x+hsp,y,O_Wall)){
	while(!place_meeting(x+hsp,y,O_Wall)){
	x+=sign(hsp);
	}
hsp=-hsp;
}
//move up-down
if(place_meeting(x,y+vsp,O_Wall)){
	while(!place_meeting(x,y+vsp,O_Wall)){
	y+=sign(vsp);
	}
vsp=0;
if(state1==1){
hsp=0;
image_alpha-=0.05;
}
}
x+=hsp;
y+=vsp;
if(!place_meeting(x,y+1,O_Wall)){
	grounded=false;
	sprite_index=S_Zetsu_Walking;
	image_speed=0;
}
else{
	grounded=true;
	image_speed=1;
	
if(hsp==0){
sprite_index=S_Zetsu_Dead;
}
else{
sprite_index=S_Zetsu_Walking;
}
}
if(hsp!=0) image_xscale=sign(hsp);
x_new=x;
y_new=y;
while(soluong>0){
	soluong--;
if(soluong < 5  && (!instance_exists(O_Zetsu))){
instance_create_layer(x_new,y_new-50,layer,O_Zetsu);
}
}