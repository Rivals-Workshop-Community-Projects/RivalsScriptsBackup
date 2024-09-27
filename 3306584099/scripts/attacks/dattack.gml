set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

weapon_attack_spr[AT_DATTACK] = sprite_get("dattack_w");
weapon_xoffset[AT_DATTACK] = !runeL ? 8 : 24;
weapon_yoffset[AT_DATTACK] = 0;

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9.75);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 19);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_DATTACK] = 4;
weapon_window_max[AT_DATTACK] = 6;

set_window_value(AT_DATTACK, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH));
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DATTACK, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH));
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DATTACK, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH));
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 3);

set_hitbox_value(AT_DATTACK, 1, HG_MUNO_HITBOX_NAME, "Clean Melee Hit");
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_DATTACK, 2, HG_MUNO_HITBOX_NAME, "Late Melee Hit");
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DATTACK, 3, HG_MUNO_HITBOX_NAME, "Projectile Blocker");
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);

weapon_hitbox_min[AT_DATTACK] = 4;
weapon_hitbox_max[AT_DATTACK] = 5;

set_hitbox_value(AT_DATTACK, 4, HG_MUNO_HITBOX_NAME, "Clean Weapon Hit");
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 46);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 66);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_DATTACK, 4, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_DATTACK, 4));

set_hitbox_value(AT_DATTACK, 5, HG_MUNO_HITBOX_NAME, "Late Weapon Hit");
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 46);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 38);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 5, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_DATTACK, 5, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_DATTACK, 5));

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