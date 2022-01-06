set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, asset_get("zet_uair"));


set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_AIR_SPRITE, 0);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, asset_get("zet_uair_hurt"));
set_attack_value(AT_UAIR, 18, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);


set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.0);


set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);



var temp_attack = AT_UAIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -63);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 85);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 74);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 75);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -100);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 10);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 10);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 13);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


