set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 11);
set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 6);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

//Throw 1
set_window_value(AT_NSPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_NSPECIAL, 2, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_GOTO, 13);

//Throw 2
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_GOTO, 13);

//Charged
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_NSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 17);

//Cancel
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 10);

//Muno frame data info
var startup_charge = get_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH);
var startup_charge_loop = get_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH) * NSPECIAL_CHARGE_MIN_LOOPS;
var startup_full = startup_charge + startup_charge_loop + get_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH);
var recovery_full = get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH);
var faf_full = startup_full + recovery_full;

var startup = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
var recovery = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
var faf = startup + recovery;

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_FAF, `${faf} + (${faf_full}  charged)`)
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_ENDLAG, `${recovery} + (${recovery_full} charged)`)
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD, `Charged values assume minimum charge time.`)


set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Projectile (uncharged)");
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_ACTIVE, startup + 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_tools"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));

set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Projectile (charged)");
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_ACTIVE, startup_full + 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fx_tools"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 306 );
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);