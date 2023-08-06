atk = AT_USPECIAL;

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("chai_uspec_start"));

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 26);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num ++; //attack start
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("chai_uspec_go"));

window_num ++; //attack movement
set_window_value(atk, window_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 0);
//set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
//set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);


window_num ++; //attack movement
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);


set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 1); //should start 1 frame later because before that the character doesn't actually move
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 15);             //this is done so angle flipper 10 will work properly
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 48);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 48);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 0);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 10); //sends foes in the direction you're going
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 321);

hitbox_num = 2;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2); // also change these stats in hit_player.gml
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 6);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 12);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 321);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 5);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("chai_hit_air_0"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("hud_player_arrow"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);


set_num_hitboxes(atk, hitbox_num);