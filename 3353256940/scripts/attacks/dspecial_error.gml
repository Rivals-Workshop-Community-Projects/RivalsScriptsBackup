set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("dspecial_error"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("dspecial_error"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_error_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_EXTRA_2, 1); 

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 32);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 6); 
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.8); //
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 7.5);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 269);
