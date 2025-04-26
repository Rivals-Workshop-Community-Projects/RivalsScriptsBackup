set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 12);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC, "Data displayed for minimum cast / fully charged cast respectively.

Projectile takes " + string(nspecial_max_charge) + " frames to fully charge.");

//charge startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

//charge window
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//uncharged startup
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);

//uncharged release
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//uncharged active
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);

//uncharged endlag
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_GOTO, 13);

//charged startup
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);

//charged release
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);

//charged active
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);

//charged endlag
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_GOTO, 13);

//cancel 1
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 6);

//cancel 2
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_NSPECIAL, 5)

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2)
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 180);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, hfx_tiny);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("smash_magic_light"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, nspecial_destroyfx);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "No Charge");

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 180);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2)
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 55);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, hfx_big);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_big"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("smash_magic_heavy"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, nspecial_destroyfx);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Full Charge");

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, hfx_tiny);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");


set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 56);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, hfx_tiny);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 56);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, hfx_tiny);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 5, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

var w6 = get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH);
var w9 = get_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH);

var w1 = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
var w2 = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH);
var w3 = get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
var w4 = get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH);
var w5 = get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH);
var w7 = get_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH);
var w8 = get_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH);
var w10 = get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH);

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_ENDLAG, string(w6) + " / " + string(w10));

set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_ACTIVE, string(w1 + w3 + w4) + "-" );
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_ACTIVE, string(w1 + w7 + w8) + "-" );
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_ACTIVE, string(w1 + w3 + w4) + "-" + string(w1+w3+w4+2) );
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_ACTIVE, string(w1 + w3 + w4) + "-" + string(w1+w3+w4+2) );
set_hitbox_value(AT_NSPECIAL, 5, HG_MUNO_HITBOX_ACTIVE, string(w1 + w7 + w8) + "-" + string(w1+w7+w8+3) );

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_FAF, string(w1+w3+w4+w5+w6) + " / " + string(w1+w7+w8+w9+w10));