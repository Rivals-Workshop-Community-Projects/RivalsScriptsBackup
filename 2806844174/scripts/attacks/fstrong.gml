set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9); // 6
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .01);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .16);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .16);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 5);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 5);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 104);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8); // 10
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, hitfx3);

for (var hnum = 2; hnum < 6; hnum++) {
    set_hitbox_value(AT_FSTRONG, hnum, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSTRONG, hnum, HG_WINDOW, 3);
    set_hitbox_value(AT_FSTRONG, hnum, HG_WINDOW_CREATION_FRAME, (hnum-2)*4);
    set_hitbox_value(AT_FSTRONG, hnum, HG_LIFETIME, 2);
    set_hitbox_value(AT_FSTRONG, hnum, HG_HITBOX_X, 62);
    set_hitbox_value(AT_FSTRONG, hnum, HG_HITBOX_Y, -26);
    set_hitbox_value(AT_FSTRONG, hnum, HG_WIDTH, 94);
    set_hitbox_value(AT_FSTRONG, hnum, HG_HEIGHT, 45);
    set_hitbox_value(AT_FSTRONG, hnum, HG_PRIORITY, 2);
    set_hitbox_value(AT_FSTRONG, hnum, HG_DAMAGE, 1); // 10
    set_hitbox_value(AT_FSTRONG, hnum, HG_ANGLE, 70);
    set_hitbox_value(AT_FSTRONG, hnum, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_FSTRONG, hnum, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_FSTRONG, hnum, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_FSTRONG, hnum, HG_HITPAUSE_SCALING, 0);
    //set_hitbox_value(AT_FSTRONG, hnum, HG_VISUAL_EFFECT, 304);
    set_hitbox_value(AT_FSTRONG, hnum, HG_HIT_SFX, sound_get("coreblade_hit_05"));
    set_hitbox_value(AT_FSTRONG, hnum, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_FSTRONG, hnum, HG_HITBOX_GROUP, hnum);
    set_hitbox_value(AT_FSTRONG, hnum, HG_ANGLE_FLIPPER, 10);
    set_hitbox_value(AT_FSTRONG, hnum, HG_VISUAL_EFFECT, hitfx1);
    set_hitbox_value(AT_FSTRONG, hnum, HG_TECHABLE, 3); // 10
    set_hitbox_value(AT_FSTRONG, hnum, HG_SDI_MULTIPLIER, 0);
    set_hitbox_value(AT_FSTRONG, hnum, HG_DRIFT_MULTIPLIER, 0);
}