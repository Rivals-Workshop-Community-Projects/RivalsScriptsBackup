//
sp-=1;
if(sp==0)
{
	sp=-8;
	blocktype=random_func( floor((hsp+2)*80)%19, 24, true );
	switch (blocktype)
	{
		//Rice Lunch Tray
		case 0:
		heal=5;
		break;
		//Spaghetti
		case 1:
		heal=6;
		break;
		//Chashu
		case 2:
		heal=7;
		break;
		//Curry Rice
		case 3:
		heal=7;
		break;
		//Omelette
		case 4:
		heal=7;
		break;
		//Sushi Platter
		case 5:
		heal=8;
		break;
		//Burger
		case 6:
		heal=6;
		break;
		//Donut
		case 7:
		heal=4;
		break;
		//Hanami Dango
		case 8:
		heal=3;
		break;
		//Onigiri
		case 9:
		heal=6;
		break;
		//Turkey
		case 10:
		heal=7;
		break;
		//Milk
		case 11:
		heal=5;
		break;
		//Orange Juice/Wine
		case 12:
		heal=3;
		break;
		//Shiitake Mushroom
		case 13:
		heal=5;
		break;
		//Melon
		case 14:
		heal=6;
		break;
		//Cup of Tea
		case 15:
		heal=2;
		break;
		//Grapes
		case 16:
		heal=3;
		break;
		//Strawberry
		case 17:
		heal=1;
		break;
		//Watermelon
		case 18:
		heal=6;
		break;
		//Bananas
		case 19:
		heal=5;
		break;
		//Cheese
		case 20:
		heal=4;
		break;
		//Orange
		case 21:
		heal=4;
		break;
		//Apple
		case 22:
		heal=5;
		break;
		//Ice Cream
		case 23:
		heal=3;
		break;
	}
	image_index=blocktype;
}

if(!free)
{
	hsp=0;
}
//Get hit
vsp+=grav;
var got_hit = 0;
var healplayer = 0;
var pl = noone;
	
	with (asset_get("oPlayer")){
		if (place_meeting(x,y,other)){
				got_hit = 1;
				healplayer = player;
				pl = self;
		}
	}

//Heal
if (got_hit==1&&pl.attack_pressed)
{
	dmgtarget = max(0,get_player_damage(healplayer)-heal);
	set_player_damage( healplayer, dmgtarget );
	sound_play(sound_get("eat"));
	instance_destroy();
	
}
		

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
else if (lifetimer<=0)
{
	instance_destroy();
}