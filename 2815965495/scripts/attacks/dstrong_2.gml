set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong_air"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);	
set_attack_value(AT_DSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_air_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 3);


set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_VSPEED, 2);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_VSPEED, -0.5);

set_num_hitboxes(AT_DSTRONG_2, 1);

set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 6); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 0); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -8); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 52); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 10); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 270); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, .75); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 9); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 1);


