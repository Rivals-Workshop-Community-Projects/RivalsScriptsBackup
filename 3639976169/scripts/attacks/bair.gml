set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_hit_weak"));
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.67);
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -32.5);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 115);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));