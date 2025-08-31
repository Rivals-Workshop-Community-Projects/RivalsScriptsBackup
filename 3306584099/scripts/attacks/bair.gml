set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_MUNO_ATTACK_USES_ROLES, 1);

weapon_attack_spr[AT_BAIR] = sprite_get("bair_w");
weapon_xoffset[AT_BAIR] = !runeL ? -48 : -96;
weapon_yoffset[AT_BAIR] = 0;

set_window_value(AT_BAIR, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_BAIR, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_BAIR] = 4;
weapon_window_max[AT_BAIR] = 6;

set_window_value(AT_BAIR, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH));
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_BAIR, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, get_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH));
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, get_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH));
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2 * runeL);

set_hitbox_value(AT_BAIR, 1, HG_MUNO_HITBOX_NAME, "Sourspot Early");
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_BAIR, 2, HG_MUNO_HITBOX_NAME, "Sourspot Late");
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -36);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 46);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

if (!runeL) {
    set_hitbox_value(AT_BAIR, 1, HG_MUNO_HITBOX_EXCLUDE, 1);
    set_hitbox_value(AT_BAIR, 2, HG_MUNO_HITBOX_EXCLUDE, 1);
}

weapon_hitbox_min[AT_BAIR] = 3;
weapon_hitbox_max[AT_BAIR] = 6;

set_hitbox_value(AT_BAIR, 3, HG_MUNO_HITBOX_NAME, "Weapon Sour Early");
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 58);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_BAIR, 3, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_BAIR, 3));

set_hitbox_value(AT_BAIR, 4, HG_MUNO_HITBOX_NAME, "Weapon Sour Late");
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 58);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_BAIR, 4, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_BAIR, 4));

set_hitbox_value(AT_BAIR, 5, HG_MUNO_HITBOX_NAME, "Weapon Sweet Early");
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 64);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 52);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 145);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_BAIR, 5, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_BAIR, 5));

set_hitbox_value(AT_BAIR, 6, HG_MUNO_HITBOX_NAME, "Weapon Sweet Late");
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -44);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 88);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 52);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_BAIR, 6, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_BAIR, 6));


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