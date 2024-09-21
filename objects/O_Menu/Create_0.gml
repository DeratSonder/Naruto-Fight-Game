/// @description Insert description here
// You can write your code in this editor
//GUI/Vars/Menu setup
#macro SAVEFILE "Save.sav"


gui_width=display_get_gui_width();
gui_height=display_get_gui_height();
gui_margin=50;
menu_x=gui_width+300;
menu_y=gui_height-gui_margin;

menu_x_target=gui_width-gui_margin-600;
menu_speed=15;//lower is faster
menu_font=fMenu;
menu_itemheight=font_get_size(fMenu);
menu_commited=-1;
menu_control=true;
menu[3]="New game";
menu[2]="How to play";
menu[1]="Continue";
menu[0]="Quit"
menu_items=array_length_1d(menu);
menu_cursor=3;


