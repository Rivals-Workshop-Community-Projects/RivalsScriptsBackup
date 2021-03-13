//visual objects or blank slates

//Animate appear
if instance_exists(self) && notbowser == false && state <= 5
{
lifeTimer++;
if lifeTimer < fadeTimer
	image_alpha = lifeTimer/fadeTimer;
else
	image_alpha = 1;
}


//Flying up to mario
if instance_exists(self) && state == 0
{
	x = player_id.x;
	y-= ascendSpeed;
	image_index += ascendImageSpeed;
	
	spr_dir = player_id.spr_dir;
	
	//When bowserjr passes mario's y value
	if y < player_id.y
	{
		state = 1;
		with player_id
		{
			other.sprite_index = sprite_get("bowserjr_toss");
		}
		image_index = 0;
		x = player_id.x;
		y = player_id.y-20;
		
		player_id.x += 20*spr_dir;
	}
}

//Helping mario
if instance_exists(self) && state == 1
{
	image_index += helpingImageSpeed;
	
	if image_index > image_number-4
	{
		state = 2;
		player_id.window = 3;
		player_id.window_timer = 0;
		player_id.vsp = -17;
	}
}

if instance_exists(self) && state == 2
{
  if (bowjrPrep >= 0) {
  bowjrPrep--;
  x -= .6*spr_dir;
  image_index += 0.4;
	if (bowjrPrep == 14) {
		with player_id
		{
			other.sprite_index = sprite_get("bowserjr_flying");
		}
	}
  }
  player_id.bowserjr = noone;
  
  
  
  if (bowjrPrep == 0) {
	var jr_x = floor(x);
	var jr_y = floor(y);
	
	with(player_id) {
		spawnedBowser = false;
		sound_play(asset_get("sfx_spin_longer"));
		var BowJrHitbox = create_hitbox(AT_USPECIAL, 1, jr_x, jr_y-16);
		}
	instance_destroy();
	}
}

if instance_exists(self) && state == 3
{
	if image_alpha != 1
	{
		image_alpha += 0.1;
	}	
	
	if (uspecg >= 1)
	{
		uspecg--;
		if (uspecg >= 3)
		{
			hsp = -2.5*spr_dir;
		}
		else if (uspecg <= 3)
		{
			hsp += -0.5*spr_dir;
		}
		
	}

	
	if (uspecg == 0)
	{
		state = 4;
	}
}

if instance_exists(self) && state == 4
{
	var jr_x = floor(x);
	var jr_y = floor(y);
	
	with(player_id) 
	{
		spawnedBowser = false;
		sound_play(asset_get("sfx_spin_longer"));
		var BowJrHitbox = create_hitbox(AT_USPECIAL_GROUND, 1, jr_x, jr_y-16);
	}
	setDestroy = true;
}

if instance_exists(self) && state == 5
{	
	if chestanimate >= 1
	{
		chestanimate--;
	}
	
	switch (chestanimate)
	{
		case 30:
		{
			image_index = 1;
		}break;
		
		case 28:
		{
			image_index = 2;
		}break;
		
		case 22:
		{
			image_index = 3;
		}break;
		
		case 20:
		{
			image_index = 4;
		}break;
		
		case 18:
		{
			image_index = 5;
		}break;
		
		case 16:
		{
			image_index = 6;
			drop = true;
		}break;
	}
	
	if drop
	{
		ignores_walls = false;
    	can_be_grounded = true;
    	article_gravity = 1.2;
    	
    	if free
		{
		    vsp += article_gravity;
		}
	}
	else
	{
		with player_id
		{
			other.x = x+40*spr_dir;
			other.y = y-2;
		}
	}
	
	if chestanimate <= 1
	{
		image_alpha-=0.1;
		if image_alpha <= 0
		{
			setDestroy = true;
		}
	}
}

