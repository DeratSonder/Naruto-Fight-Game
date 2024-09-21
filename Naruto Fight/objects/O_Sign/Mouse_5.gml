/// @description Insert description here
// You can write your code in this editor
if(/*(point_in_circle(O_Naruto_Player.x,O_Naruto_Player.y,x,y,64))  &&*/( !instance_exists(Otext)))
{
with(instance_create_layer(x,y-64,layer,Otext)){
text=other.text;
length=string_length(text);
}
with(O_Camera){
follow=other.id;
}
}


