if(done==0){
vsp +=gra;
//move left - right
if(place_meeting(x+hsp,y,O_Wall)){
	while(!place_meeting(x+hsp,y,O_Wall)){
	x+=sign(hsp);
	}
hsp=0;
}
x+=hsp;;
//move up-down
if(place_meeting(x,y+vsp,O_Wall)){
	if(vsp>0) {
	done=1;
	image_index=1;
	}
	while(!place_meeting(x,y+vsp,O_Wall)){
	y+=sign(vsp);
	}
vsp=0;
}

y+=vsp;
}