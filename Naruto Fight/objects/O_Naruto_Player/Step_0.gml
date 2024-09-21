#region //Get Player Input
key_right = keyboard_check(vk_right)||keyboard_check(ord("D"));
key_left=keyboard_check(vk_left)||keyboard_check(ord("A"));
key_jump=keyboard_check_pressed(vk_space)||keyboard_check_pressed(ord("W"));
key_dame=keyboard_check(vk_enter);
kurama=keyboard_check(ord("C"));
defend=keyboard_check(ord("V"));
if(hascontrol){
if((key_left)||(key_jump)||(key_right)){
controller=0;
}
if(abs(gamepad_axis_value(0,gp_axislh))>0.2){
key_left=abs(min(gamepad_axis_value(0,gp_axislh),0));
key_right=max(gamepad_axis_value(0,gp_axislh),0);
controller=1;
}
if(gamepad_button_check_pressed(0,gp_face1)){
key_jump=1;
controller=1;
}
}
else{
key_right=0;
key_left=0;
key_jump=0;
}

#endregion //di chuyen
#region
var move = key_right  - key_left;
hsp = move * walkspd;
vsp +=gra;
//khi het mau
if(hp<0 && state1==0){
	state1=1;
	
//hsp=lengthdir_x(3,direction);
//vsp=lengthdir_y(3,direction)+10;
room_goto(Room1);
}
//if(image_alpha<0) game_restart();
// nhay len khong trung
if(place_meeting(x,y+1,O_Wall) && (key_jump))
{

	vsp=-15;
}
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
	if(state1==1){
image_alpha-=0.01;
}
vsp=0;
}
x+=hsp;
y+=vsp;
#endregion
#region // hình ảnh nhân vật
//chuyen dong cua nhan vat
if(keyboard_check_pressed(vk_enter)) image_index=S_Naruto_Dame;
if(!place_meeting(x,y+1,O_Wall)){
	sprite_index=S_Naruto_Jumping;
	image_speed=0;
}
else{
	image_speed=1;
	
if(hsp==0){
sprite_index=S_Naruto_Standing;
}
else{
sprite_index=S_Naruto_Running;
}
}
if(hsp!=0) image_xscale=sign(hsp);
//tao sat thuong cho dich
k=x+40;
j=y-45;
if(key_dame){
sprite_index=S_Naruto_Dame;
}
firingdelay=firingdelay-1;
if((key_dame) && firingdelay<0){
	if(image_xscale>0){
	firingdelay=5;
	with(instance_create_layer(k,j,"Rasengan",O_Rasengan)){
	speed=35;
	}
	}
	else{
	firingdelay=5;
	with(instance_create_layer(k-120,j,"Rasengan",O_Rasengan)){
	speed=-35;
	
	}
}
}

#endregion
#region //bien hinh
x_new=x;
y_new=y;

if((kurama) && (solan>0)){
instance_create_layer(x_new+50,y_new-100,layer,O_Kurama);
}
else{
instance_destroy(O_Kurama);
}

firingdelay1=firingdelay1-1;

if((kurama) && firingdelay1<0 &&(instance_exists(O_Kurama))){
	
	if(image_xscale>0){
	firingdelay1=5;
	with(instance_create_layer(O_Kurama.x+20,j,layer,O_BoomViThu)){
	speed=25;
	}
	}
	else{
	firingdelay1=5;
	with(instance_create_layer(O_Kurama.x+20,j,layer,O_BoomViThu)){
	speed=25;
	
	}
}
}

#endregion
if((defend) && (solan>0)){
instance_create_layer(x_new+50,y_new-100,layer,O_Phongthu);
}
else{
instance_destroy(O_Phongthu);
}