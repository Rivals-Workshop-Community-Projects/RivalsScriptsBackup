//update

//DODGECHECK UPDATE
if (state == PS_PARRY || state == PS_ROLL_BACKWARD || 
	state == PS_ROLL_FORWARD || state == PS_AIR_DODGE){
		dodgeCheck = true;
}
else dodgeCheck = false;

// This is to stop the Parry-Update Glitch from occurring. As of now I have
// not found a more graceful fix. :(

if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL || attack == AT_DSPECIAL){
    can_fast_fall = false;
}

if(free == false){
    bounceCount = 3;
}

//"One at a time" clause for Cannon
if(instance_exists(obj_article3)){
    with (asset_get("obj_article3")){
            if (player_id == other.id){
                other.weaponOut = true;
            }
            else{
                weaponOut = false;
            }
    }
}
else{
    weaponOut = false;
}

//Blink with Ticks
if ((get_gameplay_time() mod 30) > 20) {
	if(tickCount == 1){
	    outline_color = [ 60, 10, 0 ];
	}
	if(tickCount == 2){
	    outline_color = [ 100, 20, 0 ];
	}
	if(tickCount == 3){
	    outline_color = [ 140, 30, 0 ];
	}
	if(tickCount == 4){
	    outline_color = [ 180, 40, 0 ];
	}
	if(tickCount == 5){
	    outline_color = [ 230, 50, 0 ];
	}
}
else{
    outline_color = [ 0, 0, 0 ];
}

init_shader();

if "swallowed" in self && swallowed {
    swallowed = 0;
    var ability_spr = sprite_get("fspecialK");
    var ability_hurt = sprite_get("fspecialK_hurt");
    var ability_proj = sprite_get("fspecial_proj");
    var ability_sound1 = sound_get("whistle");
    var ability_sound2 = sound_get("firework");
    
    with enemykirby {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sound1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 3);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_sound2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 7);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 24);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 12);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 300);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, -4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -36);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 7);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 139);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 139);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
        
        set_color_profile_slot(get_player_color(player),0, 45, 105, 117);
        set_color_profile_slot(get_player_color(player),1, 255, 217, 178);
    }
}