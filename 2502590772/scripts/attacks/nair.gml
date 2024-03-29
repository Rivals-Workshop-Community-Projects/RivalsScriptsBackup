if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_NAIR;
if (species_id == 1) this_attack = 49;

set_attack_value(this_attack, AG_CATEGORY, 1);
set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("nair"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 3);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_attack, AG_LANDING_LAG, 4);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 8);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_land_light"));
set_window_value(this_attack, 1, AG_WINDOW_VSPEED, -1);

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 8);
set_window_value(this_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 2, AG_WINDOW_SFX, asset_get("sfx_absa_singlezap1"));
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 13);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(this_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(this_attack,6);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 1, HG_WIDTH, 40);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 40);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 2);
set_hitbox_value(this_attack, 1, HG_ANGLE, 290);
set_hitbox_value(this_attack, 1, HG_ANGLE_FLIPPER, 4); //horizontally towards hitbox
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(this_attack, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 22);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_absa_jab1"));
set_hitbox_value(this_attack, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 20);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 2, HG_WIDTH, 40);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 40);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 2, HG_DAMAGE, 1);
set_hitbox_value(this_attack, 2, HG_ANGLE, 290);
set_hitbox_value(this_attack, 2, HG_ANGLE_FLIPPER, 4); //horizontally towards hitbox
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(this_attack, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT, 22);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, asset_get("sfx_absa_jab1"));
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(this_attack, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(this_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 3, HG_WINDOW, 2);
set_hitbox_value(this_attack, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(this_attack, 3, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 3, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 3, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 3, HG_WIDTH, 60);
set_hitbox_value(this_attack, 3, HG_HEIGHT, 60);
set_hitbox_value(this_attack, 3, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 3, HG_DAMAGE, 4);
set_hitbox_value(this_attack, 3, HG_ANGLE, 70);
set_hitbox_value(this_attack, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_attack, 3, HG_KNOCKBACK_SCALING, .65);
//set_hitbox_value(this_attack, 3, HG_ANGLE, 290);
//set_hitbox_value(this_attack, 3, HG_ANGLE_FLIPPER, 4); //horizontally towards hitbox
//set_hitbox_value(this_attack, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_attack, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_attack, 3, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(this_attack, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT, 22);
set_hitbox_value(this_attack, 3, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(this_attack, 3, HG_HITBOX_GROUP, 3);



set_hitbox_value(this_attack, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(this_attack, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 4, HG_WINDOW, 2);
set_hitbox_value(this_attack, 4, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 4, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 4, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 4, HG_WIDTH, 80);
set_hitbox_value(this_attack, 4, HG_HEIGHT, 80);
set_hitbox_value(this_attack, 4, HG_PRIORITY, 1);
set_hitbox_value(this_attack, 4, HG_DAMAGE, 1);
set_hitbox_value(this_attack, 4, HG_ANGLE, 290);
set_hitbox_value(this_attack, 4, HG_ANGLE_FLIPPER, 9); //horizontally towards hitbox
set_hitbox_value(this_attack, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_attack, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(this_attack, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(this_attack, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(this_attack, 4, HG_HIT_SFX, asset_get("sfx_absa_jab1"));
set_hitbox_value(this_attack, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(this_attack, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(this_attack, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 5, HG_WINDOW, 2);
set_hitbox_value(this_attack, 5, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 5, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 5, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(this_attack, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(this_attack, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(this_attack, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 6, HG_WINDOW, 2);
set_hitbox_value(this_attack, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(this_attack, 6, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 6, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 6, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 6, HG_HITBOX_GROUP, 1);
/*
set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 1, HG_WIDTH, 40);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 40);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 2);
set_hitbox_value(this_attack, 1, HG_ANGLE, 45);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(this_attack, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 22);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_absa_jab1"));

set_hitbox_value(this_attack, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 2);
set_hitbox_value(this_attack, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(this_attack, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(this_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 3, HG_WINDOW, 2);
set_hitbox_value(this_attack, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(this_attack, 3, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 3, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 3, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 3, HG_WIDTH, 60);
set_hitbox_value(this_attack, 3, HG_HEIGHT, 60);
set_hitbox_value(this_attack, 3, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 3, HG_DAMAGE, 3);
set_hitbox_value(this_attack, 3, HG_ANGLE, 68);
set_hitbox_value(this_attack, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_attack, 3, HG_KNOCKBACK_SCALING, .66);
set_hitbox_value(this_attack, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_attack, 3, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(this_attack, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT, 22);
set_hitbox_value(this_attack, 3, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(this_attack, 3, HG_HITBOX_GROUP, 2);



set_hitbox_value(this_attack, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(this_attack, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 4, HG_WINDOW, 2);
set_hitbox_value(this_attack, 4, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 4, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 4, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 4, HG_WIDTH, 80);
set_hitbox_value(this_attack, 4, HG_HEIGHT, 80);
set_hitbox_value(this_attack, 4, HG_PRIORITY, 1);
set_hitbox_value(this_attack, 4, HG_DAMAGE, 1);
set_hitbox_value(this_attack, 4, HG_ANGLE, 55);
set_hitbox_value(this_attack, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_attack, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(this_attack, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(this_attack, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(this_attack, 4, HG_HIT_SFX, asset_get("sfx_absa_jab1"));

set_hitbox_value(this_attack, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(this_attack, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 5, HG_WINDOW, 2);
set_hitbox_value(this_attack, 5, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 5, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 5, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(this_attack, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(this_attack, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(this_attack, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 6, HG_WINDOW, 2);
set_hitbox_value(this_attack, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(this_attack, 6, HG_LIFETIME, 1);
set_hitbox_value(this_attack, 6, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 6, HG_HITBOX_X, 10);
set_hitbox_value(this_attack, 6, HG_HITBOX_GROUP, 1);
*/

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);