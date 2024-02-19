set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("nspecial_hold"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hold_hurt"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_hold_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hold_air_hurt"));

//Startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_swallow"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_GOTO, 2);

//Level 1
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("mfx_place_marker"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_GOTO, 5);

//Level 2
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("mfx_place_marker"));

//Level 3
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("mfx_place_marker"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO, 5);

//About to Explode
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_GOTO, 6);

//Fly Upward
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, get_player_color(player) == 16? sound_get("FARTWITHEXTRAREVERB"):sound_get("skunkburst"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_GOTO, 9);

//Fly Horizontally
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 12);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, get_player_color(player) == 16? sound_get("FARTWITHEXTRAREVERB"):sound_get("skunkburst"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_GOTO, 9);

//Fly Downward
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, 12);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX, get_player_color(player) == 16? sound_get("FARTWITHEXTRAREVERB"):sound_get("skunkburst"));
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);

//Endlag
set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL, 9);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 73);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 73);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 73);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 73);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 73);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 73);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 155);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 73);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL, 7, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 73);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 155);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL, 8, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));

set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -58);
set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 155);
set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 73);
set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL, 9, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USPECIAL, 9, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 9, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));