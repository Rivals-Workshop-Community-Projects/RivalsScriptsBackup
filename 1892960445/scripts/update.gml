init_shader();


if (get_player_color(player) == 10){
	smoketimer++;
	if(state == PS_IDLE){
		if(smoketimer == 16){
			smoketimer = 0;
		}
	}
	else{
		if(smoketimer == 5){
			smoketimer = 0;
		}	
	}
	if(smoketimer == 1){
	    spawn_hit_fx( x+random_func(-10, 4, true), y-random_func(0, 16, true), blazesmoke);
	}
}

if(smoketimer == 12){
    smoketimer = 0;
}


//Nameplate code - Rainbow
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    char_height = 56;
}
else if (attack == AT_UTILT){
		if (window >= 2 && window < 5 && char_height < 86){
				char_height += 10;
		}
		if (window >= 5 && char_height > 56){
				char_height -= 10;
		}
}
else if (attack == AT_UAIR){
		if (window >= 2 && char_height < 70){
				char_height += 2;
		}
}
else if (attack == AT_USTRONG){
		if (window == 1 && char_height < 86){
				char_height += 10;
		}
		if (window == 2 && char_height < 121){
				char_height += 10;
				if (char_height > 121){
					char_height = 121;
				}
		}
		if (window >= 5 && window_timer >= 10 && char_height > 56){
				char_height -= 10;
				if (char_height < 56){
						char_height = 56;
				}
		}
}


if(endermany == 0){
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
}
else{
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
}
if(tntout){
	if(special_pressed && attack != AT_NSPECIAL && attack != AT_DSPECIAL && attack != AT_FSPECIAL && attack != AT_USPECIAL){
		with(tnt){
			if(state < 50 && state != 50){
				state = 51;
			}
		}
	}
}

//intro
introTimer3++;
if(introTimer3 == 50){
	if(!useskins){
	sound_play(sound_get("explode3"));
	}
}
if(introTimer3 == 70){
	if(useskins){
	sound_play(asset_get("sfx_land_heavy"));
	}
}
if (introTimer2 < 5) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
if (introTimer < 14) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.visible = true; //Feel free to remove this line if the grab does not make the opponent invisible.
		grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

//djump smoke
if(state == PS_DOUBLE_JUMP){
	djumptimer++;
	if(djumptimer == 1){
		spawn_hit_fx( x, y, smoke_effect);
	}
}
else{
	djumptimer = 0;
}

if(state == PS_LANDING_LAG || state == PS_LAND || state == PS_PRATLAND || state == PS_HITSTUN_LAND){
	landlagtimer++;
	if(landlagtimer == 1){
		spawn_hit_fx( x, y, smoke_effect);
	}
}
else{
	landlagtimer = 0;
}

if(state == PS_WAVELAND){
	sound_stop(sound_get("portal2"));
}

if(endermany == 0 && enderdone == 1){
	if(!endertnt2){
		enderrecharge++;
		if(runeK){
			if(enderrecharge == 40){
				sound_play(sound_get("pop"));
				endermany = 1;
				enderrecharge = 0;
				enderdone = 0;
			}
		}
		else{
			if(enderrecharge == 90){
				sound_play(sound_get("pop"));
				endermany = 1;
				enderrecharge = 0;
				enderdone = 0;
			}
		}
	}
}

if(state == PS_AIR_DODGE || state == PS_TECH_GROUND || state == PS_WALL_TECH){
	teleparticles++;
	if(teleparticles == 1){
		spawn_hit_fx( x, y, teleport_effect);
	}
	if(teleparticles == 16){
		spawn_hit_fx( x, y, teleport_effect);
	}
	if(teleparticles == 14){
		sound_play(sound_get("portal"));
	}
	if(teleparticles == 4 || teleparticles == 6 || teleparticles == 8 || teleparticles == 10 || teleparticles == 12){
		spawn_hit_fx( x, y-40, teleport2_effect);
	}
}
else{
	teleparticles = 0;
}
if(state == PS_PARRY){
	teleparticles3++;
	if(teleparticles3 == 1){
		spawn_hit_fx( x, y, teleport_effect);
	}
}
else{
	teleparticles3 = 0;
}
if(tntrecharge == 1){
	tntcooldown++;
	if(tntcooldown == 45){
		sound_play(sound_get("pop"));
		tntout = false;
		tntcooldown = 0;
		tntrecharge = 0;
	}
}

