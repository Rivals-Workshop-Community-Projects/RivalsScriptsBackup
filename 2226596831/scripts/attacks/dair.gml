set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);

//das   daa   dah   dar
//0-0:1 1-2:2 3-3:1 4-5:2

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);//9
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("swing_4"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 4);//6
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 9);//12
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

//1
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 51);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 260);//265
//set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);//8
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);//0.4
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("hit_whip_1"));

//2
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 99);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.63);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("hit_medium_5"));

//late
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 14);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 32);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("hit_medium_2"));



//new spike hitbox (wow) hey i'mma let you in on a secret, this is just AR's spike hitbox
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 16);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 4, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 10);//7
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5);//7
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .55);//1
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 12);//7
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 1);//1.4
//set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1.5);
//set_hitbox_value(AT_DAIR, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("hit_hard_1"));




//wiimote
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 15);

set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("wiimote"));
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 36);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 65);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.63);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_DESTROY_EFFECT, 136);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, sound_get("hit_medium_5"));

set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DAIR, 5, HG_EXTENDED_PARRY_STUN, 1);

