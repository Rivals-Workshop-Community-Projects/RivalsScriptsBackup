//
if (state==1)
{
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

	if (got_hit==1)
	{
		state=2;
		sprite_index=asset_get("empty_sprite");
		invpl=pl;
		sound_play(sound_get("starman"),true,false);
		invpl.invince_time = 9;
		invpl.invincible=true;
		hsp=0;
		vsp=0;
		depth=-3;
		lifetimer=600;
		halfheight=pl.char_height/2;
		can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
		ignores_walls = true;                               //Determines if the article goes through walls.

	}
	
	if (free==false)
	{
		if (vsp<0)
		{
			vsp=99;
			y+=2;
		}
		else if (vsp>0.08&&hitcooldown<=0)
		{
			sound_play(sound_get("star"));
			vsp=-6;
			hitcooldown=10;
		}
		free=true;
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
	else if (lifetimer<=0||y>room_height)
	{
		obj_stage_main.starman=false;
		instance_destroy();
	}


}
else if (state==2)
{
	depth=-9;
	invpl.invince_time=8;
	sprite_index=invpl.sprite_index;
	image_index=invpl.image_index;
	image_xscale=invpl.image_xscale;
	image_yscale=invpl.image_yscale;
	x=invpl.x;
	y=invpl.y;
	image_alpha=0.4;
	coltimer-=1;
	if (coltimer<=0)
	{
		image_blend=make_colour_rgb(random_func(7,255,true),random_func(8,255,true),random_func(9,255,true));
		fx=spawn_hit_fx( x-35+random_func(5,70,true), y-invpl.char_height-30+random_func(6,invpl.char_height+30,true), sparkle);
		fx.depth=-10;
	}
	lifetimer-=1;
	if (invpl.state==PS_DEAD||invpl.state==PS_RESPAWN)
	{
		sound_stop(sound_get("starman"));
		lifetimer=0;
	}
	if (lifetimer>100)
	{
		suppress_stage_music( 0, 1 );
		
	}
	else if (lifetimer==100)
	{
		sound_stop(sound_get("starman"));
	}
	else if (lifetimer<=0)
	{
		instance_destroy();
		obj_stage_main.starman=false;
	}
}