atk = AT_EXTRA_1;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("runeE_dspec"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("runeE_dspec_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_oly_flashstun"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));

window_num ++; //endlag 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num ++; //endlag 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //rune D manual blast
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 256);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 256);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);                //changes with dark%
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);        //changes with dark%
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);   //changes with dark%
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);         //changes with dark%
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);    //changes with dark%
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_dark_hit[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_abyss_hazard_burst"));

set_num_hitboxes(atk, hitbox_num);