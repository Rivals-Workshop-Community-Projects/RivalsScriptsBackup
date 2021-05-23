set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);//6

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 11);//8
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("spin_2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);//9
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 5);

//start
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 47);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 59);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 82);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("hit_weak_1"));

//spin
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 82);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("hit_weak_2"));

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 4);

//final hit
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 130);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 42);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 6);//7//6
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.75);//8//0.75
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 7);//6
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.5);//0.5
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("hit_weak_3"));