if instance_exists(self) && state == 6
{
	image_xscale = 2;
	image_yscale = 2;
	
	if (firevell_timer <= 200 && firevell_timer >= 188)
	{
		vsp = -0.2;
		depth = -5;
	}
	else if (firevell_timer <= 188 && firevell_timer >= 148)
	{
		vsp = 0;
		image_index+=0.25;
	}
	else if (firevell_timer <= 148 && firevell_timer >= 108)
	{
		image_index+=0.2;
	}
	else if (firevell_timer <= 108 && firevell_timer >= 70)
	{
		image_index+=0.25;
		depth = -3;
		vsp = -0.8;
	}
	else if (firevell_timer <= 70 && firevell_timer >= 30)
	{
		image_index+=0.25;
		vsp = .1;
		depth = -5;
	}
	
	switch (firevell_timer)
	{
		case 85:
		{
			with player_id
			{
				sound_play(asset_get("sfx_bird_sidespecial"));
			}
		}break;
		
		case 80:
		{
			with (player_id)
			{
				var firefeather1 = create_hitbox( AT_FSTRONG_2, 1, other.x+80*other.spr_dir, other.y-90);
				firefeather1.spr_dir = other.spr_dir;
				firefeather1.hsp = 20*other.spr_dir;
				firefeather1.vsp = 12;
				var firefeather2 = create_hitbox( AT_FSTRONG_2, 2, other.x+40*other.spr_dir, other.y-90);
				firefeather2.spr_dir = other.spr_dir;
				firefeather2.hsp = 13.5*other.spr_dir;
				firefeather2.vsp = 12;
				var firefeather3 = create_hitbox( AT_FSTRONG_2, 3, other.x+20*other.spr_dir, other.y-90);
				firefeather3.spr_dir = other.spr_dir;
				firefeather3.hsp = 6*other.spr_dir;
				firefeather3.vsp = 12;
				
				sound_play(asset_get("sfx_zetter_upb_hit"));
			}
		}break;
		
		case 180:
		{
			with player_id
			{
				sound_play(sound_get("oliviamoving"));
				sound_play(sound_get("oliviamoving"));
				sound_play(sound_get("oliviamoving"));
			}
		}break;
		
		case 171:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 166:
		{
			with player_id
			{
				sound_play(sound_get("oliviamoving"));
			}
		}break;
		
		case 161:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 150:
		{
			with player_id
			{
				sound_play(asset_get("sfx_zetter_shine_charged"));
			}
		}break;
		
		case 137:
		{
			with (player_id)
			{
				sound_play(asset_get("sfx_zetter_fireball_fire"));
				create_hitbox( AT_FSTRONG_2, 4, other.x+80*other.spr_dir, other.y+20);
			}
		}break;
		
		case 132:
		{
			with (player_id)
			{
				sound_play(asset_get("sfx_zetter_fireball_fire"));
				create_hitbox( AT_FSTRONG_2, 5, other.x+80*other.spr_dir, other.y+20);
			}
		}break;
		
		case 127:
		{
			with (player_id)
			{
				sound_play(asset_get("sfx_zetter_fireball_fire"));
				create_hitbox( AT_FSTRONG_2, 6, other.x+100*other.spr_dir, other.y+20);
			}
		}break;
		
		case 122:
		{
			with (player_id)
			{
				create_hitbox( AT_FSTRONG_2, 4, other.x+180*other.spr_dir, other.y);
			}
		}break;
		
		case 57:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 28:
		{
			with player_id
			{
				sound_play(sound_get("olivareturn"));
			}
		}break;
	}
	
	with (player_id)
	{
		move_cooldown[AT_FAIR] = 5;
		move_cooldown[AT_FSTRONG_2] = 5;
	}
	
	if (firevell_timer >= 1 && !hitpause)
	{
		firevell_timer--;
	}
	else
	{
		image_alpha-=0.2;
		
		if image_alpha <= 0
		{
			instance_destroy();
		}
	}
}

