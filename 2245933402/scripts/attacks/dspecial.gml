set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("stand_box"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("GL"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get( "gun3" ));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, -6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2)
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2)

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX, sound_get( "gun3" ));
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX_FRAME, 15);

set_num_hitboxes(AT_DSPECIAL, 4);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 860);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 1400);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, -100);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 130);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 250);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -100);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 65);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);