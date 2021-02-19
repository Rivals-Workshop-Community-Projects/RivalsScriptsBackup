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

	if (got_hit==1&&pl.attack_pressed)
	{
		state=2;
		sprite_index=asset_get("empty_sprite");
		invpl=pl;
		invpl.visible=false;
		image_alpha=0.4;
		hp=get_player_damage(healplayer);
		pln=healplayer;
		hsp=0;
		image_blend=make_colour_rgb(52,52,52);
		vsp=0;
		depth=-3;
		sound_play(sound_get("cloak"));
		lifetimer=600;
		halfheight=pl.char_height/2;
		can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
		ignores_walls = true;                               //Determines if the article goes through walls.

	}
	
	hitcooldown-=1;
		

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
		obj_stage_main.cloaking=false;
		instance_destroy();
	}

		image_index=1;

}
else if (state==2)
{
	depth=-9;
	sprite_index=invpl.sprite_index;
	image_index=invpl.image_index;
	image_xscale=invpl.image_xscale;
	image_yscale=invpl.image_yscale;
	x=invpl.x;
	thp=get_player_damage(pln);
	if (thp>hp)
	{
		set_player_damage(pln,hp);
	}
	else if (thp<hp)
	{
		hp=thp;
	}
	y=invpl.y;
	coltimer-=1;
	flickertimer-=1;
	if (invpl.state==PS_ATTACK_GROUND||invpl.state==PS_ATTACK_AIR)
	{
		coltimer-=1;
		if (invpl.window==1&&windowtimer<3&&coltimer>3)
		{
			coltimer=0;
		}
	}
	if (coltimer<=0)
	{
		
		coltimer=random_func(12,60,true)+20;
		if ((invpl.state==PS_ATTACK_GROUND||invpl.state==PS_ATTACK_AIR)&&lifetimer<598)
		{
			invpl.visible=true;
			flickertimer=8;
		}
		else
		{
			image_alpha=0.4;
			invpl.visible=false;
			flickertimer=4;
		}
	}
	if (flickertimer==0)
	{
		image_alpha=0;
		invpl.visible=false;
	}
	lifetimer-=1;
	if (invpl.state==PS_DEAD||invpl.state==PS_RESPAWN)
	{
		invpl.visible=true;
		lifetimer=0;
	}
	if (lifetimer<=0)
	{
		invpl.visible=true;
		obj_stage_main.cloaking=false;
		instance_destroy();
	}
}
if (!free)
{
	hsp=0;
}