set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hitA);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, hitA);