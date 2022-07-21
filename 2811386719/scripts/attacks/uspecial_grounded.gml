set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 0);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_ground_hurt"));

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, asset_get("sfx_dash_start"));

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_SFX, asset_get("sfx_absa_orb_miss"));

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

//grab
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -120);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 65);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, 1);

//pull to
var HG_PULL_TO = 55
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HIT_LOCKOUT, 10);
// set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PULL_TO, 1);

//scoop
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_BASE_HITPAUSE, 4);
// set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_GROUP, 3);