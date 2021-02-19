// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL)
{
	if (window_timer == 1)
	{
		bombEffect = 0;
	}
	if (window_timer == 10)
	{
		anim++;
		if (anim == 60)
			anim = 0;
		if (down_down)
		{
			bombEffect = -1;
			if (lastEffect == -1)
				bombStale = true;
			sound_play(sound_get("menu_sound"));
		}
		else if (up_down)
		{
			bombEffect = -2;
			if (lastEffect == -2)
				bombStale = true;
			sound_play(sound_get("menu_sound"));
		}
		else if (left_down)
		{
			bombEffect = -3;
			if (lastEffect == -3)
				bombStale = true;
			sound_play(sound_get("menu_sound"));
		}
		else if (right_down)
		{
			bombEffect = 11;
			if (lastEffect == 11)
				bombStale = true;
			sound_play(sound_get("menu_sound"));
		}
		else if (special_pressed || shield_pressed)
		{
			sound_play(sound_get("menu_deny"));
		}
		else
		{
			if (left_pressed || down_pressed || right_pressed || up_pressed)
				sound_play(sound_get("menu_deny"));
			window_timer--;
		}
		
	}
}


if (attack == AT_USTRONG) 
{
	if (window == 2 && window_timer == 1)
	{
		bomb = instance_create(x,y-40,"obj_article1");
		bomb.depth = depth-5;
	}
	if (instance_exists(bomb))
	{
	    if (!joy_pad_idle)
	    {
		    throwdir = 80 + (-10*(joy_dir < 60 or joy_dir > 300) + 10*(joy_dir > 120 && joy_dir < 240))*spr_dir;
	    } 
	    else 
	        throwdir = 80;
		bomb.free = 1;
		bomb.stasis = 1;

		if (window == 3 && window_timer == 2 )
		{
			bomb.hsp = lengthdir_x(12,throwdir)*spr_dir;
			bomb.vsp = lengthdir_y(8.5 + strong_charge/10,throwdir);
			bomb.projectile = true;
		    bomb.stasis = 0;
		    bomb.img_vsp = 0.2*spr_dir;
			bomb = noone;
			move_cooldown[AT_USTRONG] = 60;
		}
	}
}

if (attack == AT_FAIR || attack == AT_FTILT) 
{
	if (window == 3)
	{
			move_cooldown[AT_FAIR] = 30;
			move_cooldown[AT_FTILT] = 30;
	}
}


if (attack == AT_FSPECIAL) 
{
	gotWave = false;
	if (window == 1 && window_timer == 3)
	{
		wave = instance_create(x + 5 * spr_dir,y,"obj_article2");
		wave.depth = depth-3;
		
		wave.spr_dir = spr_dir;
		
		wave_cancel = false;
	}
	else if (window == 2 && jump_pressed && wave_cancel)
	{
		window = 3;
		window_timer = 0;
	}
	else if (window == 2 && !special_down && wave_cancel)
	{
		window = 3;
		window_timer = 0;
	}
	else if (window == 2)
	{
		hsp = 7 * wave.spr_dir + 2 * right_down - 2 * left_down;
		if (window_timer == 31)
			window_timer = 0;
		else if (window_timer == 16)
			wave_cancel = true;
	}
}

if (attack == AT_DSPECIAL) 
{
	vat_usable = false;
	if (window == 2 && window_timer == 6 && vat == noone)
	{
		vat = instance_create(x,y,"obj_article_solid");
		vat.depth = depth-3;
		vat.sprite_index = sprite_get("vatSpawn");
		vat.mask_index = sprite_get("vat");
		vat.image_speed = 1;
		vat.can_be_grounded = true;
		vat.ignores_walls = false;
		vat.free = true;
		vat.weight = 1;
		vat.hitboxed = 0;
		vat.hsp = 0;
		vat.vsp = 0;
	
		vat.time = 0;
		
		sound_play(sound_get("plague_flask_augment"));
		
		hsp = 0;
	
	}
}

if (attack == AT_DSTRONG)
{
	if (window == 2)
	{
		if (window_timer == 1)
		{
			spawn_hit_fx(x + 20, y, hit_fx_create(sprite_get("bombPillar"),30));
			spawn_hit_fx(x - 20, y, hit_fx_create(sprite_get("bombPillar"),30));
			sound_play(asset_get("sfx_burnapplied"));
		}
		if (window_timer == 11)
		{
			spawn_hit_fx(x + 60, y, hit_fx_create(sprite_get("bombPillar"),30));
			spawn_hit_fx(x - 60, y, hit_fx_create(sprite_get("bombPillar"),30));
			sound_play(asset_get("sfx_burnapplied"));
		}
		if (window_timer == 21)
		{
			spawn_hit_fx(x + 100, y, hit_fx_create(sprite_get("bombPillar"),30));
			spawn_hit_fx(x - 100, y, hit_fx_create(sprite_get("bombPillar"),30));
			sound_play(asset_get("sfx_burnapplied"));
		}
	}
	
}

if (attack == AT_TAUNT)
{
	if (window == 1 && window_timer == 48)
	{
		if (taunt_down)
		{
			window_timer = 0;
		}
	}
}

//CODED BY HOWEAL TANKAA
//TAKE INSPIRATION FREELY

