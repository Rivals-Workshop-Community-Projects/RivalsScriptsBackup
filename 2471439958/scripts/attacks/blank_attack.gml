/*

//WEE FSPECIAL
if (attack == AT_FSPECIAL) or (attack == AT_FSPECIAL_2){
	if  window == 7 && window_timer == 1 && special_down{
		sound_play(asset_get("sfx_swipe_medium2"));
		hsp = 9 * spr_dir;
		vsp = -6.5
		move_cooldown[AT_FSPECIAL] = 90
		move_cooldown[AT_FSPECIAL_2] = 90
		fspec_cancel = 1
	}
	if window == 1{
		fspec_cancel = 0
	}
}

if (attack == AT_FSPECIAL) or (attack == AT_FSPECIAL_2) && window > 7{
		if fspec_cancel = 1{
		can_jump = true;
		can_shield = true;
		can_attack = true;
		if is_special_pressed( DIR_UP ){
			set_attack( AT_USPECIAL );
		}
	}
}
//FPSECIAL UP
if (attack == AT_FSPECIAL) && (window == 2) && (window_timer == 4 ){
		if up_down{
				set_attack( AT_FSPECIAL_2 );
	}
}

if (attack == AT_FSPECIAL_2){
	if  window == 7 && window_timer == 1 && special_down{
		sound_play(asset_get("sfx_swipe_medium2"));
		hsp = 7 * spr_dir;
		vsp = -11
		move_cooldown[AT_FSPECIAL] = 90
		move_cooldown[AT_FSPECIAL_2] = 90
		fspec_cancel = 1
	}
	if window == 1{
		fspec_cancel = 0
	}
}
//FSPECIAL GRAB TO PLACES

//uspecial grab
if (attack == AT_FSPECIAL){
    //wallgrab
	if !has_hit_player && (
	//wall detection
	collision_rectangle(x + 10 * spr_dir,y-15,x + 65 * spr_dir,y-165,asset_get("par_block"),false,true) || collision_rectangle(x + 60 * spr_dir,y-55,x + 130 * spr_dir,y-270,asset_get("par_block"),false,true)
	//platform detection
	|| collision_rectangle(x + 10 * spr_dir,y-15,x + 65 * spr_dir,y-165,asset_get("par_jumpthrough"),false,true) || collision_rectangle(x + 60 * spr_dir,y-55,x + 130 * spr_dir,y-270,asset_get("par_jumpthrough"),false,true) ) {
        
    }
    //wallgrab window movement
    if window == 7{
    	hsp = 7 * spr_dir;
    	vsp = -6;
    	can_fast_fall = false;
    	if window_timer == 1 {
    		sound_play(asset_get("sfx_blow_weak1"))
			sound_play(asset_get("sfx_plant_eat"))
    	}
    }
    //regular grab window movement
    if window == 7{
    	hsp = 7 * spr_dir;
    	vsp = -6;
    	can_fast_fall = false;
    }
    //grab
    if instance_exists(grabbed_player_obj){
	    if (window >= 6) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
		}
    }
}




set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, 0);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(attack, hitbox_num, HG_GROUNDEDNESS, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(attack, hitbox_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(attack, hitbox_num, HG_HIT_LOCKOUT, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(attack, hitbox_num, HG_FINAL_BASE_KNOCKBACK , 0);
set_hitbox_value(attack, hitbox_num, HG_THROWS_ROCK, 0);

//projectile properties
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 0);


//////// music ////////
(update)
//bgm// ------------------------- //
//SERVANT OF THE CRYSTAL
if (attack == AT_TAUNT_2) && (window == 3 && window_timer == 1) && (special_down and shield_down) && get_player_color(player) == 12{
	gaming = 1
	sound_play(sound_get("servant_of_the_crystal"), true);
}
if get_player_color(player) == 12{
	set_victory_theme(sound_get("machina_victory"));
}

//RING OF FATES
if (attack == AT_TAUNT_2) && (window == 3 && window_timer == 1) && (special_down and shield_down) && get_player_color(player) == 15{
	crystal = 1
	sound_play(sound_get("final_battle"), true);
}
if get_player_color(player) == 15{
	set_victory_theme(sound_get("yuri_victory"));
}
(attack update)
//music stop
if (attack == AT_TAUNT_2) && window == 1 && get_player_color(player) == 12{
	if gaming == 1{
	sound_stop(sound_get( "final_battle" ));	
	sound_stop(sound_get( "servant_of_the_crystal" ));
	gaming = 0;
	crystal = 0;
	}
}

if (attack == AT_TAUNT_2) && window == 1 && get_player_color(player) == 15{
	if crystal == 1{
	sound_stop(sound_get( "final_battle" ));	
	sound_stop(sound_get( "servant_of_the_crystal" ));
	gaming = 0;
	crystal = 0;
	}
}


*/