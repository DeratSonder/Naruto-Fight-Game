/// @description Insert description here
// You can write your code in this editor


if(instance_exists(O_Camera)){
draw_sprite_stretched(S_Healthbar,0,x-O_Camera.x+ O_Camera.view_w_half-60,y - 90 - O_Camera.y + O_Camera.view_h_half,(hp/hp_max)*healthbar_w,healthbar_h);
}
else{
draw_sprite_stretched(S_Healthbar,0,x,y ,(hp/hp_max)*healthbar_w,healthbar_h);

}