if instance_exists(self) && state == 7
{
	image_xscale = 2;
	image_yscale = 2;
	
	if (watervell_timer <= 200 && watervell_timer >= 188)
	{
		depth = -5;
	}
	else if (watervell_timer <= 188 && watervell_timer >= 148)
	{
		image_index+=0.4;
	}
	else if (watervell_timer <= 148 && watervell_timer >= 108)
	{
		image_index+=0.2;
	}
	else if (watervell_timer <= 108 && watervell_timer >= 80)
	{
		image_index+=0.2;
		depth = -4;
	}
	else if (watervell_timer <= 80 && watervell_timer >= 40)
	{
		image_index+=0.2;
		depth = -5;
	}
	
	if image_index <= 39 && image_index >= 38
	{
			vsp = .2;
	}
	
	switch (watervell_timer)
	{
		case 200:
		{
			with player_id
			{
				sound_play(sound_get("oliviamoving"));
				sound_play(sound_get("oliviamoving"));
				sound_play(sound_get("oliviamoving"));
			}
		}break;
		
		case 170:
		{
			sound_play(sound_get("oliviafolding"));
			sound_play(asset_get("sfx_zetter_shine_charged"));
		}break;
		
		case 123:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 2, other.x, other.y-20);
				if !hitpause
				{
					sound_play(sound_get("sploosh"));
				}
			}
		}break;
		
		case 118:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 3, other.x, other.y-50);
			}
		}break;
		
		case 113:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 3, other.x, other.y-70);
			}
		}break;
		
		case 108:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 4, other.x, other.y-80);
			}
		}break;
		
		case 98:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 5, other.x, other.y-90);
				if !hitpause
				{
					sound_play(sound_get("spwoosh"));
				}
			}
		}break;
		
		case 93:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 6, other.x, other.y-110);
			}
		}break;
		
		case 88:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 6, other.x, other.y-120);
				if !hitpause
				{
					sound_play(sound_get("spwoosh"));
				}
			}
		}break;
		
		case 83:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 6, other.x, other.y-120);
				create_hitbox(AT_USTRONG_2, 3, other.x, other.y-260);
			}
		}break;
		
		case 78:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 7, other.x+10*other.spr_dir, other.y-140);
				create_hitbox(AT_USTRONG_2, 3, other.x, other.y-260);
				if !hitpause
				{
					sound_play(sound_get("spwoosh"));
				}
			}
		}break;
		
		case 68:
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 8, other.x+10*other.spr_dir, other.y-160);
				if !hitpause
				{
					sound_play(sound_get("sploosh"));
				}
			}
		}break;
		
		case 92:
		{
			var waterspout1 = instance_create(x, y, "obj_article1");
			waterspout1.sprite_index = sprite_get("waterspout");
			waterspout1.state = 8;
			waterspout1.depth = -5;
			waterspout1.notbowser = true;
			waterspout1.hsp = 2.5;
			
			var waterspout2 = instance_create(x, y, "obj_article1");
			waterspout2.sprite_index = sprite_get("waterspout");
			waterspout2.state = 8;
			waterspout2.notbowser = true;
			waterspout2.depth = -5;
			waterspout2.spr_dir = -1;
			waterspout2.hsp = -2.5;
		}break;
		
		case 70:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 30:
		{
			with player_id
			{
				sound_play(sound_get("olivareturn"));
			}
		}break;
	}
	
	with (player_id)
	{	
		move_cooldown[AT_FAIR] = 5;
		move_cooldown[AT_USTRONG_2] = 5;
	}
	
	if (watervell_timer >= 1 && !hitpause)
	{
		watervell_timer--;
	}
	else
	{
		image_alpha-=0.2;
		
		if image_alpha <= 0
		{
			instance_destroy();
		}
	}
}

if instance_exists(self) && state == 8
{
	ignores_walls = false;
	image_index+=0.2;
	
	if (!collision_point( x+20, y+8, asset_get("par_block"), false, true ) 
	&& !collision_point( x+20, y+8, asset_get("par_jumpthrough"), false, true ))
	||
	( !collision_point( x-20, y+8, asset_get("par_block"), false, true ) 
	&& !collision_point( x-20, y+8, asset_get("par_jumpthrough"), false, true ))
	{
		hsp = 0;
	}
	
	if waterspout_timer <= 20
	{
		hsp *=0.8;
	}
	
	if abs(hsp) <= 2 && waterspout_timer <= 30
	{
		if image_xscale >= 0.02
		{
			image_xscale -= 0.02;
		}
	}
	
	if waterspout_timer >= 1 && !hitpause
	{
		waterspout_timer--;
		
		if (waterspout_timer % 3 == 0)
		{
			with player_id
			{
				create_hitbox(AT_USTRONG_2, 1, floor(other.x+other.hsp), floor(other.y-30));
			}
		}
	}
	else
	{
		image_alpha-=0.1;
		image_yscale -= 0.02;
		
		if image_alpha <= 0
		{
			setDestroy = true;
		}
	}
}

