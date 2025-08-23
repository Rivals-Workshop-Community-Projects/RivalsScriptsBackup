set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_MUNO_ATTACK_USES_ROLES, 1);

weapon_attack_spr[AT_NAIR] = sprite_get("nair_w");
weapon_xoffset[AT_NAIR] = 0;
weapon_yoffset[AT_NAIR] = !runeL ? 32 : 64;

set_window_value(AT_NAIR, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_NAIR] = 4;
weapon_window_max[AT_NAIR] = 6;

set_window_value(AT_NAIR, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH));
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NAIR, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, get_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH));
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, get_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH));
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 4 * runeL);

set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Melee Hit 1");
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Melee Hit 2");
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_MUNO_HITBOX_NAME, "Melee Hit 3");
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 4, HG_MUNO_HITBOX_NAME, "Melee Hit Final");
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 66);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);

if (!runeL)
{
    set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_EXCLUDE, 1);
    set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_EXCLUDE, 1);
    set_hitbox_value(AT_NAIR, 3, HG_MUNO_HITBOX_EXCLUDE, 1);
    set_hitbox_value(AT_NAIR, 4, HG_MUNO_HITBOX_EXCLUDE, 1);
}

weapon_hitbox_min[AT_NAIR] = 5;
weapon_hitbox_max[AT_NAIR] = 8;

set_hitbox_value(AT_NAIR, 5, HG_MUNO_HITBOX_NAME, "Weapon Hit 1");
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -54);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NAIR, 5, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("sfx_iceslash_weak2"));
set_hitbox_value(AT_NAIR, 5, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_NAIR, 5));

set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NAIR, 6, HG_MUNO_HITBOX_NAME, "Weapon Hit 2");
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 6, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_NAIR, 6));

set_hitbox_value(AT_NAIR, 7, HG_MUNO_HITBOX_NAME, "Weapon Hit 3");
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -54);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, sound_get("sfx_iceslash_weak2"));
set_hitbox_value(AT_NAIR, 7, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_NAIR, 7));

set_hitbox_value(AT_NAIR, 8, HG_MUNO_HITBOX_NAME, "Weapon Hit Final");
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -0);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -54);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 110);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, sound_get("sfx_iceslash_medium2"));
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 8, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_NAIR, 8));

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