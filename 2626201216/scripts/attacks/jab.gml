//Startup 5
//Active 2
//Endlag 10
//Total 18


set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));


set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 5);
 

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1); //NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag

set_num_hitboxes(AT_JAB, 3);

//Horizontal Stab
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 21);

set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);

//SweetSpot
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 83);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 41);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 44);

set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.4);


set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);

//Vertical just for fun (lol it's not gonna be that useful)

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 22);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);

set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.5);

set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);
set_attack_value(AT_JAB, AG_MUNO_ATTACK_MISC_ADD, "Does NOT ignore parry stun. (fix this if you make your own character)");