//Skeleton recharge system
if(skeletonrecharge >= 1){
	skeletoncooldown++;
	if(skeletonrecharge == 1 && skeletoncooldown == 100){ //Natural decay
		skeleton_return = 1;
	}
	if (skeletonrecharge == 2 && skeletoncooldown == 275){ //Destroyed skeleton
		skeleton_return = 1;
	}
}
//If skeleton has recharged
if(skeleton_return == 1){
		skeletonmany = 1;
		sound_play(sound_get("pop"));
		skeletonrecharge = 0;
		skeletoncooldown = 0;
		skeleton_return = 0;
}

if(tntreal == 1){
	tntalive++;
	if(tntalive == 60){
		tntout = 0;
		tntalive = 0;
		tntreal = 0;
	}
}
else{
	tntalive = 0;
}
//if(tnthit = true){
//	with(tnt){
//		tnthithit = true;
//	}
//}
if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD){
	teleparticles2++;
	if(teleparticles2 == 18){
		sound_play(sound_get("portal"));
	}
	if(teleparticles2 == 4 || teleparticles2 == 6 || teleparticles2 == 8 || teleparticles2 == 10 || teleparticles2 == 12 || teleparticles2 == 14 || teleparticles2 == 16 || teleparticles2 == 18){
		spawn_hit_fx( x, y-40, teleport2_effect);
	}
	if(teleparticles2 == 1){
		spawn_hit_fx( x, y, teleport_effect);
	}
	if(spr_dir == 1){
		if(teleparticles2 == 20){
			spawn_hit_fx( x-6, y, teleport_effect);
		}
	}
	else{
		if(teleparticles2 == 20){
			spawn_hit_fx( x+6, y, teleport_effect);
		}
	}
}
else{
	teleparticles2 = 0;
}
//rng
upbrng++;
if(upbrng == 10){
	upbrng = 0;
}

//tdude hi
if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
    refreshed_djump = false;
}
//tdude bye

//skeleton
if(runeN){
	//pog
}
else{
if(skeletonmany == 2){
	skeletonmany = 1;
}
}
if(skeletonmany < 0){
	skeletonmany = 0;
}

//trummel
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 6;
    trummelcodecsprite1 = sprite_get("trummel");
    trummelcodecsprite2 = sprite_get("trummel");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 1;

    trummelcodecline[0,1] = "Hey look! A creeper!";
    trummelcodecline[0,2] = "How'd it get out here?";
    trummelcodecline[0,3] = "";
    trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 2;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "creeper";
    trummelcodecline[1,2] = "";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";

	//Page 2
    trummelcodecspeaker[2] = 3;
    trummelcodecexpression[2] = 1;

    trummelcodecline[2,1] = "Silence.";
    trummelcodecline[2,2] = "";
    trummelcodecline[2,3] = "";
    trummelcodecline[2,4] = "";
    //Page 3
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 5;

    trummelcodecline[3,1] = "It can talk..?";
    trummelcodecline[3,2] = "";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";
    //Page 4
    trummelcodecspeaker[4] = 3;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "I have grown tired of";
    trummelcodecline[4,2] = "the endless bombardment";
    trummelcodecline[4,3] = "of the phrase 'Aww man'.";
    trummelcodecline[4,4] = "";
    //Page 5
    trummelcodecspeaker[5] = 1;
    trummelcodecexpression[5] = 3;

    trummelcodecline[5,1] = "And what are you gonna";
    trummelcodecline[5,2] = "do? Try to kill us?";
    trummelcodecline[5,3] = "You'll just kill yourself";
    trummelcodecline[5,4] = "in the proccess.";
    //Page 6
    trummelcodecspeaker[6] = 3;
    trummelcodecexpression[6] = 1;

    trummelcodecline[6,1] = "Very well...";
    trummelcodecline[6,2] = "Approach if you";
    trummelcodecline[6,3] = "dare, cloud boy.";
    trummelcodecline[6,4] = "";

}

//kriby
if swallowed{
	swallowed = 0;
	var kirbyspr = sprite_get("kirbynspecial")
	var kirbyhurt = sprite_get("kirbynspecial_hurt")
	var kirbyproj = sprite_get("kirbyproj")
	var kirbysnd = sound_get("fuse")
	var kirbyhitsnd = sound_get("hit1")
	var kirbyboom = sound_get("explode2")
	var myicon = sprite_get("kirbyicon")
	with enemykirby{
		newicon = myicon
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, kirbyspr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, kirbyhurt);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, kirbysnd);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_INVINCIBILITY, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX, kirbyboom);

		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_VSPEED, -1000);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED, 10000);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_INVINCIBILITY, 1);

		set_num_hitboxes(AT_EXTRA_3, 1);

		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 100);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 100);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 75);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 12);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 2.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, kirbyproj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, kirbyproj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	}
}

