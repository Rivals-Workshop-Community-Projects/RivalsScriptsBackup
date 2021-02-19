//

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
				other.hitangle = kb_angle;
				other.hitspeed = player_id.spr_dir;
				if ("master" in self && master==other)
				{
					hitbox=0;
				}
		}
	}

if(!free&&state==0)
{
	hsp=0;
}
if(hitbox==1&&hitcooldown<=0)
{
	lifetimer=0;
	state=2;
}
//Handle Item Behaviors
switch (state)
{
	//Sitting
	case 0:
	
	if (lifetimer<900)
	{
		state=1;
		hsp=2;
		sound_play(sound_get("bobomb"));
		sprite_index=sprite_get("bombwalk");
	}
	break;
	//Heart Container
	case 1:
	
	
	//image_xscale=0.1;
	if (!place_meeting(x+(20*spr_dir),y+20,asset_get("par_block")))
	{
		x-=hsp;
		hsp*=-1;
	}
	
	if (lifetimer<200)
	{
		state=2;
		hsp=0;
		sprite_index=sprite_get("bombblow");
	}
	if(got_hit==1)
	{
		lifetimer=0;
	}
	break;
	//Green Shell
	case 2:
		if(got_hit==1)
		{
			lifetimer=0;
		}
	
}
image_index+=0.15;
hitcooldown-=1;
lifetimer-=1;
		
if (hit_wall)
{
	hsp=-prehsp;
	x+=hsp;
	hit_wall=false;
}
spr_dir=sign(hsp);
if (hsp==0){spr_dir=1;}

prehsp=hsp;
prevx=x;
prevy=y;

if (lifetimer<=0)
{
	hb=create_hitbox( AT_DTILT, 3, floor(x),floor(y) );	
		sound_play(sound_get("boom"));
	
		spawn_hit_fx( x, y-16, 143);
	instance_destroy();
}
