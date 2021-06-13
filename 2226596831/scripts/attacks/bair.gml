set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);

//bas1  bas2  baa   bah   bar
//0-0:1 1-1:1 2-2:1 3-4:2 5-6:2

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, sound_get("swing_4"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

//normal hit
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -39);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 62);//65
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("hit_stab_1"));

//sweet stab hit
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -69);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 22);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 42);//45
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 130);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("hit_stab_2"));


//wiimote
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 12);

set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("wiimote"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 36);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 65);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("hit_medium_1"));

set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 3, HG_EXTENDED_PARRY_STUN, 1);


