//AR UAIR

set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

// uas   uaa   uar
// 0-1:2 2-4:3 5-7:3

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);//5
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("SWL3"));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);//2

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 7);//12
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);//4
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);//3
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 4);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -7);//-4
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -49);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);//6
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 62);//77 
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 39);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);//6
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);//5
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);//5
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.8);//.9
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);//2
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5);//1.08
//set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.7);
//set_hitbox_value(AT_UAIR, 1, HG_DRIFT_MULTIPLIER, 1.3);
//set_hitbox_value(AT_UAIR, 1, HG_SDI_MULTIPLIER, 3);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -2);//37
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -49);//-39
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 52);//17
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 36);//43
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 9);//6
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);//5
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);//5.5
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.8);//.73
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);//2
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);//1.15
//set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, 0.75);
//set_hitbox_value(AT_UAIR, 2, HG_DRIFT_MULTIPLIER, 1.1);
//set_hitbox_value(AT_UAIR, 2, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//the weird downward hitbox i think idk why this exists
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -24);//-44
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -36);//-46
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 32);//22
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 16);//22
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 8);//1
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 10);//5
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 315);//330
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);//5
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.6);//.8
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 12);//2
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 1);//1
//set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 1);//1.1
//set_hitbox_value(AT_UAIR, 3, HG_DRIFT_MULTIPLIER, 1);//1.1
//set_hitbox_value(AT_UAIR, 3, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 113);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 23);//37
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -33);//-39
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 32);//17
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 36);//43
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 9);//6
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 75);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 6);//5
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);//5.5
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.8);//.73
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 8);//2
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .5);//1.15
//set_hitbox_value(AT_UAIR, 4, HG_HITSTUN_MULTIPLIER, 0.75);
//set_hitbox_value(AT_UAIR, 4, HG_DRIFT_MULTIPLIER, 1.1);
//set_hitbox_value(AT_UAIR, 4, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


















