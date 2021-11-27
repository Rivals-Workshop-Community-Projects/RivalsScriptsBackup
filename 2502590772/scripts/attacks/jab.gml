if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_JAB;
//if (species_id == 1) this_attack = 0; //Can't swap jab, too much jank with tilt cancels

var hb_group_modifier = (species_id * 5);

set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("jab"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 7);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//Jab1
//startup
set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 4);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_attack, 1, AG_WINDOW_HSPEED, 0);
set_window_value(this_attack, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(this_attack, 1, AG_WINDOW_SFX_FRAME, 2);

//active
set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 6);
set_window_value(this_attack, 2, AG_WINDOW_HSPEED, 4);
set_window_value(this_attack, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//endlag
set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 8);
set_window_value(this_attack, 3, AG_WINDOW_HSPEED, 0.5);
set_window_value(this_attack, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(this_attack, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_CANCEL_FRAME, 4);

//Jab2
//startup
set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 5);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 4, AG_WINDOW_HSPEED, 1);
set_window_value(this_attack, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(this_attack, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//looping window
set_window_value(this_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 5, AG_WINDOW_LENGTH, 23);
set_window_value(this_attack, 5, AG_WINDOW_HSPEED, 0);
set_window_value(this_attack, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(this_attack, 5, AG_WINDOW_ANIM_FRAME_START, 13);

//end of looping window
set_window_value(this_attack, 6, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 6, AG_WINDOW_LENGTH, 1);
set_window_value(this_attack, 6, AG_WINDOW_HSPEED, 0);
set_window_value(this_attack, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_attack, 6, AG_WINDOW_ANIM_FRAME_START, 18);


//endlag
set_window_value(this_attack, 7, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 7, AG_WINDOW_LENGTH, 9);
set_window_value(this_attack, 7, AG_WINDOW_HSPEED, 0);
set_window_value(this_attack, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(this_attack, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(this_attack, 3);

//jab1
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 4);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 19);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -24);
set_hitbox_value(this_attack, 1, HG_WIDTH, 38);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 38);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 3);
set_hitbox_value(this_attack, 1, HG_ANGLE, 40);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(this_attack, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(this_attack, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(this_attack, 1, HG_HITBOX_GROUP, 1 + hb_group_modifier);

//jab2 1
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 5);
set_hitbox_value(this_attack, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, 14);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 2, HG_WIDTH, 38);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 40);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 2, HG_DAMAGE, 2);
set_hitbox_value(this_attack, 2, HG_ANGLE, 65);
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(this_attack, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(this_attack, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(this_attack, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 2 + hb_group_modifier);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(this_attack, 2, HG_FORCE_FLINCH, 2); //can't flinch

//jab2 2
set_hitbox_value(this_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 3, HG_WINDOW, 5);
set_hitbox_value(this_attack, 3, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(this_attack, 3, HG_LIFETIME, 2);
set_hitbox_value(this_attack, 3, HG_HITBOX_X, 14);
set_hitbox_value(this_attack, 3, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 3, HG_WIDTH, 38);
set_hitbox_value(this_attack, 3, HG_HEIGHT, 40);
set_hitbox_value(this_attack, 3, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 3, HG_DAMAGE, 1);
set_hitbox_value(this_attack, 3, HG_ANGLE, 65);
set_hitbox_value(this_attack, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(this_attack, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(this_attack, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(this_attack, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(this_attack, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(this_attack, 3, HG_HITBOX_GROUP, 3 + hb_group_modifier);
set_hitbox_value(this_attack, 3, HG_VISUAL_EFFECT, 20);
set_hitbox_value(this_attack, 3, HG_FORCE_FLINCH, 2); //can't flinch
/*
set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("jab"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 3);
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 3);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_attack, 1, AG_WINDOW_HSPEED, 1);
set_window_value(this_attack, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(this_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 4);
set_window_value(this_attack, 2, AG_WINDOW_HSPEED, 2);
set_window_value(this_attack, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 7);
set_window_value(this_attack, 3, AG_WINDOW_HSPEED, 0);
set_window_value(this_attack, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(this_attack, 1);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 2);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 17);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -20);
set_hitbox_value(this_attack, 1, HG_WIDTH, 22);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 24);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(this_attack, 1, HG_DAMAGE, 2);
set_hitbox_value(this_attack, 1, HG_ANGLE, 60);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(this_attack, 1, HG_ANGLE_FLIPPER, 6);
*/
#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);