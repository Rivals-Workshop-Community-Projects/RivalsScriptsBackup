set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);

//dats  data  dath  datr
//0-1:2 2-2:1 3-4:2 5-6:2

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("swing_4"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 4);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 1);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 63);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7.8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.88);//0.9
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7.5);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("hit_hard_1"));


//wiimote
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 12);

set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("wiimote"));
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 36);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7.8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.88);//0.9
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 7.5);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("hit_hard_1"));

set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 2, HG_EXTENDED_PARRY_STUN, 1);