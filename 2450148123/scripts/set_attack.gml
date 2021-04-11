user_event(13); 



if (!free) && (attack != AT_FSPECIAL && attack != AT_FTILT && attack != AT_DATTACK && attack != AT_FSTRONG)
{
	spr_dir=looking;
}



//DESTRUCTION PILLAR
if (dp>=3) and (attack_pressed || special_pressed) and (looking == start_dir[2]) {
	
    attack=AT_USPECIAL_2;
    spr_dir=start_dir[2];
    dp = 0;
    trueinput = true;
    

    
    
    
}

//REENTRY
else if (hcf>=3) and (attack_pressed || special_pressed) and (looking == start_dir[3]) {
	
	if (free)
    attack=AT_DSPECIAL_2;
    else if (!free)
    attack=AT_NSPECIAL_2;
    
    spr_dir=start_dir[3];
    hcf = 0;
    trueinput = true;
    

    
}


//CRESCENT CUT
else if (qcf>=3) and (attack_pressed || special_pressed) and (looking == start_dir[0]) {
	
	if (!free)
    attack=AT_NSPECIAL_2;
    else
    attack=AT_NSPECIAL_AIR_2;
    
    spr_dir=start_dir[0];
    qcf = 0;
    trueinput = true;
    
}


//NORTH KNUCKLE
else if (qcb>=3) and (attack_pressed || special_pressed) and (looking == start_dir[1]) {
	
    attack=AT_FSPECIAL_2;
    spr_dir=start_dir[1];
    qcb = 0;
    left_down = false;
    right_down = false;
    stopbreverse = true;
    polarhit = false;
    trueinput = true;

    
    
    
}



else
{
	trueinput = false;
}



if (attack == AT_NSPECIAL )
{
	if fs_charge = 200 && !trueinput
    fs_force_fs = true;
	
	else{
		if free
	    attack = AT_NSPECIAL_AIR;
	}
}


if (attack == AT_NSPECIAL_2 )
{
	if free
    attack = AT_NSPECIAL_AIR_2;
}


if ((attack == AT_FSPECIAL || attack == AT_FSPECIAL_2) && northknuckle_used)
{
	move_cooldown[attack] = 1;
}


//STAR POWER
if (install && attack_down && special_down)
{
	move_cooldown[AT_DSPECIAL] = 1;
	move_cooldown[AT_NSPECIAL] = 1;
	attack=AT_EXTRA_2;
	star_meter = 0;
}

else if (sgs>=3) && special_down && attack_down && !free && star_meter == 100{
	move_cooldown[AT_DSPECIAL] = 1;
	move_cooldown[AT_NSPECIAL] = 1;
    attack=AT_EXTRA_1;
    sgs = 0;
}

else if (attack == AT_DSPECIAL && (!can_dspec || !free)){
	move_cooldown[AT_DSPECIAL] = 1;
    attack = AT_NSPECIAL;
}



//install check hitbox count
if (install)
{
	
	switch (attack)
	{
		
		case AT_FTILT:
		case AT_JAB:
		case AT_USTRONG:
		
		set_num_hitboxes(attack, 4);
		
		break;
		break;
		break;
		
		case AT_UTILT:
		case AT_DTILT:
		case AT_DSTRONG:
		case AT_BAIR:
		case AT_UAIR:
		
		set_num_hitboxes(attack, 2);
		
		break;	
		break;
		break;
		break;
		break;
		
		
		case AT_NAIR:
		case AT_FSTRONG:
		
		set_num_hitboxes(attack, 6);
		
		break;
		break;
		
		case AT_DAIR:
		set_num_hitboxes(attack, 9);
		break;
		

		
		case AT_FAIR:
		set_num_hitboxes(attack, 3);
		break;
		

		case AT_DATTACK:
		set_num_hitboxes(attack, 5);
		break;
	
		
	}
}
else
{
	reset_num_hitboxes( attack );
}




