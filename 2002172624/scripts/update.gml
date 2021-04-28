//Phone (stays at top)
user_event(14);

//SIG METER
//makes sig meter fill nicely
if (GAUGE_SIG != GAUGE_SIG_CURRENT) {
  if (GAUGE_SIG > GAUGE_SIG_CURRENT) {
    GAUGE_SIG -= 1;
  } else if (GAUGE_SIG < GAUGE_SIG_CURRENT) {
    GAUGE_SIG += 1;
  }
}

//MAKES IT SO YOU HAVE TO BE ON THE GROUND TO RELOAD SHOTGUN
if (AMMO_CURRENT > 0) {
	set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
} else {
	set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
}

//NUMBER OF CATS
num_cats = 0;
with (pHitBox) {
	if (orig_player == other.player) {
		if ((attack == AT_DSPECIAL or attack == AT_DSPECIAL_AIR) and type == 2) {
			other.num_cats += 1;
			if (y > room_height) {
				instance_destroy(self);
			}
			
		}
	}
}

if attack == AT_USPECIAL && window > 2 && state_timer > 60 && !free {
	set_state(PS_LAND);
	instance_destroy(hook);
}

if attack == AT_USPECIAL and window == 1 and window_timer == 2 {
	move_cooldown[AT_USPECIAL] = 999;

}

if attack == AT_USPECIAL && state == 5 && (window == 1 || window == 2){
	move_cooldown[AT_USPECIAL] = 999;
	air_accel = 0;
	air_friction = .1;
} else {
	air_accel = .3;
	air_friction = .02;
}

if !free || state == PS_WALL_JUMP || state == PS_HITSTUN {
    move_cooldown[AT_USPECIAL] = 0;
}

//OUTLINE CONTROLS
if (GAUGE_SIG_CURRENT = GAUGE_SIG_MAX) {
	//GLOWS WHEN FULL METER
	outline_color = [ 233, 63, 21 ];
	init_shader();
	
} else {
	//BLAcK OUTLINE WHEN NORMAL
	outline_color = [ 0, 0, 0 ];
	init_shader();
}

//LOCKS UPDATE
if (GAUGE_SIG_CURRENT > 25 and GAUGE_UNLOCK = 0) {
	GAUGE_SIG_CURRENT = 25;	
}
if (GAUGE_SIG_CURRENT > 50 and GAUGE_UNLOCK = 1) {
	GAUGE_SIG_CURRENT = 50;	
}
if (GAUGE_SIG_CURRENT > 75 and GAUGE_UNLOCK = 2) {
	GAUGE_SIG_CURRENT = 75;	
}


//INTRO ANIM
if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer < 15) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if (introTimer == 0 && introTimer2 == 0)
{
    sound_play(asset_get ("sfx_abyss_portal_intro"));
}

if (introTimer == 8 && introTimer2 == 0)
{
    sound_play(asset_get ("sfx_swipe_heavy1"));
}

if (introTimer == 13 && introTimer2 == 0)
{
    sound_play(asset_get ("sfx_abyss_despawn"));
}

//COMMAND GRABS
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

//COMPATIBILITY WITH OTHERS CHARACTERS


//Kirby (Copy Ability)
if swallowed {
	swallowed = 0;
	var myicon = sprite_get("kirbyicon");
	var ability_spr = sprite_get("Kirby_Briggs");
	var ability_hurt = sprite_get("Kirby_Briggs_Hurt");
	var ability_sound_ready = sound_get("Briggs_ShotgunReady");
	var ability_sound_shoot = sound_get("Briggs_ShotgunFire");
	var ability_sound_taunt = sound_get("Briggs_Chuck1");
	
	with enemykirby {
		//Icon
		newicon = myicon;
		briggsAmmo = 2;
		can_shotgun_twice = true;
		
		//Attack (Shotgun)
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		
		//wait
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6); //was 4
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
		    //ready sound
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sound_ready);
		
		
		//jab + wait (hit box)
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		
		//shoot (hit boxes)
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
		    //fire sound
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, ability_sound_shoot);
		    //recoil
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, -12); // was -15
		
		
		//recoil
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 9);
		
		//put away
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 10);
		
		//shoot (hit boxes)
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 7);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);
		    //fire sound
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_SFX, ability_sound_shoot);
			
		//reload
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 48);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 12);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 7);
		//reload sound
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_SFX, ability_sound_ready);
		
		//EVIL KIRBY TAUNT 
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_LENGTH, 38);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAME_START, 19);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 8);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_SFX, ability_sound_taunt);
		
		//BRIGGS FACE KIRBY TAUNT 
		set_window_value(AT_EXTRA_3, 9, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH, 38);
		set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAME_START, 27);
		set_window_value(AT_EXTRA_3, 9, AG_WINDOW_ANIM_FRAMES, 8);
		set_window_value(AT_EXTRA_3, 9, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 9, AG_WINDOW_SFX, ability_sound_taunt);
		
		
		//KIRBY CHECK CODE
				set_window_value(AT_EXTRA_3, 12, AG_WINDOW_LENGTH, 6937); //MAGIC NUMBERS
			
		set_num_hitboxes(AT_EXTRA_3, 3);
		
		//shotgun whip
		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 35);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 80);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 35);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 37);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_FORCE_FLINCH, 1);
		
		//close shoot
		set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 60);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -25); //was -30
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 45); //was 50
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40); //was 50
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 16); //was 18
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 37);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.72); //was 0.75
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 2);
		
		//far shoot
		set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 3);
		
		set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 110); //was 115
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 80); //was 85
		set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 75);
		set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 10); 
		set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 45);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 3); //was 4
		set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 0.50); //was 0.60
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, 2);
	}
	
	
}

