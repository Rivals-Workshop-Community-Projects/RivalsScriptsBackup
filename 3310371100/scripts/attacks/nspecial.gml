set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);

//start //17
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12); //49
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

//anticipation
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 4);

//atk
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 10);//17
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);



set_num_hitboxes(AT_NSPECIAL, 1); 

//wahh ice
//speed values are in hitbox_init now
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 70);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -33);

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_ice"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 20);

set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);//6
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);//0.6
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.7);//0.75
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 27);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));





