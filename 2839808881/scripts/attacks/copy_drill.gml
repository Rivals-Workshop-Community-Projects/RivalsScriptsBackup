set_attack_value(AT_COPY_DRILL, AG_SPRITE, sprite_get("ability_drill"));
set_attack_value(AT_COPY_DRILL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_COPY_DRILL, AG_HURTBOX_SPRITE, sprite_get("ability_drill_hurt"));
set_attack_value(AT_COPY_DRILL, AG_CATEGORY, 2);

//Startup
set_window_value(AT_COPY_DRILL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_DRILL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_COPY_DRILL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_DRILL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_DRILL, 1, AG_WINDOW_SFX, asset_get("sfx_propeller_dagger_draw"));

//Drill (Air)
set_window_value(AT_COPY_DRILL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_DRILL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_DRILL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_DRILL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Burrow
set_window_value(AT_COPY_DRILL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_DRILL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_COPY_DRILL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_COPY_DRILL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_COPY_DRILL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_COPY_DRILL, 3, AG_WINDOW_HSPEED_TYPE, 1);

//Dig
set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_HSPEED_TYPE, 1);

//Startup for Un-Burrowing
set_window_value(AT_COPY_DRILL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_DRILL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_COPY_DRILL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_DRILL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_COPY_DRILL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_DRILL, 5, AG_WINDOW_SFX, sound_get("sfx_kfl_drill_emerge"));
set_window_value(AT_COPY_DRILL, 5, AG_WINDOW_SFX_FRAME, 2);

//Hitbox for Rising
set_window_value(AT_COPY_DRILL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_DRILL, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_COPY_DRILL, 6, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_COPY_DRILL, 6, AG_WINDOW_ANIM_FRAME_START, 16);

//Endlag 1
set_window_value(AT_COPY_DRILL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_DRILL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_COPY_DRILL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_DRILL, 7, AG_WINDOW_ANIM_FRAME_START, 28);

//Endlag 2
set_window_value(AT_COPY_DRILL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_DRILL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_COPY_DRILL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_DRILL, 8, AG_WINDOW_ANIM_FRAME_START, 29);

//forced parry stun
set_window_value(AT_COPY_DRILL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_DRILL, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_COPY_DRILL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_DRILL, 9, AG_WINDOW_ANIM_FRAME_START, 29);

set_num_hitboxes(AT_COPY_DRILL, 3);

//spike falling hitbox
set_hitbox_value(AT_COPY_DRILL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_DRILL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_DRILL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_COPY_DRILL, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_COPY_DRILL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_COPY_DRILL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_COPY_DRILL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_COPY_DRILL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_COPY_DRILL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_COPY_DRILL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_COPY_DRILL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_COPY_DRILL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_COPY_DRILL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_COPY_DRILL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_COPY_DRILL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_COPY_DRILL, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_COPY_DRILL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_COPY_DRILL, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_COPY_DRILL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_COPY_DRILL, 1, HG_HITBOX_GROUP, 1);

//non-spike falling hitbox
set_hitbox_value(AT_COPY_DRILL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_DRILL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_DRILL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_COPY_DRILL, 2, HG_HITBOX_X, 7);
set_hitbox_value(AT_COPY_DRILL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_COPY_DRILL, 2, HG_WIDTH, 46);
set_hitbox_value(AT_COPY_DRILL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_COPY_DRILL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_COPY_DRILL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_COPY_DRILL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_COPY_DRILL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_COPY_DRILL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_COPY_DRILL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_COPY_DRILL, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_COPY_DRILL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_COPY_DRILL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_COPY_DRILL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_COPY_DRILL, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_COPY_DRILL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_COPY_DRILL, 2, HG_HITBOX_GROUP, 1);

//rising hitbox
set_hitbox_value(AT_COPY_DRILL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_DRILL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_COPY_DRILL, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_COPY_DRILL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_COPY_DRILL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_COPY_DRILL, 3, HG_WIDTH, 45);
set_hitbox_value(AT_COPY_DRILL, 3, HG_HEIGHT, 68);
set_hitbox_value(AT_COPY_DRILL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_COPY_DRILL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_COPY_DRILL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_COPY_DRILL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_COPY_DRILL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_COPY_DRILL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_COPY_DRILL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_COPY_DRILL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_COPY_DRILL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_COPY_DRILL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_COPY_DRILL, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_COPY_DRILL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_COPY_DRILL, 3, HG_HITBOX_GROUP, 2);