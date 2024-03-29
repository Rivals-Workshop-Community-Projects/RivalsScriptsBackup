set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);

//uas   uaa   uah   uar
//0-0:1 1-1:1 2-4:3 5-5:1

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);//8
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("swing_2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_medium"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 7);


set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);

//hit1
set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 88);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, fire);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("fire2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_UAIR, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 24);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, fire);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("fire2"));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_UAIR, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_UAIR, 4, HG_FORCE_FLINCH, 1);

//hit2
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, fire);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("fire2"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_UAIR, 2, HG_FORCE_FLINCH, 1);

//hitfinal
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 66);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, firestrong);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
