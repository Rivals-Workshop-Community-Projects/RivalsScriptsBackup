//

//Get hit
vsp+=grav;
var got_hit = 0;
var hitbox = 0;
var healplayer = 0;
var pl = noone;
	
	with (asset_get("oPlayer")){
		if (place_meeting(x,y,other)&&y<other.y-10&&vsp>0){
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


if (hitbox==1&&hitcooldown<0)
		{
			if(blocktype==0){hsp = sign(lengthdir_x(1,hitangle))*6*hitspeed;}
			hitcooldown=13;
			state=1;
			sound_play(sound_get("shellhit"));
			//lifetimer=900;
			
		}
		if (got_hit)
		{
			pl.vsp=-pl.djump_speed;
			if(blocktype==0){hsp = 6*pl.spr_dir;}
			state=1;
			hitcooldown=4;
			sound_play(sound_get("shellhit"));
			//lifetimer=900;
		}
		

//Handle Item Behaviors
switch (blocktype)
{
	//Maxim Tomato
	case 0:
		
	break;
	//Heart Container
	case 1:
		dist=999;
		for (i = 0; i < instance_number(oPlayer); i += 1)
		{
			pl = instance_find(oPlayer,i);
		    if (pl.state!=PS_DEAD && point_distance(x,y,pl.x,pl.y)<dist)
			{
				dist = point_distance(x,y,pl.x,pl.y);
				tx = pl.x;
			}
		}
	
	if (dist<190&&state==1)
	{
		if (tx<x&&hsp>-6)
		{
			hsp-=0.5;
		}
		else if (tx>x&&hsp<6)
		{
			hsp+=0.5;
		}
	}
	//image_xscale=0.1;
	if (!place_meeting(x+(20*spr_dir),y+20,asset_get("par_block")))
	{
		x-=hsp;
		hsp*=-1;
	}
	//image_xscale=1;
	//if (free&&state==1&&hsp*spr_dir>0)
	//{
	//	hsp=0;
	//	x=prevx;
	//	free=false;
	//}
	break;
	//Green Shell
	case 2:
		if (hitbox==1)
		{
			sound_play(sound_get("shellhit"));
		}
	
}

hitcooldown-=1;
		
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
if (lifetimer%4==0&&state==1)
{
	if(blocktype==0)
	{
		hb=create_hitbox( AT_DTILT, 1, floor(x),floor(y) );	
		hb.master=self;
	}
	else
	{
		hb=create_hitbox( AT_DTILT, 2, floor(x),floor(y) );	
		hb.master=self;
	}
}
if(!free&&state==0)
{
	hsp=0;
}