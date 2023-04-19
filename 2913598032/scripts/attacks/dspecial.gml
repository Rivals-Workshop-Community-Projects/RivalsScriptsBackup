set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));

// Level 0
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sfx_lego);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 8);

// Level 1
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sfx_lego);

// Level 2
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sfx_lego);

// Level 3
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sfx_lego);

// Level 4
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, sfx_lego);




set_num_hitboxes(AT_DSPECIAL, 5);

// LEVEL 0
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);

// LEVEL 1
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);

// LEVEL 2
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 65);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 1);

// LEVEL 3
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 65);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 1);

// LEVEL 4
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 65);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sfx_crit);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_TECHABLE, 1);