if instance_exists(self) && state == 9
{
	image_xscale = 2;
	image_yscale = 2;

	if (icevell_timer <= 260 && icevell_timer >= 248)
	{
		depth = -5;
	}
	else if (icevell_timer <= 248 && icevell_timer >= 208)
	{
		image_index+=0.2;
	}
	else if (icevell_timer <= 208 && icevell_timer >= 168)
	{
		image_index+=0.2;
	}
	else if (icevell_timer <= 168 && icevell_timer >= 140)
	{
		image_index+=0.25;
		depth = -4;
	}
	else if (icevell_timer <= 140 && icevell_timer >= 78)
	{
		image_index+=0.25;
		depth = -4;
	}
	
	if image_index <= 40 && image_index >= 39
	{
			vsp = .1;
	}
	
	
	switch (icevell_timer)
	{
		
		case 260:
		{
			with player_id
			{
				sound_play(sound_get("oliviamoving"));
				sound_play(sound_get("oliviamoving"));
				sound_play(sound_get("oliviamoving"));
			}
		}break;
		
		case 240:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 220:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 190:
		{
			sound_play(asset_get("sfx_zetter_shine_charged"));
		}break;
		
		case 187:
		{
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_back_air"));
			}
			
			with player_id
			{
				create_hitbox(AT_DSTRONG_2, 3, other.x+90*other.spr_dir, other.y-60);
				create_hitbox(AT_DSTRONG_2, 3, other.x+50*other.spr_dir, other.y-40);
				create_hitbox(AT_DSTRONG_2, 2, other.x-40*other.spr_dir, other.y-20);
			}
		}break;
		
		case 172:
		{
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_back_air"));
			}
			
			with player_id
			{
				create_hitbox(AT_DSTRONG_2, 5, other.x-70*other.spr_dir, other.y-55);
				create_hitbox(AT_DSTRONG_2, 5, other.x-50*other.spr_dir, other.y-40);
				create_hitbox(AT_DSTRONG_2, 4, other.x+30*other.spr_dir, other.y-20);
			}
		}break;
		
		case 150:
		{
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_shieldup"));
			}
		}break;
		
		case 144:
		{
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_end"));
			}
		}break;
		
		case 135:
		{
			with player_id
			{
				create_hitbox(AT_DSTRONG_2, 6, other.x-78*other.spr_dir, other.y-30);
			}
			
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_ftilt"));
			}
			
			var icechunk1 = instance_create(x-90*spr_dir, y, "obj_article1");
			icechunk1.sprite_index = sprite_get("icechunk");
			icechunk1.state = 10;
			icechunk1.depth = -5;
			icechunk1.player = player;
			icechunk1.spr_dir = -1;
			icechunk1.image_xscale = 2;
			icechunk1.image_yscale = 2;
			icechunk1.notbowser = true;
		}break;
		
		case 127:
		{
			with player_id
			{
				create_hitbox(AT_DSTRONG_2, 6, other.x-30*other.spr_dir, other.y-30);
			}
			
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_hammerstart"));
			}
			
			var icechunk2 = instance_create(x-30*spr_dir, y, "obj_article1");
			icechunk2.sprite_index = sprite_get("icechunk");
			icechunk2.state = 10;
			icechunk2.depth = -5;
			icechunk2.player = player;
			icechunk2.image_xscale = 2;
			icechunk2.image_yscale = 2;
			icechunk2.notbowser = true;
		}break;
		
		case 118:
		{
			with player_id
			{
				create_hitbox(AT_DSTRONG_2, 6, other.x+30*other.spr_dir, other.y-30);
			}
			
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_hammerstart"));
			}
			
			var icechunk3 = instance_create(x+30*spr_dir, y, "obj_article1");
			icechunk3.sprite_index = sprite_get("icechunk");
			icechunk3.state = 10;
			icechunk3.depth = -5;
			icechunk3.player = player;
			icechunk3.image_xscale = 2;
			icechunk3.image_yscale = 2;
			icechunk3.notbowser = true;
		}break;
		
		case 111:
		{
			with player_id
			{
				create_hitbox(AT_DSTRONG_2, 6, other.x+80*other.spr_dir, other.y-30);
			}
			
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_hammerstart"));
			}
			
			var icechunk4 = instance_create(x+90*spr_dir, y, "obj_article1");
			icechunk4.sprite_index = sprite_get("icechunk");
			icechunk4.state = 10;
			icechunk4.spr_dir = -1;
			icechunk4.depth = -5;
			icechunk4.player = player;
			icechunk4.image_xscale = 2;
			icechunk4.image_yscale = 2;
			icechunk4.notbowser = true;
		}break;
		
		case 80:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 60:
		{
			with player_id
			{
				sound_play(sound_get("olivareturn"));
			}
		}break;
	}
	
	
	
	
	with (player_id)
	{	
		move_cooldown[AT_FAIR] = 5;
		move_cooldown[AT_DSTRONG_2] = 5;
	}
	
	if (icevell_timer >= 30 && !hitpause)
	{
		icevell_timer--;
	}
	else
	{
		image_alpha-=0.2;
		
		if image_alpha <= 0
		{
			instance_destroy();
		}
	}
}

