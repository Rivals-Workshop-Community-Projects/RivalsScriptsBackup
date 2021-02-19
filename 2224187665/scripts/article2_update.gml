//


lifetimer-=1;
if (lifetimer<200)
{
	if (lifetimer%4<2)
	{
		visible=false;
	}
	else
	{
		visible=true;
	}
}
if (lifetimer<=0)
{
	y=9999;
	instance_destroy();
}
if(y>room_height)
{
	instance_destroy();
}
if(!free)
{
	hsp=0;
}


//Get hit
vsp+=grav;
var got_hit = 0;
var hitbox = 0;
var healplayer = 0;
var pl = noone;
	
	with (asset_get("oPlayer")){
		if (place_meeting(x,y,other)){
				got_hit = 1;
				healplayer = player;
				pl = self;
		}
	}
	with (asset_get("pHitBox")){
		if (place_meeting(x,y,other)){
				hitbox = 1;
		}
	}
if(!free)
{
	hsp=0;
}
//Handle Item Behaviors
switch (blocktype)
{
	//Maxim Tomato
	case 0:
		if (pl.attack_pressed&&got_hit==1)
		{
			dmgtarget = max(0,get_player_damage(healplayer)-50);
			set_player_damage( healplayer, dmgtarget );
			sound_play(sound_get("tomato"));
			instance_destroy();
			
		}
	break;
	//Heart Container
	case 1:
		if (pl.attack_pressed&&got_hit==1)
		{
			dmgtarget = max(0,get_player_damage(healplayer)-100);
			set_player_damage( healplayer, dmgtarget );
			sound_play(sound_get("heart"));
			instance_destroy();
		}
	break;
	//Green Shell
	case 2:
		if (hitbox==1)
		{
			sound_play(sound_get("shellhit"));
		}
	
}
		
