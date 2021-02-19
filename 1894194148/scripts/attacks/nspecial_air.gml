//AR NSPECIAL AIR [WIP]
//still need raincloud summon

set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

//nsps  nspa  nsph  nspr
//0-2:3 3-4:2 5-5:1 6-8:3

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("SWFS6"));

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_NSPECIAL_AIR, 2);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 61);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 51);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_swish_medium"));

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -49);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 85);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_swish_weak"));












