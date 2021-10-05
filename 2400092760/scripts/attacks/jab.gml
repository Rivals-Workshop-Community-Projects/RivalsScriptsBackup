set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//JAB 1

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"))
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2)

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1)

//set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 2);


set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);


//JAB 2

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 3);
//set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"))
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 6)

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1)




set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9 );
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 2);

//JAB 3

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 11)
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"))

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 17);


set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 4);


//Jab 1
set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 45);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1); //i added this to make tilts link more reliably
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Jab 2
set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 66);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4); //base knockback was reduced once the angle was changed, as the base 6 knockback was too high for teching
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//i dunno what hitbox 3 and 5 are for, so i will ask later. for now i will change hitbox 4

//Jab 3 (Spike)
set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 38);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 28);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 280);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, hit_sprites[2]);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

//Jab 3 (Sour)
set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -48);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 4, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
