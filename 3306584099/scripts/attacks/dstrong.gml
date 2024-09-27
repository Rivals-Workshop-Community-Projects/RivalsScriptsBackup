set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt")); //sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_MUNO_ATTACK_USES_ROLES, 1);

weapon_attack_spr[AT_DSTRONG] = sprite_get("dstrong_w");
weapon_xoffset[AT_DSTRONG] = 0;
weapon_yoffset[AT_DSTRONG] = 0;

set_window_value(AT_DSTRONG, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSTRONG, 2, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DSTRONG, 3, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 4, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_DSTRONG] = 5;
weapon_window_max[AT_DSTRONG] = 8;
weapon_charge_window[AT_DSTRONG] = 5;

set_window_value(AT_DSTRONG, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, get_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSTRONG, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH));
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSTRONG, 7, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, get_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH));
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 8, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, get_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH));
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG,1);

set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_NAME, "Sourspot");
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 82);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

weapon_hitbox_min[AT_DSTRONG] = 2;
weapon_hitbox_max[AT_DSTRONG] = 3;

set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_NAME, "Sweetspot 1");
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_DSTRONG, 2));

set_hitbox_value(AT_DSTRONG, 3, HG_MUNO_HITBOX_NAME, "Sweetspot 2");
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -46);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 120);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_DSTRONG, 3));

#define weapon_active_time(_att, _hitbox_cur)
var frames_before = 1;
var frames_active = 0;
var window_before = weapon_window_min[_att];

while (window_before < get_hitbox_value(_att, _hitbox_cur, HG_WINDOW)) {
    frames_before += get_window_value(_att, window_before, AG_WINDOW_LENGTH);
    window_before ++;
}
frames_before += get_hitbox_value(_att, _hitbox_cur, HG_WINDOW_CREATION_FRAME);
frames_active = frames_before - 1;
frames_active += get_hitbox_value(_att, _hitbox_cur, HG_LIFETIME);
return string(frames_before) + "-" + string(frames_active);