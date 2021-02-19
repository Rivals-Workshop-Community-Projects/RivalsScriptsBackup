set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

//Long
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 7);

set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 14);

set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -3);
//set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_birdflap"));



set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_FAIR, 5, AG_WINDOW_HSPEED, -3);
//set_window_value(AT_FAIR, 5, AG_WINDOW_VSPEED, -4);
//set_window_value(AT_FAIR, 5, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FAIR,3);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 34);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 310);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("sparkfx1"), 20));
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -32);


set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -43);

