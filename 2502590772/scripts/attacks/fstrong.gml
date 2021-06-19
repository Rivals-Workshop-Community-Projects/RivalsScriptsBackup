if (is_master_player) exit; //efficiency: don't load attacks on master player

var this_attack = AT_FSTRONG;
//if (species_id == 1) this_attack = 40;
repeat (2) {

set_attack_value(this_attack, AG_SPRITE, sprite_get_pm("fstrong"));
set_attack_value(this_attack, AG_NUM_WINDOWS, 4);
set_attack_value(this_attack, AG_HAS_LANDING_LAG, 3);
set_attack_value(this_attack, AG_STRONG_CHARGE_WINDOW, (this_attack == AT_FSTRONG));
set_attack_value(this_attack, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(this_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 1, AG_WINDOW_LENGTH, 8);
set_window_value(this_attack, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(this_attack, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_attack, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(this_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 2, AG_WINDOW_LENGTH, 5);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 2, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(this_attack, 2, AG_WINDOW_HSPEED, -2);
//set_window_value(this_attack, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(this_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(this_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 3, AG_WINDOW_LENGTH, 7);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_attack, 3, AG_WINDOW_HSPEED, 11);
set_window_value(this_attack, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(this_attack, 3, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(this_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_attack, 4, AG_WINDOW_LENGTH, 15);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(this_attack, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(this_attack, 4, AG_WINDOW_HSPEED, 4);
set_window_value(this_attack, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(this_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(this_attack,2);

set_hitbox_value(this_attack, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 1, HG_WINDOW, 3);
set_hitbox_value(this_attack, 1, HG_LIFETIME, 6);
set_hitbox_value(this_attack, 1, HG_HITBOX_X, 16);
set_hitbox_value(this_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 1, HG_HITBOX_Y, -18);
set_hitbox_value(this_attack, 1, HG_WIDTH, 32);
set_hitbox_value(this_attack, 1, HG_HEIGHT, 36);
set_hitbox_value(this_attack, 1, HG_PRIORITY, 7); //higher priority
set_hitbox_value(this_attack, 1, HG_DAMAGE, 6);
set_hitbox_value(this_attack, 1, HG_ANGLE, 45);
set_hitbox_value(this_attack, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_attack, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(this_attack, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(this_attack, 1, HG_HITPAUSE_SCALING, 0.9);
//set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(this_attack, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(this_attack, 1, HG_GROUNDEDNESS, 1); //ground only

//stronger hitbox hits aerial targets
set_hitbox_value(this_attack, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(this_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_attack, 2, HG_WINDOW, 3);
set_hitbox_value(this_attack, 2, HG_LIFETIME, 6);
set_hitbox_value(this_attack, 2, HG_HITBOX_X, 16);
set_hitbox_value(this_attack, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_attack, 2, HG_HITBOX_Y, -18);
set_hitbox_value(this_attack, 2, HG_WIDTH, 32);
set_hitbox_value(this_attack, 2, HG_HEIGHT, 36);
set_hitbox_value(this_attack, 2, HG_PRIORITY, 3); //lower priority
set_hitbox_value(this_attack, 2, HG_DAMAGE, 6);
set_hitbox_value(this_attack, 2, HG_ANGLE, 45);
set_hitbox_value(this_attack, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(this_attack, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(this_attack, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(this_attack, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(this_attack, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//repeat this and assign it to AT_FTHROW
this_attack = AT_FTHROW;
}

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);