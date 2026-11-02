var newh = cheight
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	if (attack == AT_USPECIAL || attack == AT_FSPECIAL || (attack == AT_FSTRONG && window <= 4))
	{
		newh += 46
	}
	if (attack == AT_UAIR || attack == AT_UTILT || attack == AT_BAIR || can_taunt_dance == 1)
	{
		newh += 18
	}
}
char_height+=(newh-char_height)/6



if ((state == PS_FIRST_JUMP || state == PS_WALL_JUMP) && carfuel <= 100)
{
	carfuel = 200;
}

if (state == PS_WALL_JUMP && chicken_climb)
{
	set_attack(AT_EXTRA_1);
}

if (state == PS_IDLE || state == PS_LAND || state == PS_WAVELAND || state == PS_RESPAWN || state == PS_WALK || state == PS_DASH)
{
	chicken_climb = 1;
	sound_stop( sound_get( "music_AndNowForTodaysSponsors" ) );
	sound_stop( sound_get( "music_BlackKnife" ) );
	can_taunt_dance = 0;
	canchicken_sfx = 1;
}

if (celebrate_timer > 0)
{
	celebrate_timer = celebrate_timer - 1;
}



if (get_player_color(player) == 12)
{
		//AFTERIMAGES
	    current_afterimages = min(current_afterimages + 1, total_afterimages);
	    index_afterimages = (index_afterimages + 1) % total_afterimages;
		
		var previous_afterimage;
		if (index_afterimages - 1 = -1)
		{
			previous_afterimage = afterimages[19]
		}
		else
		{
			previous_afterimage = afterimages[index_afterimages - 1]
		}
		
	    afterimages[index_afterimages] = {
			ind: index_afterimages,
			spr: sprite_index,
			img: image_index,
			sprdir: spr_dir,
			opacity: 0.5,
			prevx: x,
			prevy: y,
	    }
}

// Rainbow Alternate Costume code. All credit goes to Age#5636 in the Rivals Discord.
if (get_player_color(player) == 13)
{
	hue+=.5 if hue>255 hue-=255;
	color_rgb = make_color_rgb(210, 50, 150);
	hue2 = (color_get_hue(color_rgb)+hue) mod 255;
	color_hsv = make_color_hsv(hue2, color_get_saturation(color_rgb), color_get_value(color_rgb)); 
	set_color_profile_slot(13, 0, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv));
}

init_shader();


// Intro Animation
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (godmode && opponent_tracker)
{
	runeA = 1;
	runeB = 1;
	runeC = 1;
	runeD = 1;
	runeE = 1;
	runeF = 1;
	runeG = 1;
	runeH = 1;
	runeI = 1;
	runeJ = 1;
	bigshot = hit_fx_create(sprite_get("bigshot_effect"), 30);
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 30);
	runeK = 1;
	runeL = 1;
	runeM = 1;
	runeN = 1;
	runeO = 1;
	set_victory_theme(sound_get("music_win_funny"));
	opponent_tracker = 0;
}

if (deltarune_mode && opponent_tracker)
{
	set_victory_theme(sound_get("music_win_check"));
	opponent_tracker = 0;
}

if (danganronpa_spotted && opponent_tracker)
{
	set_victory_theme(sound_get("music_win_inukuma"));
	opponent_tracker = 0;
}

//create_afterimage();
//update_afterimage();

//#define create_afterimage

// if !(get_gameplay_time()%120)
// {
// 	spawn_hit_fx(x + after_move,y, afterim);
// 	after_move = 0;
// }
// 	after_move += 4;

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



