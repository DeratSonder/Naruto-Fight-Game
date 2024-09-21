/// @description Insert description here
// You can write your code in this editor
vsp +=gra;
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
hsp=0;
}
//move up-down
if(place_meeting(x,y+vsp,O_Wall)){
	while(!place_meeting(x,y+vsp,O_Wall)){
	y+=sign(vsp);
	}
vsp=0;
if(state1==1){
hsp=0;
image_alpha-=0.01;
}
}
x+=hsp;
y+=vsp;
/*if(!place_meeting(x,y+1,O_Wall)){
	sprite_index=S_Susanoo;
	image_speed=1;
}
else{
	image_speed=1;
	
if(hsp==0){
sprite_index=S_Susanoo;
}
else{
sprite_index=S_Susanoo;
}
}*/
image_xscale=-1;//xoay về bên trái
k=x+10;
j=y+20;
if(point_distance(x,y,O_Naruto_Player.x,O_Naruto_Player.y)<700){
sprite_index=S_Susanoo_Dame;
image_speed=1;
}
else{

sprite_index=S_Susanoo;
}
countdown=countdown-1;
if((point_distance(x,y,O_Naruto_Player.x,O_Naruto_Player.y)<700) && countdown<0){
	
	if(image_xscale>0){
	countdown=10;
	with(instance_create_layer(k,j+ 400,layer,O_Fire)){
	speed=15;
	}
	}
	else{
	countdown=10;
	with(instance_create_layer(k-140,j+200,layer,O_Fire)){
	speed=-15;
	
	}
}
}
if(hsp!=0) image_xscale=sign(hsp);
//ra don tan cong
x_new=x;
y_new=y;
if(hp<100){
instance_destroy();
instance_create_layer(x_new,y_new+10,layer,O_Obito_Most);
}