set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8); // 4
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 5); // 7
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 4);

for (var hnum = 1; hnum < 3; hnum++) {
    set_hitbox_value(AT_BAIR, hnum, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_BAIR, hnum, HG_WINDOW, 2);
    set_hitbox_value(AT_BAIR, hnum, HG_LIFETIME, 3);
    set_hitbox_value(AT_BAIR, hnum, HG_HITBOX_X, hnum==1?-29:-11);
    set_hitbox_value(AT_BAIR, hnum, HG_HITBOX_Y, hnum==1?-39:-75);
    set_hitbox_value(AT_BAIR, hnum, HG_WIDTH, hnum==1?43:53);
    set_hitbox_value(AT_BAIR, hnum, HG_HEIGHT, hnum==1?88:36);
    set_hitbox_value(AT_BAIR, hnum, HG_PRIORITY, 4);
    set_hitbox_value(AT_BAIR, hnum, HG_DAMAGE, 3); // 5
    set_hitbox_value(AT_BAIR, hnum, HG_ANGLE, 135);
    set_hitbox_value(AT_BAIR, hnum, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(AT_BAIR, hnum, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_BAIR, hnum, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_BAIR, hnum, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_BAIR, hnum, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
    set_hitbox_value(AT_BAIR, hnum, HG_HITBOX_GROUP, 1);
    set_hitbox_value(AT_BAIR, hnum, HG_VISUAL_EFFECT, hitfx1);
    set_hitbox_value(AT_BAIR, hnum, HG_ANGLE_FLIPPER, 10);
}

for (var hnum = 3; hnum < 5; hnum++) {
    set_hitbox_value(AT_BAIR, hnum, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_BAIR, hnum, HG_WINDOW, 3);
    set_hitbox_value(AT_BAIR, hnum, HG_LIFETIME, 3);
    set_hitbox_value(AT_BAIR, hnum, HG_HITBOX_X, hnum==3?-33:-12);
    set_hitbox_value(AT_BAIR, hnum, HG_HITBOX_Y, hnum==3?-22:21);
    set_hitbox_value(AT_BAIR, hnum, HG_WIDTH, hnum==3?57:54);
    set_hitbox_value(AT_BAIR, hnum, HG_HEIGHT, hnum==3?113:41);
    set_hitbox_value(AT_BAIR, hnum, HG_PRIORITY, 7);
    set_hitbox_value(AT_BAIR, hnum, HG_DAMAGE, 7); // 5
    set_hitbox_value(AT_BAIR, hnum, HG_ANGLE, 110);
    set_hitbox_value(AT_BAIR, hnum, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_BAIR, hnum, HG_KNOCKBACK_SCALING, .7);
    set_hitbox_value(AT_BAIR, hnum, HG_BASE_HITPAUSE, 11);
    set_hitbox_value(AT_BAIR, hnum, HG_HITPAUSE_SCALING, .3);
    set_hitbox_value(AT_BAIR, hnum, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
    set_hitbox_value(AT_BAIR, hnum, HG_HITBOX_GROUP, 2);
    set_hitbox_value(AT_BAIR, hnum, HG_VISUAL_EFFECT, hitfx2);
}