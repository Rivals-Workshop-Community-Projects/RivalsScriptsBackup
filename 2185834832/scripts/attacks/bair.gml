set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_waterhit_heavy2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -45);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.42);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 149);

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -37);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 145);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 149);

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 18);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.23);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .29);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 1);
