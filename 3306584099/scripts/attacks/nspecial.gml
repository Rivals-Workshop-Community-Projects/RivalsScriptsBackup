set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 10);

//#region Tomoko's data
//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_hair"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

//Charge 1
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LOOP_TIMES, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Startup Charge 1
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_nspecial_shoot"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 3);

//Active Charge 1
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//Recovery Charge 1
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_GOTO, 17);

//Full charge
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LOOP_TIMES, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);

//Active Full Charge
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 13);

//Recovery Full Charge
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 48);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 17);

//Turnaround
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_GOTO, 1);

//Cancel
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_GOTO, 17);
//#endregion

//#region Gun's data
weapon_attack_spr[AT_NSPECIAL] = sprite_get("nspecial_w");
weapon_xoffset[AT_NSPECIAL] = -48;
weapon_yoffset[AT_NSPECIAL] = -40;

weapon_window_min[AT_NSPECIAL] = 11;
weapon_window_max[AT_NSPECIAL] = 15;

//Startup
set_window_value(AT_NSPECIAL, 11, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH));
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 3);

//Charge 1
set_window_value(AT_NSPECIAL, 12, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH));
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 3);

//Startup
set_window_value(AT_NSPECIAL, 13, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_LENGTH, get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH));
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 3);

//Active
set_window_value(AT_NSPECIAL, 14, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 5);

//Recovery
set_window_value(AT_NSPECIAL, 15, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_GOTO, 17);

//Cancel
set_window_value(AT_NSPECIAL, 16, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 9);
//#endregion

//#region Frame data overrides
for (var i = 0; i <= 10; i++) {
    set_window_value(AT_NSPECIAL, i, AG_MUNO_WINDOW_EXCLUDE, 1);
}

//Muno stuff
var c1_loops = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LOOP_TIMES);
var c1_startup = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
var c1_endlag = get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH) - 1;
var c1_faf = c1_startup + c1_endlag + 1;

var c2_loops = get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LOOP_TIMES);
var c2_startup = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) 
    + (get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) * c1_loops)
    + (get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH) * c2_loops);
var c2_endlag = get_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH) +  get_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH) - 1;
var c2_faf = c2_startup + c2_endlag + 1;

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_ENDLAG, string(c1_endlag) + "/" + string(c2_endlag));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_FAF, string(c1_faf) + "/" + string(c2_faf));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC, `Min/Max charge.
Charge Cancellable on frame ${get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)}, which takes ${get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH)} frames.`);
//#endregion

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Charge 1 Projectile");
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspecial_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_ACTIVE, `${c1_startup + 1}-${c1_startup + 1 + get_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME)}`);

set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Charge 2 Projectile");
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 28);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 34);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj1a"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspecial_proj1a"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Charge 3 Projectile");
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 38);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 36);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj1b"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspecial_proj1b"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Full Charge Projectile");
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 36);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 18);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 158);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_ACTIVE, `${c2_startup + 1}-${c2_startup + 1 + get_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME)}`);