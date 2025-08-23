set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_USES_ROLES, 1);

weapon_attack_spr[AT_FSTRONG] = sprite_get("fstrong_w");
weapon_xoffset[AT_FSTRONG] = !runeL ? -32 : 32;
weapon_yoffset[AT_FSTRONG] = 0;


set_window_value(AT_FSTRONG, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 3, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSTRONG, 4, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSTRONG, 5, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 5.25);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSTRONG, 6, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_FSTRONG] = 7;
weapon_window_max[AT_FSTRONG] = 12;
weapon_charge_window[AT_FSTRONG] = 7;

set_window_value(AT_FSTRONG, 7, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, get_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH));
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 8, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH));
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 9, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH));
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 10, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH));
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 11, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, get_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH));
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSTRONG, 12, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, get_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH));
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 0);

weapon_hitbox_min[AT_FSTRONG] = 1;
weapon_hitbox_max[AT_FSTRONG] = 2;

set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_NAME, "Hit 1");
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 88);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 98);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_FSTRONG, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_iceslash_medium1"));
set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_FSTRONG, 1));

set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_NAME, "Hit 2");
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 11);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 110);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 158);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("sfx_iceslash_heavy2"));
set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_FSTRONG, 2));

/*
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_NAME, "Hit 2 Sourspot");
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 62);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 58);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 58);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("sfx_iceslash_medium2"));
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_FSTRONG, 2));
*/

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