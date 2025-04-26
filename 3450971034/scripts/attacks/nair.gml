atk = AT_NAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);


window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 17);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 98);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 89);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_leaf);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));

hitbox_num ++; //multihit 2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -27);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 92);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 78);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_leaf);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));


hitbox_num ++; //multihit 2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -27);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 92);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 78);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);


hitbox_num ++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -27);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 92);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 78);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_leaf);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1);


set_num_hitboxes(atk, hitbox_num);
