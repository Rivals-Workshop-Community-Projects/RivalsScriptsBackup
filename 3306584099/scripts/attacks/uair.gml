set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_USES_ROLES, 1);

weapon_attack_spr[AT_UAIR] = sprite_get("uair_w");
weapon_xoffset[AT_UAIR] = 0;
weapon_yoffset[AT_UAIR] = !runeL ? -32 : -60;;

set_window_value(AT_UAIR, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9); //8
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 3, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 4, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_UAIR] = 5;
weapon_window_max[AT_UAIR] = 8;

set_window_value(AT_UAIR, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH));
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UAIR, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, get_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH));
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 7, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, get_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH));
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 8, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_UAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 8, AG_WINDOW_LENGTH, get_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH) + 8);
set_window_value(AT_UAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 8, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,0);

weapon_hitbox_min[AT_UAIR] = 1;
weapon_hitbox_max[AT_UAIR] = 2;

set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Weapon Clean Hit");
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 84);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.82);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_UAIR, 1));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 199);

set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Weapon Late Hit");
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 7);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 72);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_UAIR, 2));
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 27);

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