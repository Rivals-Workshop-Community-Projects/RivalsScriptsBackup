//user-event9

/////////////////////////////
//// COMPATIBILITY STUFF ////
/////////////////////////////

//kirby
if swallowed { //Kirby ability script starts here
    swallowed = 0
    //Define any assets kirby might need to grab from YOUR CHARACTER
    //var ability_spr = sprite_get("YOUR KIRBY SPRITE HERE");
    //var ability_hurt = sprite_get("YOUR KIRBY HURTBOX HERE")
    var ability_icon = sprite_get("kirby_icon") //Optional
    var ability_spr = sprite_get("kirby_" + piece);
    if piece == "P" ability_spr = sprite_get("kirby_Q");
    var gun_sfx = sound_get("gun_shoot");
    var proj_N = sprite_get("Nfspecial_proj")
    var queensfx1 = sound_get("laser_charge");
    var queensfx2 = sound_get("laser_fire");
    with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
    	ability_piece = other.piece;
    	ability_pawn_move_timer = 0;
    	ability_pawn_counter = 0;
    	ability_original_dashspeed = dash_speed;
    	ability_original_dashinitspeed = initial_dash_speed;
    	ability_original_walkspeed = walk_speed;
    	
        set_window_value(AT_EXTRA_3, 21, AG_WINDOW_ANIM_FRAMES, 113);
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
        
    	switch ability_piece {
    		case "N":
    		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 18);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, gun_sfx);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 17);
	        
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	        
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 14);
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	        
	        set_num_hitboxes(AT_EXTRA_3, 1);

			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 60);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 12);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.5);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
			set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 305);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
			
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, proj_N);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 12);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
    		break;
    		
    		case "R":
    		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 18);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_cannon"));
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 17);
	        
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 8);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	        
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 14);
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
	        
	        set_num_hitboxes(AT_EXTRA_3, 1);

			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 120);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 12);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
			
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, proj_N);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 8);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -8);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
			
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
			set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 100);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 100);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 100);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 4);
			set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 2);
			set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 45);
			set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE_FLIPPER, 9);
			set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 10);
			set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 7);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 1);
			set_hitbox_value(AT_EXTRA_3, 2, HG_TECHABLE, 1);
			set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 1);
			
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 12);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GRAVITY, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_AIR_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
			set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
			
			set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 3);
			set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 100);
			set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 120);
			set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 120);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 4);
			set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 5);
			set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 90);
			set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE_FLIPPER, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 0.2);
			set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 12);
			set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, 0.2);
			set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 1);
			set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, 1);
			
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_MASK, -1);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, 0.4);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_HSPEED, 12);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_VSPEED, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_GRAVITY, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_GROUND_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_AIR_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
			set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
    		break;
    		
    		case "Q": case "P":
    		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 20);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, queensfx1);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 2);
	        
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, queensfx2);
	        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);
	        
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 24);
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
	        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
	        
	        set_num_hitboxes(AT_EXTRA_3, 0);
	        
	        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 2);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 4);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 20);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 1.0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 30);
			set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 10);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
			set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 157);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 20);
			
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
			set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
    		break;
    		
    		case "K":
    		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
    		set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("idle"));
        
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 8);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_metal_hit_strong"));
	        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 2);
    		break;
    	}
        //newicon = ability_icon //Optional, replaces the kirby ability icon
    } //Kirby ability script ends here
}
if enemykirby != undefined && instance_exists(enemykirby) && enemykirby.current_ability == 16 { //if kirby is in a match & swallowed
	with pHitBox {
		if player_id == other.enemykirby && attack == AT_EXTRA_3 {
			switch player_id.ability_piece {
				//hitbox-update code here
				case "R":
				if !free destroyed = true;
				if hbox_num == 1 {
			        if !free {
			            destroyed = true;
			        }
			        
			        if destroyed {
			            var hitbox = create_hitbox(AT_EXTRA_3, 2, x, y);
			                hitbox.hsp = 0;
			                hitbox.vsp = 0;
			                hitbox.counter = 0;
			        }
			    }
			    
			    var _frames = 9;
			    if hbox_num == 2 {
			        if hitbox_timer == 1 {
			            if counter == 0 sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
			            else if counter == 1 sound_play(asset_get("sfx_ell_dspecial_explosion_2"))
			            spawn_hit_fx(x, y, 115)
			        }
			        if hitbox_timer == _frames {
			            if counter < 1 {
			                var hitbox = create_hitbox(AT_EXTRA_3, 2, x, y);
			                    hitbox.hsp = 0;
			                    hitbox.vsp = 0;
			                    hitbox.counter = counter + 1;
			            } else {
			                spawn_hit_fx(x, y, 115)
			                sound_play(asset_get("sfx_ell_dspecial_explosion_3"))
			                var hitbox = create_hitbox(AT_EXTRA_3, 3, x, y);
			                    hitbox.hsp = 0;
			                    hitbox.vsp = 0;
			            }
			            destroyed = true;
			        }
			    }
			    
			    if hbox_num == 3 {
			        if hitbox_timer == _frames destroyed = true
			    }
				break;
			}
		}
	}
    with oPlayer { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3 && get_window_value(AT_EXTRA_3, 21, AG_WINDOW_ANIM_FRAMES) == 113) {
            //attack_update code here
            switch ability_piece {
            	case "N":
		        move_cooldown[AT_EXTRA_3] = 60;
            	break;
            	
            	case "R":
		        move_cooldown[AT_EXTRA_3] = 60;
            	break;
            	
            	case "Q": case "P":
            	if window == 3 && window_timer == 2 {
            		current_ability = 0;
            	}
            	if window == 2 {
            		hsp *= 0.5;
            		vsp *= 0.5;
            		can_move = false;
			        var num_hitboxes = 15;
			        var dist = 30;
			        for (var i = 0; i < num_hitboxes; i++) {
			        	var laser_angle = 60;
			            var startx = x+(dist*i*dcos(laser_angle))*spr_dir;
			            var starty = y-50 - dist*i*dsin(laser_angle);
			            create_hitbox(AT_EXTRA_3, 1, floor(startx), floor(starty))
			        }
            	}
            	break;
            	
            	case "K":
            	ability_armour_active = true;
            	ability_armour_timer = 0;
            	break;
            }
        }
    }
    
    with oPlayer {
    	if get_window_value(AT_EXTRA_3, 21, AG_WINDOW_ANIM_FRAMES) == 113 {
    		//update code here
    		switch ability_piece {
    			case "P":
    			if ability_pawn_counter < 7 {
    				move_cooldown[AT_NSPECIAL] = 10;
    				move_cooldown[AT_EXTRA_3] = 10;
    			}
    			ability_pawn_move_timer++;
    			if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_NSPECIAL {
    				if window == 1 && window_timer == 1 {
    					ability_pawn_incremented = false;
    				}
    				if has_hit_player {
	    				if ability_pawn_incremented == false {
	    					if ability_pawn_counter < 7 {
	    						ability_pawn_move_timer = 0;
	    						ability_pawn_counter++;
	    					}
	    					ability_pawn_incremented = true;
	    				}
    				}
    			}
    			break;
    			
    			case "K":
    			
    			if ability_armour_active {
    				ability_armour_timer++;
    				super_armor = true;
    				
    				if ability_armour_timer > 120 {
    					//ability_armour_active = false;
    					ability_armour_timer = 0;
    					//super_armor = false;
    				}
    			}
    			break;
    		}
    	}
    }
}