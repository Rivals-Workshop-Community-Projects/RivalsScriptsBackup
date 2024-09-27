set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

weapon_attack_spr[AT_FTILT] = sprite_get("ftilt_w");
weapon_xoffset[AT_FTILT] = !runeL ? 32 : 64;
weapon_yoffset[AT_FTILT] = 0;
weapon_follow[AT_FTILT] = false;

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 4);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_FTILT] = 4;
weapon_window_max[AT_FTILT] = 6;

set_window_value(AT_FTILT, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH));
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, get_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH));
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, get_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH));
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,1);

set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_NAME, "Melee Hit");
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 52);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);

weapon_hitbox_min[AT_FTILT] = 2;
weapon_hitbox_max[AT_FTILT] = 2;

set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Sword");
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 53);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("sfx_iceslash_medium1"));
set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_FTILT, 2));

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