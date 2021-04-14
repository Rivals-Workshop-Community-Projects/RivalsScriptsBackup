set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
//set_attack_value(AT_DATTACK, AG_SPRITE, asset_get("goat_dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
//set_attack_value(AT_DATTACK, AG_AIR_SPRITE, asset_get("goat_dattack"));
//set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, asset_get("goat_dattack_hurt"));


set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_absa_dattack"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("whoosh_sfx"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 0);



set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);



set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 9);



var temp_attack = AT_DATTACK;
var temp_num = 1;


set_num_hitboxes(temp_attack, 2);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 50);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 40);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);



temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 50);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -30);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 40);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 8);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);


