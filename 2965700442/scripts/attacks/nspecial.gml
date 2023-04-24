set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Values are for charge 1/2/3.
Cancellable after 7 frames.");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 0);

set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 12);

//Charge 1
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_hazard_start"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

//Charge 2
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 86);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_anthem_nspecial_charge"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 12);

//Full Charge
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 36);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_mol_huge_light"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 47);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 27);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 45);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_GOTO, 13);

//Charge 1
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 37);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 13);

//Charge 2
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 44);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 47);

set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 35);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 49);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_GOTO, 13);

//Cancel
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 54);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_SFX_FRAME, 9);

for (var i = 0; i <= 12; i++) {
    set_window_value(AT_NSPECIAL, i, AG_MUNO_WINDOW_EXCLUDE, 1);
}

//Muno stuff
var c1_startup = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH);
var c1_endlag = get_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH) - 1;
var c1_faf = c1_startup + c1_endlag + 1;

var c2_startup = c1_startup + get_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH)
var c2_endlag = get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH) - 1;
var c2_faf = c2_startup + c2_endlag + 1;

var c3_startup = c1_startup + c2_startup + get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)
var c3_endlag = get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH) - 1;
var c3_faf = c3_startup +  c3_endlag + 1;

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_ENDLAG, string(c1_endlag) + "/" + string(c2_endlag) + "/" + string(c3_endlag));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_FAF, string(c1_faf) + "/" + string(c2_faf) + "/" + string(c3_faf));

//Hitboxes
set_num_hitboxes(AT_NSPECIAL, 6);

set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Projecile Charge 1");
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Projecile Contact 1");
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6)
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.1)
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj1e"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Projecile Charge 2");
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 27);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 5.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Projecile Contact 2");
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 32);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 128);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 128);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 8)
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.1)
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj2e"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MULTIHIT, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HITRATE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_MULTIHIT_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_MULTIHIT_VFX, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_MULTIHIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 2);


set_hitbox_value(AT_NSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Projecile Charge 3");
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 46);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 36);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 6, HG_MUNO_HITBOX_NAME, "Projecile Contact 3");
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 48);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 192);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 192);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 10)
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 1)
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ell_big_missile_ground"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj3e"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MULTIHIT, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HITRATE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_MULTIHIT_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_MULTIHIT_VFX, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_MULTIHIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_LOCKOUT, 2);
