set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_FAIR, AG_MUNO_ATTACK_USES_ROLES, 1);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

weapon_attack_spr[AT_FAIR] = sprite_get("fair_w");
weapon_xoffset[AT_FAIR] = !runeL ? 16 : 64;
weapon_yoffset[AT_FAIR] = 0;

set_window_value(AT_FAIR, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FAIR, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_FAIR] = 4;
weapon_window_max[AT_FAIR] = 6;

set_window_value(AT_FAIR, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, get_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH));
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FAIR, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, get_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH));
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);

//For posterity
var anim_frames = get_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH) / get_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES)

set_window_value(AT_FAIR, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, get_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH) + anim_frames);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,1 * runeL);

set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_NAME, "Sourspot");
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

if (!runeL) {
    set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_EXCLUDE, 1);
}

weapon_hitbox_min[AT_FAIR] = 2;
weapon_hitbox_max[AT_FAIR] = 4;

set_hitbox_value(AT_FAIR, 2, HG_MUNO_HITBOX_NAME, "Weapon Sourspot");
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_FAIR, 2, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_FAIR, 2));

set_hitbox_value(AT_FAIR, 3, HG_MUNO_HITBOX_NAME, "Weapon Midspot");
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 26);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_FAIR, 3, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_FAIR, 2));

set_hitbox_value(AT_FAIR, 4, HG_MUNO_HITBOX_NAME, "Weapon Sweetspot");
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 100);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -31); //36
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 13);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_FAIR, 4, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_FAIR, 2));

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