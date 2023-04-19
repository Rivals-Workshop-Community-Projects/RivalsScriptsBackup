set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_2, AG_LANDING_LAG, 10); // 6
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

//startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("deboning_slasher_throw"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 9);

//attack
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL_2, 7);

for (var hnum = 1; hnum < 7; hnum++) {
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_WINDOW, 2);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_WINDOW_CREATION_FRAME, (hnum - 1) * 3);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_LIFETIME, 2);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_HITBOX_X, 13);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_HITBOX_Y, -4);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_WIDTH, 85);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_HEIGHT, 47);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_PRIORITY, 3);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_DAMAGE, 1); // 8
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_ANGLE, 90);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_HIT_SFX, sound_get("coreblade_hit_05"));
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_ANGLE_FLIPPER, 9);
    set_hitbox_value(AT_NSPECIAL_2, hnum, HG_VISUAL_EFFECT, hitfx1);
}

hnum = 6;
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_PRIORITY, 7);
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_DAMAGE, 6); // 8
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_2, hnum, HG_VISUAL_EFFECT, hitfx3);