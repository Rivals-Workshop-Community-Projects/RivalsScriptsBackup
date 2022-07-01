set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 10);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
//Getting ready
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
//Charge
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//About to fall
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//Falling(Charged)
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 2);
//Landing with the move
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
//Punch Endlag
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_GOTO, 15);
//Cancel
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_GOTO, 15);
//About to fall
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
//Falling(Whiffed)
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_VSPEED, 15);
set_window_value(AT_DSPECIAL_AIR, 9, AG_WINDOW_VSPEED_TYPE, 2);
//Endlag
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 10, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_DSPECIAL_AIR, 4);

set_attack_value(AT_DSPECIAL_AIR, AG_MUNO_ATTACK_MISC_ADD, "Time your attack input to drop faster and crash down with a powerful landing hitbox. Enhanced drop can be canceled into double jump, airdodge, or Uspecial at any time");

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_MUNO_HITBOX_NAME, "Slam");

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 76);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Drop");

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_MUNO_HITBOX_NAME, "Slam Spike");

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 76);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 280);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_MUNO_HITBOX_NAME, "Drop Perfect");

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));