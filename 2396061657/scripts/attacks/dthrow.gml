set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow"));
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dthrow_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 19);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_DTHROW, 2);

// Sticky Hitbox
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, CandyKB);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, CandyKB_scale);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, CandyKB);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, hit_goo);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 50);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, sfxdthrow);
set_hitbox_value(AT_DTHROW, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_DTHROW, 1, HG_HIT_PARTICLE_NUM, 3);

// Candy Explosion Hitbox
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 20);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_DTHROW, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, CandyKB);
set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, CandyKB);
set_hitbox_value(AT_DTHROW, 2, HG_HITPAUSE_SCALING, CandyKB_scale);
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT, hit_goo);
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_SFX, sfxdthrow);

set_hitbox_value(AT_DTHROW, 2, HG_HIT_PARTICLE_NUM, 3);