if instance_exists(self) && ( state == 10)
{
	image_xscale = 2;
	image_yscale = 2;
	
	if icechunk_timer >= 1
	{
		icechunk_timer--;
	}
	
	if image_index <= 5 && sprite_index == sprite_get("icechunk")
	{
		image_index+=1;
	}
	
	if image_index >= 6 && sprite_index == sprite_get("icechunk") && icechunk_timer <= 20
	{
		var my_x = x;
		var my_y = y;
		
		with player_id
		{
			spawn_hit_fx( my_x, my_y, icechunkbrk);
			
			if !hitpause
			{
				sound_play(asset_get("sfx_ice_shatter"));
			}
		}
		if collision_point(x+40, y+4, asset_get("par_block"), false, true ) &&
		collision_point(x-40, y+4, asset_get("par_block"), false, true )
		|| collision_point(x+40, y+4, asset_get("par_jumpthrough"), false, true )
		&& collision_point(x-40, y+4, asset_get("par_jumpthrough"), false, true )
		{
			with player_id
			{
				var icefloor = create_hitbox(AT_DSTRONG_2, 1, other.x, other.y-2);
				icefloor.spr_dir = other.spr_dir;
			}
		}
		instance_destroy();
	}
}

if instance_exists(self) && ( state == 11)
{
	image_xscale = 2;
	image_yscale = 2;
	
	if earthvell_timer <= 240 && earthvell_timer >= 202
	{
		image_index+=0.25;
	}
	else
	if earthvell_timer >= 60 && earthvell_timer <= 202
	{
		image_index+=0.2;
		depth = -5;
	}
	else
	if earthvell_timer <= 60
	{
		depth = -3;
		
		if image_index <= 46
		{
			image_index+=0.25
		}
	}
	
	switch (earthvell_timer)
	{
		case 240:
		{
			with player_id
			{
				sound_play(sound_get("oliviamoving"));
				sound_play(sound_get("oliviamoving"));
				sound_play(sound_get("oliviamoving"));
			}
		}break;
		
		case 200:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 180:
		{
			sound_play(asset_get("sfx_zetter_shine_charged"));
		}break;
		
		case 165:
		{
				var earthvisual1 = instance_create(x-80, y+150, "obj_article1");
				earthvisual1.state = 12;
				
				var earthvisual2 = instance_create(x-144, y+150, "obj_article1");
				earthvisual2.state = 12;
				earthvisual2.earthtimer = 90;
				
				var earthvisual3 = instance_create(x+80, y+150, "obj_article1");
				earthvisual3.state = 12;
				
				var earthvisual4 = instance_create(x+144, y+150, "obj_article1");
				earthvisual4.state = 12;
				earthvisual4.earthtimer = 90;
				
				sound_play(asset_get("sfx_shovel_swing_heavy1"));
				sound_play(asset_get("sfx_kragg_roll_start"));
		}break;
		
		case 160:
		{
			sound_play(asset_get("sfx_kragg_roll_start"));
		}break;
		
		case 155:
		{
			sound_play(asset_get("sfx_blow_heavy1"));
			with player_id
			{
				create_hitbox(AT_DSPECIAL_2, 2, other.x, other.y-32);
			}
			sound_play(asset_get("sfx_kragg_rock_shatter"));
		}break;
		
		case 150:
		{
			sound_play(asset_get("sfx_kragg_roll_start"));
		}break;
		
		case 80:
		{
			if ive_earthed == false
			{
				with player_id
				{
					da_earth = true;
				}
				ive_earthed = true;
			}
		}break;
		
		case 50:
		{
			with player_id
			{
				sound_play(sound_get("oliviafolding"));
			}
		}break;
		
		case 30:
		{
			with player_id
			{
				sound_play(sound_get("olivareturn"));
			}
		}break;
	}
	
	with (player_id)
	{	
		move_cooldown[AT_FAIR] = 5;
		move_cooldown[AT_DSPECIAL_2] = 5;
	}
	
	if (earthvell_timer >= 1 && !hitpause)
	{
		earthvell_timer--;
	}
	else
	{
		image_alpha-=0.2;
		
		if image_alpha <= 0
		{
			instance_destroy();
		}
	}
}

if instance_exists(self) && ( state == 12)
{
	dralpha+=0.05;
	depth = 1;
    if !hitpause
    {
        earthtimer --;
    }
    if earthtimer >= 64 && earthtimer <= 80
    {
        vsp = clamp(vsp, -20, 0)
        vsp -= 2;
        
        if earthtimer == 66
        {
        	with player_id
        	{
        		create_hitbox(AT_DSPECIAL_2, 1, other.x, other.y+64);
        	}
        }
    }
    else if earthtimer <= 64 && earthtimer >= 40
    {
        vsp = 0;
    }
    else if earthtimer <= 40
    {
        if earthtimer >= 20
        {
            vsp = clamp(vsp, 0, 10)
        }
        vsp += 0.5;
    }
    
    var stage_y = get_stage_data(SD_BOTTOM_BLASTZONE);

    if y-640 >= stage_y
    {   
        instance_destroy();
    }

}

if instance_exists(self) && setDestroy != 0 {
	instance_destroy();
}