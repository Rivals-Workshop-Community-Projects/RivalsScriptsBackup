set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_AIR_SPRITE, sprite_get("FinalSmash"));
set_attack_value(49, AG_SPRITE, sprite_get("FinalSmash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("FinalSmash_hurt"));
set_attack_value(49, AG_HURTBOX_AIR_SPRITE, sprite_get("FinalSmash_hurt"));
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_OFF_LEDGE, 1);


				set_window_value(49, 1, AG_WINDOW_LENGTH, 30);
				set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 8);
	    		set_window_value(49, 1, AG_WINDOW_HSPEED,-3);
	    		set_window_value(49, 1, AG_WINDOW_VSPEED,-3);
	    		set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE,2);
	    		set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE,2);
	    		set_window_value(49, 1, AG_WINDOW_HAS_SFX,1);
	    		set_window_value(49, 1, AG_WINDOW_SFX, sound_get("sfx_pill"));
	    		set_window_value(49, 1, AG_WINDOW_SFX_FRAME,10);
		    	set_window_value(49, 1, AG_WINDOW_INVINCIBILITY,1);
				
				set_window_value(49, 2, AG_WINDOW_LENGTH, 10);
				set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 8);
				set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
	    		set_window_value(49, 2, AG_WINDOW_HSPEED,3);
	    		set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE,2);
	    		set_window_value(49, 2, AG_WINDOW_HSPEED,0);
	    		set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE,2);
		    	set_window_value(49, 2, AG_WINDOW_INVINCIBILITY,1);
				
				set_window_value(49, 3, AG_WINDOW_LENGTH, 20);
				set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 9);
				set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
		    	set_window_value(49, 3, AG_WINDOW_INVINCIBILITY,1);
	    		
	    		set_num_hitboxes(49, 1);
	    		
	    		set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
	    		set_hitbox_value(49, 1, HG_WINDOW, 2);
	    		set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 1);
	    		set_hitbox_value(49, 1, HG_ANGLE, 40);
	    		set_hitbox_value(49, 1, HG_DAMAGE, 40);
	    		set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 10);
	    		set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 2);
	    		set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 20);
	    		set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0.7);
	    		set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
	    		set_hitbox_value(49, 1, HG_HITBOX_X, 35);
	    		set_hitbox_value(49, 1, HG_HITBOX_Y, -95);
	    		set_hitbox_value(49, 1, HG_HITSTUN_MULTIPLIER, 1);
	    		set_hitbox_value(49, 1, HG_EFFECT, 0);
	    		set_hitbox_value(49, 1, HG_PRIORITY, 10);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("drmario_smash_proj"));
	    		set_hitbox_value(49, 1, HG_PROJECTILE_MASK, sprite_get("drmario_smash_proj"));
	    		set_hitbox_value(49, 1, HG_PROJECTILE_HSPEED, 9);
	    		set_hitbox_value(49, 1, HG_LIFETIME, 200);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_UNBASHABLE, 1);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
	    		set_hitbox_value(49, 1, HG_FORCE_FLINCH, 0);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_ANIM_SPEED, 0.56);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	    		set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 109);
				set_hitbox_value(49, 1, HG_TECHABLE, 1);
	    		set_hitbox_value(49, 1, HG_EXTRA_CAMERA_SHAKE, 1);
	    		set_hitbox_value(49, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
	    		set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("pill_next"));
	    		
set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");