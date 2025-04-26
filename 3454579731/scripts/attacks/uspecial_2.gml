set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 8);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_2_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_USPECIAL_2, 2);

var dmg = 10;
var angle = 45;
var kb = 7;
var fkb = 5;
var kbs = .9;

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -11);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 11);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, dmg);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, angle);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, kb);
set_hitbox_value(AT_USPECIAL_2, 1, HG_FINAL_BASE_KNOCKBACK, fkb);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, kbs);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 280);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 67);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 36);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, dmg);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, angle);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, kb);
set_hitbox_value(AT_USPECIAL_2, 2, HG_FINAL_BASE_KNOCKBACK, fkb);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, kbs);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 280);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));