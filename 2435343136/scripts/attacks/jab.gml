set_attack_value(AT_JAB, AG_CATEGORY, 0);
//set_attack_value(AT_JAB, AG_SPRITE, asset_get("sword_jab_spr"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_JAB, AG_OFF_LEDGE, 0);
//set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, asset_get("sword_jab_hurt"));


set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_weak"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



var temp_attack = AT_JAB;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 58);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -38);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 56);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 30);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 124);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .6);

temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 98);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -38);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 36);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 32);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 5);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 70);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 126);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
