set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

//aerial version
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swish_heavy"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, 12);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
//landing hit
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 15);
//landing no hit
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_DSPECIAL_2, 5)
//AERIAL HITBOXES
//spike sweetspot (early only)
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 34);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
//early hit
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 46);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
//late hit
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 14);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 52);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 79);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
//only hits grounded, flinches so landing hit connects
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 18);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 52);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 79);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 69);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//landing hitbox
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X, 19);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH, 97);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, 54);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_VISUAL_EFFECT, 304);