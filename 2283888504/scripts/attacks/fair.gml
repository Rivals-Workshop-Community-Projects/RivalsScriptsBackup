set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12); // 11
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1); // 0

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FAIR, 1);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 108);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 9); // 7
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.6); // 0.4
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

/*

set_num_hitboxes(AT_FAIR, 3);

var dmg = 8;
var angle = 40;
var bkb = 7;
var kbg = 0.6;
var bhp = 7;
var hpg = 0.4;

//Top
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, dmg);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, angle);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, bhp);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Front
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, dmg);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, angle);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, bhp);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Bottom
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, 20);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, dmg);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, angle);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, bkb);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, kbg);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, bhp);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, hpg);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));