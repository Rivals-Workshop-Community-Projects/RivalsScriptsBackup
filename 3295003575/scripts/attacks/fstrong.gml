set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, .5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("chainsawrev"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, sound_get("motor1"));

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy"));

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 7);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 72);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 114);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 37);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("bloodlight1"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, Bloodstab);
set_hitbox_value(AT_FSTRONG, 1, HG_FORCE_FLINCH, true);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 69);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 114);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 75);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING,0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, BloodFX1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("bloodlight2"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_FORCE_FLINCH, true);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 69);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 69);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 69);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 69);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FSTRONG, 7, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, 7, HG_HEIGHT, 37);
set_hitbox_value(AT_FSTRONG, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 7, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 7, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT, Bloodstab);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_SFX, sound_get("bloodmed2"));
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_GROUP, 7);