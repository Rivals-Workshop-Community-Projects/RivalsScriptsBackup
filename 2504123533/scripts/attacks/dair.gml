set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fstrong"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_DAIR,2);

set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 38);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
//set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, sting);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 11);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 00);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);