if (state == PS_RESPAWN)
{
    if (respawnPlatAnimTimer < respawnPlatAnimStripLength)
        respawnPlatAnimTimer += respawnPlatAnimSpeed;
    else
        respawnPlatAnimTimer = 0;
}
else if (state != PS_RESPAWN && respawnPlatAnimTimer != 0)
    respawnPlatAnimTimer = 0;



//RUNES AAAAAAAAAAAAAA
if(runeA){
	air_dodge_speed = 12;
	roll_forward_max = 10; //roll speed
	roll_backward_max = 10;
	techroll_speed = 10;
}
if(runeB){
	//skeleton go wooosh
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
	set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 155);
	set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
	set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 155);
}
if(runeC){
	set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
}
if(runeD){
	//no!! you cant just combo up air into ustrong!! thats cheap!!

	//haha iron golem go boosh
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 2);
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 4);

}
if(runeE){
	max_djumps = 2;

}
if(runeF){
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -12);
	set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 24);
}
if(runeG){
	set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 78);
	set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 72)

}
if(runeH){
//fair go threeeeeeeee
	set_num_hitboxes(AT_FAIR,6);
}
if(runeI){
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
	runetnt = true;
	if(tntboom == 1){
		if(runetnt == true){
			tnt1 = instance_create(tnt.x,tnt.y,"obj_article3");
			tnt2 = instance_create(tnt.x,tnt.y,"obj_article3");
			tnt1.state = 22;
			tnt2.state = 20;
			tnt1.tntdir = 1;
			tnt2.tntdir = 2;
		}
	}
	if(tntboom == 2){
		if(runetnt == true){
			tnt4 = instance_create(tnt1.x,tnt1.y,"obj_article3");
			tnt5 = instance_create(tnt1.x,tnt1.y,"obj_article3");
			tnt6 = instance_create(tnt2.x,tnt2.y,"obj_article3");
			tnt7 = instance_create(tnt2.x,tnt2.y,"obj_article3");
			tnt4.state = 24;
			tnt5.state = 21;
			tnt4.tntdir = 1;
			tnt5.tntdir = 2;
			tnt6.state = 21;
			tnt7.state = 21;
			tnt6.tntdir = 1;
			tnt7.tntdir = 2;
		}
	}
}
if(runeJ){
	set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 40);
}
if(runeN){
	timertimertimertimer++;
	if(timertimertimertimer == 3){
		timertimertimertimer = 3;
	}
	if(timertimertimertimer == 1){
		skeletonmany = 3;
	}
}
if(runeM){
//muno moment
	set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 11);
	set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 15)

}
if(runeL){
	if(free){
		if(state == PS_FIRST_JUMP){
			jtimeer++;
			if(jtimeer == 1){
				create_hitbox(AT_DTILT, 2, x, y);
				create_hitbox(AT_NSPECIAL, 1, x, y-24);
			}
		}
		else{
			jtimeer = 0;
		}
		if(state == PS_DOUBLE_JUMP){
			if(jump_pressed && runejump = 0 && djtimeer > 6){
				runejump = 1;
				djtimeer = 0;
			}
			djtimeer++;
			if(djtimeer == 1){
				create_hitbox(AT_DTILT, 2, x, y);
				create_hitbox(AT_NSPECIAL, 1, x, y-24);
			}
		}
		else{
			djtimeer = 0;
			runejump = 0;
		}
		if(state == PS_WALL_JUMP){
			wjtimeer++;
			if(wjtimeer == 1){
				sound_play(sound_get("explode3"));
				create_hitbox(AT_DTILT, 2, x, y);
				create_hitbox(AT_NSPECIAL, 1, x, y-24);
			}
		}
		else{
			wjtimeer = 0;
		}
		jump_sound = sound_get("explode3");
		djump_sound = sound_get("explode3");
	}
	else{
		jtimeer = 0;
		djtimeer = 0;
		wjtimeer = 0;
		runejump = 0;
	}
}
if(runeO){
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -2.5);
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
}
