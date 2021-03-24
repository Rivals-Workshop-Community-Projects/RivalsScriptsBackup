set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.08);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_start"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1); //charging
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ghost_glove"));

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 4);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 58);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, taxiDir);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 40+abs(hsp));
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_hex_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 5);