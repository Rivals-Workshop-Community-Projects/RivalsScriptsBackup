var newh = cheight
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	if (attack == AT_USPECIAL || attack == AT_FSPECIAL || (attack == AT_FSTRONG && window <= 4))
	{
		newh += 46
	}
	if (attack == AT_DATTACK || attack == AT_UAIR || attack == AT_UTILT || attack == AT_BAIR)
	{
		newh += 18
	}
}
char_height+=(newh-char_height)/6


if ((state == PS_FIRST_JUMP || state == PS_WALL_JUMP) && carfuel <= 100)
{
	carfuel = 200;
}



// Rainbow Alternate Costume code. All credit goes to Age#5636 in the Rivals Discord.
if (get_player_color(player) = 11)
{
	hue+=.5 if hue>255 hue-=255;
	color_rgb = make_color_rgb(210, 50, 150);
	hue2 = (color_get_hue(color_rgb)+hue) mod 255;
	color_hsv = make_color_hsv(hue2, color_get_saturation(color_rgb), color_get_value(color_rgb)); 
	set_color_profile_slot(11, 0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
}
init_shader();


// Intro Animation
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}


// Trummel Codec
if (trummelcodec_id != noone)
{
	if (trummelcodec_id.codecindex == 7)
	{
		if (trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1)
		{
			sound_play(sound_get("music_win_dog"), true, false);
		}
	}
	if ((trummelcodec_id.codecindex == 17) || !trummelcodec_id.codec)
	{
		sound_stop(sound_get("music_win_dog"));
	}
}
if trummelcodecneeded {
    trummelcodec = 17;
    trummelcodecmax = 13;
    trummelcodecsprite1 = sprite_get("dogtalk");
    trummelcodecsprite2 = sprite_get("dogtalk");

    //Page 0
    trummelcodecspeaker[0] = 2;
    trummelcodecexpression[0] = 0;

    trummelcodecline[0,1] = "that's just a dog";
    trummelcodecline[0,2] = "";
    trummelcodecline[0,3] = "";
    trummelcodecline[0,4] = "what he doin' here?";
    
    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 5;

    trummelcodecline[1,1] = "That's not any dog...";
    trummelcodecline[1,2] = "That's the Annoying Dog!";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";
    
    //Page 2
    trummelcodecspeaker[2] = 2;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = "idk bro";
    trummelcodecline[2,2] = "";
    trummelcodecline[2,3] = "that just seems like a";
    trummelcodecline[2,4] = "cute little dog to me";
    
    //Page 3
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 2;

    trummelcodecline[3,1] = "One thing to know is that";
    trummelcodecline[3,2] = "this dog is very talented!";
    trummelcodecline[3,3] = "He's even managed to";
    trummelcodecline[3,4] = "make full games!";
    
    //Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "But he supposedly";
    trummelcodecline[4,2] = "appears at very";
    trummelcodecline[4,3] = "inconvenient times...";
    trummelcodecline[4,4] = "";
    
    //Page 5
    trummelcodecspeaker[5] = 2;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "what d'ya mean";
    trummelcodecline[5,2] = "by inconvenient";
    trummelcodecline[5,3] = "times...?";
    trummelcodecline[5,4] = "";
    
    //Page 6
    trummelcodecspeaker[6] = 1;
    trummelcodecexpression[6] = 2;

    trummelcodecline[6,1] = "Like when you're in";
    trummelcodecline[6,2] = "the middle of some type";
    trummelcodecline[6,3] = "of important-";
    trummelcodecline[6,4] = "";
    
    //Page 7
    trummelcodecspeaker[7] = 3;
    trummelcodecexpression[7] = 0;

    trummelcodecline[7,1] = "Bark";
    trummelcodecline[7,2] = "";
    trummelcodecline[7,3] = "";
    trummelcodecline[7,4] = "";
    
    //Page 8
    trummelcodecspeaker[8] = 1;
    trummelcodecexpression[8] = 0;

    trummelcodecline[8,1] = "What...?";
    trummelcodecline[8,2] = "";
    trummelcodecline[8,3] = "";
    trummelcodecline[8,4] = "";
    
    //Page 9
    trummelcodecspeaker[9] = 3;
    trummelcodecexpression[9] = 1;

    trummelcodecline[9,1] = "It seems the";
    trummelcodecline[9,2] = "dog has deleted";
    trummelcodecline[9,3] = "the rest of the";
    trummelcodecline[9,4] = "conversation.";
	
	//Page 10
    trummelcodecspeaker[10] = 1;
    trummelcodecexpression[10] = 5;
 
    trummelcodecline[10,1] = "HOW DID YOU-";
    trummelcodecline[10,2] = "";
    trummelcodecline[10,3] = "";
    trummelcodecline[10,4] = "";
 
    //Page 11
    trummelcodecspeaker[11] = 3;
    trummelcodecexpression[11] = 0;
 
    trummelcodecline[11,1] = "Bark";
    trummelcodecline[11,2] = "";
    trummelcodecline[11,3] = "";
    trummelcodecline[11,4] = "";
   
    //Page 12
    trummelcodecspeaker[12] = 2;
    trummelcodecexpression[12] = 1;
 
    trummelcodecline[12,1] = "Bark";
    trummelcodecline[12,2] = "";
    trummelcodecline[12,3] = "";
    trummelcodecline[12,4] = "";
   
    //Page 13
    trummelcodecspeaker[13] = 1;
    trummelcodecexpression[13] = 4;
 
    trummelcodecline[13,1] = "No wait! I wasn't";
    trummelcodecline[13,2] = "finished talking yet!";
    trummelcodecline[13,3] = "";
    trummelcodecline[13,4] = "";
}



// Kirby functionality

if swallowed {
	swallowed = 0;
	var ability_spr = sprite_get("kirby");
	var proj_spr = sprite_get("kirby_proj");
	//var proj_spr_left = sprite_get("kirby_proj_left");
	var ability_spr_air = sprite_get("kirby_air");
	var ability_hurt = sprite_get("kirby_hurt");
	var ability_hurt_air = sprite_get("kirby_hurt_air");
	var sfx_kirby = sound_get("sfx_kirby");
	var sfx_hit = sound_get("sfx_hit2");
	var myicon = sprite_get("kirbyicon");
	
	with enemykirby{
		newicon = myicon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 3);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr_air);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_hurt_air);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sfx_kirby);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);

		set_num_hitboxes(AT_EXTRA_3, 1);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, sfx_hit);
		
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, proj_spr);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, proj_spr);

	}
}

/*
if enemykirby != noone 
{ //if kirby is in a match & swallowed
    with oPlayer 
	{ //Run through all players
		if (spr_dir == -1)
		{
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, proj_spr_left);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, proj_spr_left);
        }
		else
		{
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, proj_spr);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, proj_spr);
		}
	}
}
*/