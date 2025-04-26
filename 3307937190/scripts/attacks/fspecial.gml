atk = AT_FSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
// set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial_air"));
// set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(atk, AG_LANDING_LAG, 8);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, 87, "Applies Elemental Ink on hit. Can only be used once per airtime.");//AG_MUNO_ATTACK_MISC_ADD = i; i++;

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 11);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 9);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);

window_num ++; //hit
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 7.5);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));

window_num ++; //recover 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num ++; //recover 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //BOOT
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 35);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 43);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 51);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_ink2);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, 81, "Main Hit");//HG_MUNO_HITBOX_NAME = i; i++;
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

hitbox_num ++; //LATE BOOT
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 35);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 43);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 51);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_ink2);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, 81, "Late Hit");//HG_MUNO_HITBOX_NAME = i; i++;
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);

set_num_hitboxes(atk, hitbox_num);