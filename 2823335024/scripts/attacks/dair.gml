set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);

//das   daa   dah   dar
//0-0:1 1-2:2 3-3:1 4-5:2

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("swing_4"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);//6
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.63);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("hit_medium_4"));

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
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("hit_medium_2"));



//new spike hitbox (wow) hey i'mma let you in on a secret, this is just AR's spike hitbox
//reiga note: its intact, i just moved its placement lol. the spirit lives on.
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 54);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
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

