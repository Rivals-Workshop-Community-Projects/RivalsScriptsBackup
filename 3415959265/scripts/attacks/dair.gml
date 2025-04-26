atk = AT_DAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("dair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);

window_num = 1; //windup 1 - check tap/hold
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 11);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //spike 
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 4);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 22);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 16);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 280);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_big);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]); //this is a custom hitbox grid function by supersonic that changes the color of the hitboxes

hitbox_num ++; //normal hit
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 16);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 53);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 81);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 35);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitbox_num ++; //sourspot 
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 14);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -64);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 28);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 19);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));




set_num_hitboxes(atk, hitbox_num);