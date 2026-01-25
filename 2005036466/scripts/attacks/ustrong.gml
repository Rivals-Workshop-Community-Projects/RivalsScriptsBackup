set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.45);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HITPAUSE_FRAME, 0);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.65);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 12);

var temp_attack = AT_USTRONG;
var temp_num = 1;

set_num_hitboxes(temp_attack, 1);

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 25);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -56);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 63);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 88);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 8);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

// USTRONG 2
set_attack_value(AT_USTRONG_2, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong2"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .175);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HITPAUSE_FRAME, 0);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 5);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 12);

var temp_attack = AT_USTRONG_2;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);

// Upper Hit
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 26);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -64);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 70);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 101);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 12);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 3);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, vfx_penstronghit);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num++;

// Lower
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 35);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -23);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 59);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 54);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 10);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 70);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 3);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, vfx_penstronghit);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);