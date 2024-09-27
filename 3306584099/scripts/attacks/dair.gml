set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_MUNO_ATTACK_USES_ROLES, 1);

weapon_attack_spr[AT_DAIR] = sprite_get("dair_w");
weapon_xoffset[AT_DAIR] = 0;
weapon_yoffset[AT_DAIR] = !runeL ? -32 : 32;

set_window_value(AT_DAIR, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_DAIR] = 4;
weapon_window_max[AT_DAIR] = 6;

set_window_value(AT_DAIR, 4, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH));
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DAIR, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, get_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH));
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, get_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH));
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 0);

weapon_hitbox_min[AT_DAIR] = 1;
weapon_hitbox_max[AT_DAIR] = 2;

set_hitbox_value(AT_DAIR, 1, HG_MUNO_HITBOX_NAME, "Sourspot");
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 34);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 52);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_DAIR, 1, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_DAIR, 1));

set_hitbox_value(AT_DAIR, 2, HG_MUNO_HITBOX_NAME, "Sweetspot");
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 62);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 32);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.86);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 158 );
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_DAIR, 2, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_DAIR, 2));


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