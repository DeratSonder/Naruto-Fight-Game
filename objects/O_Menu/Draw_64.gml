/// @description Insert description here
// You can write your code in this editor

draw_set_font(fMenu);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
for(var i=0;i< menu_items;i++){
var offset=2;
var txt=menu[i];
if(menu_cursor==i){
txt=string_insert("",txt,0);
var col=c_yellow;
}
else var col=c_white;
var xx=menu_x;
var yy=menu_y - (menu_itemheight*(i*1.5));
draw_set_color(c_black);
draw_text(xx-offset,yy,txt);
draw_text(xx+offset,yy,txt);
draw_text(xx,yy+offset,txt);
draw_text(xx,yy-offset,txt);
draw_set_color(col);
draw_text(xx,yy,txt);
}

