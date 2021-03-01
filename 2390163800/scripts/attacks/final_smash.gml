set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_AIR_SPRITE, sprite_get("gpsfinalsmash"));
set_attack_value(49, AG_SPRITE, sprite_get("gpsfinalsmash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("gpsfinalsmash_hurt"));
set_attack_value(49, AG_HURTBOX_AIR_SPRITE, sprite_get("gpsfinalsmash_hurt"));
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_OFF_LEDGE, 1);


				set_window_value(49, 1, AG_WINDOW_LENGTH, 35);
				set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 3);
	    		set_window_value(49, 1, AG_WINDOW_HSPEED,-3);
	    		set_window_value(49, 1, AG_WINDOW_VSPEED,-3);
	    		set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE,2);
	    		set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE,2);
				set_window_value(49, 1, AG_WINDOW_HAS_SFX,1);
	    		set_window_value(49, 1, AG_WINDOW_SFX, sound_get("PARRY"));
	    		set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);
		    	set_window_value(49, 1, AG_WINDOW_INVINCIBILITY,1);
				
				set_window_value(49, 2, AG_WINDOW_LENGTH, 30);
				set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 4);
				set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 8);
	    		set_window_value(49, 2, AG_WINDOW_HSPEED,3);
	    		set_window_value(49, 1, AG_WINDOW_HAS_SFX,1);
	    		set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_orca_bite"));
	    		set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE,2);
	    		set_window_value(49, 2, AG_WINDOW_HSPEED,0);
	    		set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE,2);
		    	set_window_value(49, 2, AG_WINDOW_INVINCIBILITY,1);
				
				set_window_value(49, 3, AG_WINDOW_LENGTH, 60);
				set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 11);
				set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
		    	set_window_value(49, 3, AG_WINDOW_INVINCIBILITY, 0);
		    	set_window_value(49, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
		    	

set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 2);
set_hitbox_value(49, 1, HG_HITBOX_X, 95);
set_hitbox_value(49, 1, HG_HITBOX_Y, -70);
set_hitbox_value(49, 1, HG_WIDTH, 80);
set_hitbox_value(49, 1, HG_HEIGHT, 80);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 60);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_orca_crunch"));

set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");
