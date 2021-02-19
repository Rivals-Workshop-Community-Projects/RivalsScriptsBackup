set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 45);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1)
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1)
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("breezedrill_windup"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1)
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 14);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2)
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_num_hitboxes(AT_NSPECIAL,5);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 84);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 38);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1.6);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("Rocket Hit"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 1);