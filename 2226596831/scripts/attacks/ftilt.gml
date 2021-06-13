set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);

//fts   fta   fth   ftr
//0-0:1 1-1:1 2-3:2 4-4:1

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);//6
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("swing_1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);//2
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);


set_num_hitboxes(AT_FTILT, 1);

//normal hit
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 94);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("hit_medium_1"));

//wiimote
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 12);

set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("wiimote"));
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 36);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("hit_medium_1"));

set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTILT, 2, HG_EXTENDED_PARRY_STUN, 1);