if (install)
{
	// set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .65);
	// set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .85);
	// set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .65);
	// set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .75);
	// set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
	// set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8);
	
	var hboxnum = get_num_hitboxes( attack );
		
	for (var f = hboxnum; f > 0; f--)
	{
				reset_hitbox_value(attack, f, HG_BASE_KNOCKBACK);
				reset_hitbox_value(attack, f, HG_KNOCKBACK_SCALING);
	}
		
			for (var f = hboxnum; f > 0; f--)
			{
				var kb = get_hitbox_value(attack, f, HG_BASE_KNOCKBACK);
				var kbg = get_hitbox_value(attack, f, HG_KNOCKBACK_SCALING);
				if (get_hitbox_value(attack, f, HG_PROJECTILE_SPRITE) != sprite_get("star_proj"))
				{
				set_hitbox_value(attack, f, HG_BASE_KNOCKBACK, kb * 1.25);
				set_hitbox_value(attack, f, HG_KNOCKBACK_SCALING, kbg * 1.25);
				}
				
			}
}else
{
	var hboxnum = get_num_hitboxes( attack );
		
	for (var f = hboxnum f > 0; f--)
	{
				reset_hitbox_value(attack, f, HG_BASE_KNOCKBACK);
				reset_hitbox_value(attack, f, HG_KNOCKBACK_SCALING);
	}
}


	



//hitsound rng
var soundrng;
var soundrng2;
switch (attack)
{
	
	
	case AT_JAB:
	soundrng = random_func( 1, 2, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("jab" + string(soundrng)));
	break;
	
	case AT_FTILT:
	soundrng = random_func( 1, 5, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	break;
	
	case AT_DTILT:
	case 49:
	soundrng = random_func( 1, 5, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	break;
	break;

	case AT_UTILT:
	soundrng = random_func( 1, 3, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("launch" + string(soundrng)));
	break;
	
	case AT_FSTRONG:
	soundrng = random_func( 1, 3, true ) + 1;
	soundrng2 = random_func( 1, 2, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("lightstab" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("stab" + string(soundrng2)));
	break;
	
	case AT_DSTRONG:
	soundrng = random_func( 1, 3, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("lightstab" + string(soundrng)));
	break;
	
	case AT_USTRONG:
	soundrng = random_func( 1, 2, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("stab" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("stab" + string(soundrng)));
	break;
	
	case AT_NAIR:
	soundrng = random_func( 1, 5, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	set_hitbox_value(attack, 3, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	
	break;
	
	case AT_DAIR:
	soundrng = random_func( 1, 2, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("stab" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("stab" + string(soundrng)));
	set_hitbox_value(attack, 3, HG_HIT_SFX, sound_get("stab" + string(soundrng)));
	set_hitbox_value(attack, 4, HG_HIT_SFX, sound_get("stab" + string(soundrng)));
	set_hitbox_value(attack, 5, HG_HIT_SFX, sound_get("stab" + string(soundrng)));
	set_hitbox_value(attack, 6, HG_HIT_SFX, sound_get("stab" + string(soundrng)));
	break;
	
	case AT_BAIR:
	soundrng = random_func( 1, 3, true ) + 1;
	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("lightstab" + string(soundrng)));
	break;
	
	case AT_FAIR:
	soundrng = random_func( 1, 5, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	break;
	
	case AT_UAIR:
	soundrng = random_func( 1, 5, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	break;
	
	case AT_DATTACK:
	soundrng = random_func( 1, 5, true ) + 1;
	soundrng2 = random_func( 1, 2, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("stab" + string(soundrng2)));
	break;
	
	case AT_NSPECIAL:
	case AT_NSPECIAL_AIR:
	case AT_NSPECIAL_2:
	case AT_EXTRA_3:
	soundrng = random_func( 1, 3, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("lightstab" + string(soundrng)));
	break;
	break;
	break;
	break;
	
	case AT_DSPECIAL:
	case AT_DSPECIAL_2:
	soundrng = random_func( 1, 5, true ) + 1;
	soundrng2 = random_func( 1, 3, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("launch" + string(soundrng2)));
	break;
	break;
	
	
	case AT_USPECIAL:
	case AT_USPECIAL_2:
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("speciallaunch1"));
	break;
	break;
	
	case AT_EXTRA_2:
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("speciallaunch1"));
	break;
	
	case AT_TAUNT:
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("speciallaunch1"));
	break;
	
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	soundrng = random_func( 1, 5, true ) + 1;
	set_hitbox_value(attack, 1, HG_HIT_SFX, sound_get("punch" + string(soundrng)));
	set_hitbox_value(attack, 2, HG_HIT_SFX, sound_get("speciallaunch1"));
	break;
	break;
}




