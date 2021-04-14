set_attack_value(AT_UAIR, AG_CATEGORY, 1);
//set_attack_value(AT_UAIR, AG_SPRITE, asset_get("goat_uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
//set_attack_value(AT_UAIR, AG_AIR_SPRITE, 0);
//set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, asset_get("goat_uair_hurt"));
set_attack_value(AT_UAIR, 18, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_absa_uair"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 10);


set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 11);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);



var temp_attack = AT_UAIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 1);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -100);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 80);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 80);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 12);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 157);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


