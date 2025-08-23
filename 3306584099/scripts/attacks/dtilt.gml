set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

weapon_attack_spr[AT_DTILT] = sprite_get("dtilt_w");
weapon_xoffset[AT_DTILT] = !runeL ? 48 : 96;
weapon_yoffset[AT_DTILT] = 0;
weapon_follow[AT_DTILT] = false;

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_DTILT] = 4;
weapon_window_max[AT_DTILT] = 6;

set_window_value(AT_DTILT, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH));
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DTILT, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, get_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH));
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, get_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH) + 8);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Muno stuff
var cancel = get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH) + get_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH);

set_attack_value(AT_DTILT, AG_MUNO_ATTACK_MISC, `Can jump cancel on frame ${cancel}`);

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_MUNO_HITBOX_NAME, "Sourspot");
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 54);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

weapon_hitbox_min[AT_DTILT] = 2;
weapon_hitbox_max[AT_DTILT] = 2;

set_hitbox_value(AT_DTILT, 2, HG_MUNO_HITBOX_NAME, "Sword");
set_hitbox_value(AT_DTILT, 2, HG_MUNO_HITBOX_MISC_ADD, "Cannot go off ledges");
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 68);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("sfx_iceslash_medium2"));
set_hitbox_value(AT_DTILT, 2, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_DTILT, 2));

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