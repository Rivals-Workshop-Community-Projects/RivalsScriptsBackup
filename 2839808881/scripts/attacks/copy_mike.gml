set_attack_value(AT_COPY_MIKE, AG_CATEGORY, 2);
set_attack_value(AT_COPY_MIKE, AG_SPRITE, sprite_get("ability_mike1"));
set_attack_value(AT_COPY_MIKE, AG_HURTBOX_SPRITE, sprite_get("ability_mike1_hurt"));
set_attack_value(AT_COPY_MIKE, AG_NUM_WINDOWS, 4);
set_attack_value(AT_COPY_MIKE, AG_OFF_LEDGE, 1);

//If you're browsing this file looking for Mike frame data, go to attack_update. You'll find it there!

//startup
set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_SFX, sound_get("mikekirby1_l"));
set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_SFX_FRAME, 19);

//active/yell
set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_VSPEED_TYPE, 1);

//endlag 1 (holds the pose)
set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_VSPEED_TYPE, 1);

//endlag 2
set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_COPY_MIKE, 3);

set_hitbox_value(AT_COPY_MIKE, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_MIKE, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_MIKE, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_COPY_MIKE, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_COPY_MIKE, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_COPY_MIKE, 1, HG_WIDTH, 130);
set_hitbox_value(AT_COPY_MIKE, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_COPY_MIKE, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_MIKE, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_COPY_MIKE, 1, HG_ANGLE, 45);
set_hitbox_value(AT_COPY_MIKE, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_COPY_MIKE, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_COPY_MIKE, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_COPY_MIKE, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_COPY_MIKE, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_COPY_MIKE, 1, HG_VISUAL_EFFECT, 321);
set_hitbox_value(AT_COPY_MIKE, 1, HG_HIT_SFX, asset_get("sfx_pom_blast1"));

set_hitbox_value(AT_COPY_MIKE, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_MIKE, 2, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_MIKE, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_COPY_MIKE, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_COPY_MIKE, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_COPY_MIKE, 2, HG_WIDTH, 140);
set_hitbox_value(AT_COPY_MIKE, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_COPY_MIKE, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_COPY_MIKE, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_COPY_MIKE, 2, HG_ANGLE, 45);
set_hitbox_value(AT_COPY_MIKE, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_COPY_MIKE, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_COPY_MIKE, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_COPY_MIKE, 2, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_COPY_MIKE, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_COPY_MIKE, 2, HG_VISUAL_EFFECT, 320);
set_hitbox_value(AT_COPY_MIKE, 2, HG_HIT_SFX, asset_get("sfx_pom_blast2"));

set_hitbox_value(AT_COPY_MIKE, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_MIKE, 3, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_MIKE, 3, HG_LIFETIME, 9);
set_hitbox_value(AT_COPY_MIKE, 3, HG_HITBOX_X, 33);
set_hitbox_value(AT_COPY_MIKE, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_COPY_MIKE, 3, HG_WIDTH, 180);
set_hitbox_value(AT_COPY_MIKE, 3, HG_HEIGHT, 180);
set_hitbox_value(AT_COPY_MIKE, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_COPY_MIKE, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_COPY_MIKE, 3, HG_ANGLE, 45);
set_hitbox_value(AT_COPY_MIKE, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_COPY_MIKE, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_COPY_MIKE, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_COPY_MIKE, 3, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_COPY_MIKE, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_COPY_MIKE, 3, HG_VISUAL_EFFECT, 319);
set_hitbox_value(AT_COPY_MIKE, 3, HG_HIT_SFX, asset_get("sfx_pom_blast3"));