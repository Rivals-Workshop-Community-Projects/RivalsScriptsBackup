set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

weapon_attack_spr[AT_UTILT] = sprite_get("utilt_w");
weapon_xoffset[AT_UTILT] = -32;
weapon_yoffset[AT_UTILT] = !runeL ? 0 : -32;
weapon_follow[AT_UTILT] = true;

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_UTILT] = 4;
weapon_window_max[AT_UTILT] = 6;

set_window_value(AT_UTILT, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH));
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UTILT, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, get_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH));
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, get_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH));
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 3);

set_hitbox_value(AT_UTILT, 1, HG_MUNO_HITBOX_NAME, "Melee 1");
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 2, HG_MUNO_HITBOX_NAME, "Melee 2");
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 88);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 3, HG_MUNO_HITBOX_NAME, "Melee 3");
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -32);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

weapon_hitbox_min[AT_UTILT] = 4;
weapon_hitbox_max[AT_UTILT] = 6;

set_hitbox_value(AT_UTILT, 4, HG_MUNO_HITBOX_NAME, "Weapon 1");
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 86);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 88);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, sound_get("sfx_iceslash_medium1"));
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_UTILT, 4, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_UTILT, 4));

set_hitbox_value(AT_UTILT, 5, HG_MUNO_HITBOX_NAME, "Weapon 2");
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 118);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 78);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, sound_get("sfx_iceslash_medium1"));
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_UTILT, 5, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_UTILT, 5));

set_hitbox_value(AT_UTILT, 6, HG_MUNO_HITBOX_NAME, "Weapon 3");
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -20);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 100);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, sound_get("sfx_iceslash_medium1"));
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_UTILT, 6, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_UTILT, 6));

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
