set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("extra1"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("extra1"));


set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("shock1"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 18);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_holy_tablet"));
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 29);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 38);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, sound_get("RZ"));
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 37);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 38);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 20);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 18);


set_num_hitboxes(AT_EXTRA_3,2);

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 30 );
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 270);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 1.0); 
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_3, 2, HG_EXTRA_HITPAUSE, 45);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 70 );
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 41);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 41);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 270);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 1.0); 
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 45);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW, 20);
set_hitbox_value(AT_EXTRA_3, 5, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_X, 70 );
set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_3, 5, HG_WIDTH, 71);
set_hitbox_value(AT_EXTRA_3, 5, HG_HEIGHT, 71);
set_hitbox_value(AT_EXTRA_3, 5, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_3, 5, HG_ANGLE, 270);
set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_3, 5, HG_KNOCKBACK_SCALING, 1.0); 
set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_3, 5, HG_EXTRA_HITPAUSE, 45);
set_hitbox_value(AT_EXTRA_3, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 5, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 20);
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 70 );
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 181);
set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 181);
set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_3, 3, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITSTUN_MULTIPLIER, 0.85);


