/// @description Insert description here
// You can write your code in this editor
//Update destination
if(instance_exists(follow)){
xTo=follow.x;
yTo=follow.y;

}
//Update oject position
x+=(xTo-x)/30;
y+=(yTo-y)/30;
x=clamp(x,view_w_half,room_width-view_w_half);
y=clamp(y,view_h_half,room_height-view_h_half);
//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
