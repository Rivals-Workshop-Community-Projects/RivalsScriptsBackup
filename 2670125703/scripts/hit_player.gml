// Mine

if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2)
{
	sound_stop(sfx_dbfz_swipe_sword1);
}

if (my_hitboxID.attack == AT_NAIR)
{	
	old_vsp = -2.0;
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1)
{	
	set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
	
	window = 4;
    window_timer = 0;
	destroy_hitboxes();
	
	var edgeliner = random_func(0, 8, true);		
	switch(edgeliner) 
	{
		case 0:
		sound_play(sound_get("sfx_dairRNG1"), false, noone, 2);	
		break;
			
		case 1:
		sound_play(sound_get("sfx_dairRNG1"), false, noone, 2);	
		break;
				
		case 2:
		sound_play(sound_get("sfx_dairRNG2"), false, noone, 2);	
		break;
				
		case 3:
		sound_play(sound_get("sfx_dairRNG3"), false, noone, 2);	
		break;
	}		
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 3)
{	
	old_vsp = -8.0;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && free)
{	
	old_vsp = 0;
}

//	Muno's
// 	code for kamehameha

if (my_hitboxID.attack == AT_NSPECIAL && !has_updated_beam_kb)
{
	has_updated_beam_kb = true;
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, lerp(7, 12, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, lerp(0.5, 1.6, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, lerp(8, 20, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, lerp(0.5, 1.5, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, lerp(2, 22, beam_juice / beam_juice_max));
	set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, round(lerp(55, 35, beam_juice / beam_juice_max)));
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2 && my_hitboxID.hitpause > 15)
{
	sound_play(sfx_dbfz_hit_broken);
}