if (enemykirby != noone) {
	
	with oPlayer {
		if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
			//SHOTGUN
			if ((get_window_value(AT_EXTRA_3, 12, AG_WINDOW_LENGTH) == 6937)) {
				if (attack == AT_EXTRA_3) {
					if (window == 1 and briggsAmmo <= 0) {
						//RELOADING
						set_num_hitboxes(AT_EXTRA_3, 0);
						set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
					} else {
						//SHOOTING
						set_num_hitboxes(AT_EXTRA_3, 3);
						set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
					}
					
					if ( window == 1 and window_timer == 1 ) {
						if (briggsAmmo > 0) {
							briggsAmmo -= 1;
							can_shotgun_twice = true;
						} else {
							window = 7;
							window_timer = 0;
							can_shotgun_twice = false;
						}
					}
					
					if (window == 4) {
						//CAN WALL JUMP AND SHOOT AGAIN DURING RECOIL OF GUN
						can_wall_jump = true;
						if (special_pressed and (left_down or right_down)) {
							if (briggsAmmo > 0 and can_shotgun_twice = true) {
								briggsAmmo -= 1;
								window = 3;
								window_timer = 0;
								hsp = -15 * spr_dir;
							}
						}
					}
					//RELOADING
					if (window == 7 and window_timer = 16) {
						briggsAmmo = 2;
					}
				}
				if (attack == AT_TAUNT and !free and current_ability != 0) {
					var temp = random_func(0, 10, true);
					attack = AT_EXTRA_3;
					
					if (temp >= 9) {
						//Briggs Face Taunt
						window = 9;
						window_timer = 0;
						set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 9);
						
						
					} else {
						//Evil Kirby Taunt
						window = 8;
						window_timer = 0;
						set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 8);
						
					}
					
				}
				
			}
		}
	}
	
}


//Trummel and Alto (Codecs / Dialog)
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 8;
    trummelcodecsprite1 = sprite_get("briggs_speak");
    trummelcodecsprite2 = sprite_get("briggs_speak");
    var page = 0;

    //Page 0 (Trummel ask who Briggs is)
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "whos the kid?";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1 (Briggs questions how they havent heard of him)
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Doth thou not knoweth?";
    trummelcodecline[page,2] = "I am the almighty King";
    trummelcodecline[page,3] = "Briggs! You have been";
    trummelcodecline[page,4] = "graced by my presence!";
    page++; 
    
    //Page 2 (Alto explains who he is a bit about how his meter works and to attack before he taunts)
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Like he just said he's";
    trummelcodecline[page,2] = "King Briggs. Don't let";
    trummelcodecline[page,3] = "his child like appearance";
    trummelcodecline[page,4] = "fool you, he's just short.";
    page++; 
       
    //Alto with more Briggs info
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Briggs is a hard hitter";
    trummelcodecline[page,2] = "and an extremely";
    trummelcodecline[page,3] = "Skilled Fire Mage.";
    trummelcodecline[page,4] = "";
    page++; 
           
    //Alto with more Briggs info
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "If his Siggneos meter";
    trummelcodecline[page,2] = "fills he'll be able to";
    trummelcodecline[page,3] = "unleash his almighty";
    trummelcodecline[page,4] = "Greater Pyroblast.";
    page++; 
    
    //Briggs calls them weak
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "My Greater Pyroblast is";
    trummelcodecline[page,2] = "powerfull enough to kill";
    trummelcodecline[page,3] = "gods! Let alone Peasants";
    trummelcodecline[page,4] = "like thyselves!";
    page++; 
    
    //Trummel
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "where are your parents?";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    
    //Alto with more Briggs info
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Luckily he has to taunt"; 
    trummelcodecline[page,2] = "inorder to unlock sections";
    trummelcodecline[page,3] = "of his meter. We can stop";
    trummelcodecline[page,4] = "him by attacking first!";
    page++; 
    
    //Briggs begins the fight
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "If thou wanteth a fight,";
    trummelcodecline[page,2] = "than a war thou shall";
    trummelcodecline[page,3] = "receive.";
    trummelcodecline[page,4] = "Unguard scrub!";
    page++; 

}

