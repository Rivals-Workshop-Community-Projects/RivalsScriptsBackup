//Enemy enums

//Enemy enums
enum EN {
    GOOMBA, //0
    KOOPA, //0
    BBILL,
    PPLANT,
    SPINY,
    PTOOIE,
    PODOBOO,
    BUSTER,
    THWOMP,
    FIRE,
    BOWSER
};

with (obj_stage_main) {
	
    switch (other.enem_id) {
        case EN.GOOMBA:
            set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("enemy_goomba_dead2"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("enemy_goomba_mask"));
            
			set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
        break;
        case EN.KOOPA:
            set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
            set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("enemy_koopa_shell"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("enemy_goomba_mask"));
            
			set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 420);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
			
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_GOTO, 4);
			
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 9);
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 420);
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        break;
        case EN.SPINY:
            set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
            set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("enemy_spiny_egg"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("enemy_goomba_mask"));
            
			set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 8);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 60);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        break;
        case EN.PTOOIE:
            set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
            set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("enemy_ptooie_idle"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("enemy_koopa_mask"));
            
			set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 8);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 60);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        break;
        case EN.BUSTER:
            set_attack_value(AT_JAB, AG_CATEGORY, 2);
            set_attack_value(AT_JAB, AG_SPRITE, sprite_get("enemy_buster_jab"));
            set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("enemy_goomba_mask"));
            
			set_attack_value(AT_JAB, AG_NUM_WINDOWS, 2);
			set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 24);
			set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("sfx_throw"));
			set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 23);
			
			set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 60);
			set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
			
			set_num_hitboxes(AT_JAB, 2)
			set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
			set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
			set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -16);
			set_hitbox_value(AT_JAB, 1, HG_WIDTH, 48);
			set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 48);
			set_hitbox_value(AT_JAB, 1, HG_SHAPE, 1);
			set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
			set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 0);
			set_hitbox_value(AT_JAB, 1, HG_ANGLE, 45);
			set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
			set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 2);
			set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 1);
			
			set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
			set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
			set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -32);
			set_hitbox_value(AT_JAB, 2, HG_WIDTH, 32);
			set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 32);
			set_hitbox_value(AT_JAB, 2, HG_SHAPE, 1);
			set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
			set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 0);
			set_hitbox_value(AT_JAB, 2, HG_ANGLE, 55);
			set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 15);
			set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 0.75);
			set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 2);
			set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 1);
	
        break;
        case EN.BOWSER:
            set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
            set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
            set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("enemy_bowser_idle"));
            set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("enemy_bowser_mask"));
            
			set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
			
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 9);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 9);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 9);
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			
			set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 9);
			set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			
			set_num_hitboxes(AT_EXTRA_1, 2);
			//Fire
			set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 180);
			set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 64);
			set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -32);
			set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 48);
			set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 16);
			set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
			set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
			set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 0);
			set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 0);
			set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 0);
			set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 0);
			set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 1);
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("enemy_fire_idle"));
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK,  sprite_get("enemy_fire_idle"));
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, 0.05);
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 4);
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
			set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
			
			//Hammer
			set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 60);
			set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -32);
			set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 32);
			set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 32);
			set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
			set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 0);
			set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 0);
			set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 0);
			set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 0);
			set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 1);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("enemy_hammer"));
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, sprite_get("enemy_hammer"));
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, 0.1);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 4);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -8);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GRAVITY, 0.5);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
			set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
			
        
        	//Syobon exclusive attack
            set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
            set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
            set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("enemy_bowser_idle"));
            set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("enemy_bowser_mask"));
            
			set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
			
			//Standing like a doofus
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 9);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			
			//Jumping to the axe
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 9);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
			set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			
			//Standing like a victor
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 9);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 30);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        break;
    }
}