set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 20);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -0.5);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);


set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 2);

set_num_hitboxes(AT_BAIR, 3);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 3, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);

