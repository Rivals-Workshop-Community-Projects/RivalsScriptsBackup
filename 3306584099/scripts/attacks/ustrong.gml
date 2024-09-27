set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_USES_ROLES, 1);


weapon_attack_spr[AT_USTRONG] = sprite_get("ustrong_w");
weapon_xoffset[AT_USTRONG] = 0
weapon_yoffset[AT_USTRONG] = !runeL ? 0 : -64;

set_window_value(AT_USTRONG, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USTRONG, 5, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

weapon_window_min[AT_USTRONG] = 6;
weapon_window_max[AT_USTRONG] = 10;
weapon_charge_window[AT_USTRONG] = 6;

set_window_value(AT_USTRONG, 6, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, get_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH));
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 7, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH));
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 8, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, get_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH));
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 8, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USTRONG, 8, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USTRONG, 9, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH));
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 9, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USTRONG, 10, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_USTRONG, 10, AG_WINDOW_LENGTH, get_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH));
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 0);
var startup = get_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH) +  get_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH)

weapon_hitbox_min[AT_USTRONG] = 1;

set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_NAME, "Initial Hit");
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 8);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 128);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX,  sound_get("sfx_iceslash_weak1"));
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_ACTIVE, `${startup}-${startup+get_hitbox_value(AT_USTRONG, 1, HG_LIFETIME)}`);

set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_NAME, "Multihits");
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 8);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 115);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX,  sound_get("sfx_iceslash_weak1"));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_USTRONG, 2, HG_SDI_MULTIPLIER, 0.25);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 128);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);

var hit_times = 4
var i = 3;
var group = 2;

repeat (hit_times) {
    set_hitbox_value(AT_USTRONG, i, HG_MUNO_HITBOX_EXCLUDE, 1);
    set_hitbox_value(AT_USTRONG, i, HG_PARENT_HITBOX, 2);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_USTRONG, i, HG_WINDOW, 8);
    set_hitbox_value(AT_USTRONG, i, HG_WINDOW_CREATION_FRAME, (group) * 2);
    set_hitbox_value(AT_USTRONG, i, HG_LIFETIME, 1);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_Y, -40);
    set_hitbox_value(AT_USTRONG, i, HG_WIDTH, 128);
    set_hitbox_value(AT_USTRONG, i, HG_HEIGHT, 46);
    set_hitbox_value(AT_USTRONG, i, HG_SHAPE, 0);
    set_hitbox_value(AT_USTRONG, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_USTRONG, i, HG_HITBOX_GROUP, group);
    
    i += 1;
    group += 1;
}
var startup2 = startup
set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_ACTIVE, `${startup2 + get_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME)}-${startup2+get_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH)}`);

set_hitbox_value(AT_USTRONG, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, i, HG_WINDOW, 9);
set_hitbox_value(AT_USTRONG, i, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, i, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, i, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, i, HG_WIDTH, 148);
set_hitbox_value(AT_USTRONG, i, HG_HEIGHT, 64);
set_hitbox_value(AT_USTRONG, i, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, i, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, i, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, i, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, i, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, i, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, i, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, i, HG_HITBOX_GROUP, group + 1);
set_hitbox_value(AT_USTRONG, i, HG_HIT_SFX, sound_get("sfx_iceslash_heavy2"));
set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_USTRONG, i, HG_MUNO_HITBOX_ACTIVE, weapon_active_time(AT_USTRONG, i));

weapon_hitbox_max[AT_USTRONG] = i;

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