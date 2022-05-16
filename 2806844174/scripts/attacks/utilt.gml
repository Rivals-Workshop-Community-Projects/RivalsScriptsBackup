set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//startup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

//spin
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//2nd hit
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//endlag
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 6);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 48); // 20
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 1); // 3
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("coreblade_hit_05"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, hitfx1);

for (var hnum = 2; hnum < 6; hnum++) {
    set_hitbox_value(AT_UTILT, hnum, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_UTILT, hnum, HG_WINDOW, 2);
    set_hitbox_value(AT_UTILT, hnum, HG_WINDOW_CREATION_FRAME, (hnum - 2) * 4);
    set_hitbox_value(AT_UTILT, hnum, HG_LIFETIME, 2);
    set_hitbox_value(AT_UTILT, hnum, HG_HITBOX_X, 19 - 2*hnum);
    set_hitbox_value(AT_UTILT, hnum, HG_HITBOX_Y, -74);
    set_hitbox_value(AT_UTILT, hnum, HG_WIDTH, 70); // 20
    set_hitbox_value(AT_UTILT, hnum, HG_HEIGHT, 43);
    set_hitbox_value(AT_UTILT, hnum, HG_PRIORITY, 4);
    set_hitbox_value(AT_UTILT, hnum, HG_DAMAGE, 1); // 3
    set_hitbox_value(AT_UTILT, hnum, HG_ANGLE, 90);
    set_hitbox_value(AT_UTILT, hnum, HG_BASE_KNOCKBACK, 2);
    set_hitbox_value(AT_UTILT, hnum, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_UTILT, hnum, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(AT_UTILT, hnum, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_UTILT, hnum, HG_HIT_SFX, sound_get("coreblade_hit_05"));
    set_hitbox_value(AT_UTILT, hnum, HG_HITBOX_GROUP, hnum);
    set_hitbox_value(AT_UTILT, hnum, HG_ANGLE_FLIPPER, 9);
    set_hitbox_value(AT_UTILT, hnum, HG_VISUAL_EFFECT, hitfx1);
}

set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 21);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 112); // 20
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 81);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 6);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 5); // 3
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, hitfx2);