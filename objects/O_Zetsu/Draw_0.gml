/// @description Insert description here
// You can write your code in this editor
// tao mau trang khi bi ban trung
draw_self();
if(flash>0){
flash--;
shader_set(shWhite);
draw_self();
shader_reset();
}

