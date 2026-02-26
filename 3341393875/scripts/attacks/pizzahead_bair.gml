set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 1 + has_rune("F"));
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("pizzahead_bair"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("pizzahead_bair_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 4.5 * (has_rune("F") - 1));
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 2 - (has_rune("F") * 2));
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 3 * (has_rune("F") - 1));
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 2 - (has_rune("F") * 2));

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_HSPEED, 2 * (has_rune("F") - 1));

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_AIR, 2);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, -26);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 59);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, HFX_GEN_BIG);

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 130);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 301);
