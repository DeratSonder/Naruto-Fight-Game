/// @description Insert description here
// You can write your code in this editor
/*draw_set_color(c_red);
draw_set_font(fSign);
draw_text(x,y+100,string(hp));*/

//draw_sprite(S_Healthbar,0,x,y);
if(instance_exists(O_Camera)){
draw_sprite_stretched(S_Healthbar,0,x-O_Camera.x+ O_Camera.view_w_half-50,y - 40 - O_Camera.y + O_Camera.view_h_half,(hp/hp_max)*healthbar_w,healthbar_h);
}
else{
draw_sprite_stretched(S_Healthbar,0,x,y ,(hp/hp_max)*healthbar_w,healthbar_h);

}
//camera_set_view_pos(cam,x-view_w_half,y-view_h_half);