with (oPlayer)
{
	if ((url == "1871153050" // 100% Accurate Fox
			|| url == "1980762597" // Puff
			|| url == "1993556113" // Cloud
			|| url == "2001529199" // Kirbo
			|| url == "2000855966" // Wolf
			|| url == "2013448650" // Joker
			|| url == "1988220395" // Samus
			|| url == "1970731843" // Meta Knight
			|| url == "1877253352" // Falco
			|| url == "1890617624" // Ronald
			|| url == "1979475100" // 100% Accurate Ultra Turbo Ganondorf
			|| url == "1987379223" // 100% Accurate Accurate-er Jigglypuff
			|| url == "1988068773" // SSGSS 100% Fox (Super Sayain Blue)
			|| url == "2003736618" // 250% Accurate Cloud
			|| url == "1867634411" // The Duane
			|| url == "2043149282" // 100% ULTRA INSTINCT COSMIC ULTRA RONALD
			|| url == "1921165510" // Hol Horse
			|| url == "1925669654" // Dio
			|| url == "1883980678" // OP Dio
			|| url == "2399885472" // Dio OP
			|| url == "1870497354" // DIO(W.I.P)
			|| url == "1878447286" // Dio Brando
			|| url == "1884612123" // OP Jotaro
			|| url == "3633126880" // Tobdog
		) && other.godmode == 0)
	{
		other.godmode = 1;
	}
	
	// IF YOU ARE A DELTARUNE MOD CREATOR AND CARE ENOUGH TO BE ADDED TO THIS LIST
	// CONTACT ME ON DISCORD @.aestha
	if ((url == "1867608473" // Kris
			|| url == "2237173861" // Classic Kris
			|| url == "2811835840" // SSL Kris
			|| url == "3527479157" // HERO_SWORD
			|| url == "3640699985" // Susie, The Axe of Justice
			|| url == "3729261405" // The Roaring Knight
			|| url == "2904134945" // Noelle Holiday
			|| url == "3578334509" // Lancer DE
			|| url == "3496635772" // Mr (Ant) Tenna by Whispernyan
			|| url == "3821563445" // Mr. Ant Tenna by Harbige12
			|| url == "3776943016" // Tenna by Knocker
			|| url == "2249417003" // Ralsei (with gun)
			|| url == "3818783352" // Ralsei by Flophawk
			|| url == "3559984272" // Gerson, The Hammer of Justice
			|| url == "3689685257" // Old Man (Gerson)
			|| url == "3757487300" // Flowery by Whispernyan
			|| url == "3759215271" // Flowery by Iris
			|| url == "3818485608" // Flowery by Spider Boi
			|| url == "3651454354" // Jevil by Cheezits
			|| url == "2644734546" // Jevil by Sanda
			|| url == "3617490027" // Jevil with Chair
			|| url == "2642265963" // Spamton by Mallow
			|| url == "2815355567" // Spamton Neo by Endy
			|| url == "2634541509" // Spamton by AwesomeAlen11
			|| url == "2801845930" // Spamton Neo by V_Force
			|| url == "3562561639" // Ralsei by Spud
			|| url == "2631618904" // Susie by squidaccus
			|| url == "2627476892" // Lancer Legacy
			|| url == "3766817118" // Soul
			|| url == "2705506566" // Tasque Manager
			|| url == "3524891582" // Queen
			|| url == "3822381760" // Queen by Artist of Seer
			|| url == "3292951946" // Hex
			|| url == "3765012532" // You from Ribbit Mod
			|| url == "3697074701" // Junkil
			|| url == "3654095435" // Roaring Knight by gamerbruce2022
			|| url == "3825652707" // Roaring Knight by Dakurai
			|| url == "3820459728" // The Original              Starwalker by DeltaParallax
			|| url == "3823217649" // Watercooler by Hona
			|| url == "3827884151" // Aqua by Hona
			|| url == "3773073086" // Vessel by ZekeD2011
			
		) && other.deltarune_mode == 0)
	{
		other.deltarune_mode = 1;
	}
	
	
	if ((url == "2170728238" // Monokuma by Ghostabo
			|| url == "1869737242" // Monokuma by Mixi
			|| url == "1940721668" // Komaru Naegi
			|| url == "2426361313" // Nagito Komaeda
			|| url == "2816162758" // Masaru Daimon
			|| url == "2819136539" // Nagisa Shingetsu
			|| url == "2596284015" // Setsuka Chiebukuro
		) && other.danganronpa_spotted == 0)
	{
		other.danganronpa_spotted = 1;
	}

	if (url == "1868756032")
	{
		kirby_ability_spr = other.kirby_ability_spr
		kirby_ability_spr_air = other.kirby_ability_spr_air
		kirby_ability_hurt = other.kirby_ability_hurt
		kirby_ability_hurt_air = other.kirby_ability_hurt_air
		kirby_sfx = other.kirby_sfx
		kirby_hit = other.kirby_hit
		kirby_icon = other.kirby_icon
		if spr_dir == -1
		{
			kirby_proj_spr = other.kirby_proj_spr_left
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, kirby_proj_spr);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, kirby_proj_spr);
		}
		else
		{
			kirby_proj_spr = other.kirby_proj_spr
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, kirby_proj_spr);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, kirby_proj_spr);
		}
		if other.swallowed {
			other.swallowed = 0;
				newicon = kirby_icon;
				set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
				set_attack_value(AT_EXTRA_3, AG_SPRITE, kirby_ability_spr);
				set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
				set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 3);
				set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
				set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, kirby_ability_spr_air);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, kirby_ability_hurt_air);
				set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, kirby_ability_hurt);
		
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
				set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
		
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
				set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, kirby_sfx);
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
				set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, kirby_hit);
		}
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