set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, "Values are for charge 1/2/3.
Cancellable after 7 frames.");
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_USES_ROLES, 0);

set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 12);

//Charge 1
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);

//Charge 2
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 38);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);

//Full Charge
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("sfx_fire3"));
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_GOTO, 14);

//Charge 1
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_SFX, sound_get("sfx_fire1"));
set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_GOTO, 14);

//Charge 2
set_window_value(AT_NSPECIAL_2, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 9, AG_WINDOW_SFX, sound_get("sfx_fire2"));
set_window_value(AT_NSPECIAL_2, 9, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_2, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 10, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL_2, 11, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL_2, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 11, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 11, AG_WINDOW_GOTO, 14);

//Cancel
set_window_value(AT_NSPECIAL_2, 12, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 12, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_2, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 12, AG_WINDOW_SFX, asset_get("sfx_burnend"));
set_window_value(AT_NSPECIAL_2, 12, AG_WINDOW_SFX_FRAME, 0);

for (var i = 0; i <= 12; i++) {
    set_window_value(AT_NSPECIAL_2, i, AG_MUNO_WINDOW_EXCLUDE, 1);
    set_window_value(AT_NSPECIAL_2, i, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_NSPECIAL_2, i, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
    set_window_value(AT_NSPECIAL_2, i, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);
}

//Muno stuff
var c1_startup = get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_LENGTH);
var c1_endlag = get_window_value(AT_NSPECIAL_2, 7, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_LENGTH) - 1;
var c1_faf = c1_startup + c1_endlag + 1;

var c2_startup = c1_startup + get_window_value(AT_NSPECIAL_2, 9, AG_WINDOW_LENGTH)
var c2_endlag = get_window_value(AT_NSPECIAL_2, 10, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL_2, 11, AG_WINDOW_LENGTH) - 1;
var c2_faf = c2_startup + c2_endlag + 1;

var c3_startup = c1_startup + c2_startup + get_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH)
var c3_endlag = get_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH) - 1;
var c3_faf = c3_startup +  c3_endlag + 1;

set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_ENDLAG, string(c1_endlag) + "/" + string(c2_endlag) + "/" + string(c3_endlag));
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_FAF, string(c1_faf) + "/" + string(c2_faf) + "/" + string(c3_faf));

set_num_hitboxes(AT_NSPECIAL_2, 5);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Fire (No Charge)");
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_fireproj1"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.35);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);

set_hitbox_value(AT_NSPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Fire (Charge 1)");
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 32);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_fireproj2"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.35);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);

set_hitbox_value(AT_NSPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Fire Burst (Charge 1)");
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("fx_fireproj2_e"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_MASK, sprite_get("fx_fireproj2_e_hurt"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, 6/20);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_NSPECIAL_2, 4, HG_MUNO_HITBOX_NAME, "Fire (Charge Full)");
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 28);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("fx_fireproj3"));
set_hitbox_value(AT_NSPECIAL_2, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, 0.35);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);

set_hitbox_value(AT_NSPECIAL_2, 5, HG_MUNO_HITBOX_NAME, "Fire Burst (Charge Full)");
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("fx_fireproj3_e"));
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_MASK, sprite_get("fx_fireproj3_e_hurt"));
set_hitbox_value(AT_NSPECIAL_2, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, 6/20);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);