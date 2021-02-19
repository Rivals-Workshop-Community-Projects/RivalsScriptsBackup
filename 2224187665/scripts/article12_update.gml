//

//Get hit
var got_hit = 0;
var dmg = 0;
var hb=noone;
var pl = noone;
	
		with (asset_get("pHitBox")){
			if (place_meeting(x,y,other)){
					got_hit = 1;
					dmg = damage;
					hb=self;
					other.hitspeed = player_id.spr_dir;
					if ("master" in self && master==other)
					{
						hitbox=0;
					}
			}
			
			if(got_hit==1)
			{
				if (!transcendent&&type==2)
				{
					destroyed=true;
				}
			}
		}
//Heal
if (got_hit==1&&state==0&&cooldown<=0)
{
	cooldown=18;
	hp-=dmg;
	vsp=-1.3;
	hb.player_id.hitpause=true;
	hb.player_id.hitstop=hb.hitpause;
	hb.player_id.old_hsp=hb.player_id.hsp;
	hb.player_id.old_vsp=hb.player_id.vsp;
	sound_play(hb.sound_effect);
	if (hp<=0)
	{
		//Self-Destruct (10% chance)
		if(rng<10)
		{
			hb=create_hitbox( AT_DTILT, 3, floor(x),floor(y) );	
			sound_play(sound_get("boom"));
			spawn_hit_fx( x, y-16, 143);
			instance_destroy();
		}
		else
		{
			state=1;
			vsp=-1;
			visible=true;
			statetimer=90;
			lifetimer=9999;
		}
	}
}
cooldown-=1;
if (state==0)
{
	vsp+=0.1;
}
if (state==1)
{
	if (statetimer<=0)
	{
		state=2;
		vsp=0;
		sound_play(sound_get("partyball"));
		image_index=1;
		statetimer=150;
	}
}
else if (state==2)
{
	image_index+=0.03;
	if(statetimer<=0)
	{
		state=3;
		statetimer=40;
		sprite_index=sprite_get("pballopen");
		//Food Banquet (36% chance)
		if(rng<46)
		{
			var i=0;
			while(i<10)
			{
				itm=instance_create(x,y,"obj_stage_article", 8);
				itm.hsp=-3+random_func(i+2,6,false);
				i+=1;
			}
		}
		//Bob-omb Fest (12% chance)
		else if (rng<58)
		{
			var i=0;
			while(i<5)
			{
				itm=instance_create(x,y,"obj_stage_article", 9);
				itm.hsp=-3+random_func(i+2,6,false);
				i+=1;
			}
		}
		//Spawn Random Items (42% chance)
		else
		{
			var i=0;
			while(i<5)
			{
				rng=random_func(i+8,100,false);
				itn=0;
				if(rng<40)
				{
					itn=7;
				}
				else if (rng<65)
				{
					itn=8;
				}
				else if (rng<85)
				{
					itn=9;
				}
				else if (rng<96)
				{
					itn=11;
				}
				else if (rng<98)
				{
					itn=2;
				}
				else
				{
					itn=10;
				}
				itm=instance_create(x,y,"obj_stage_article", itn);
				itm.hsp=-3+random_func(i+2,6,false);
				i+=1;
			}
		}
	}
}
else if (state==3)
{
	if(statetimer<=0)
	{
		lifetimer=0;
	}
}
statetimer-=1;
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