set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);

//CHARGE UP
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HSPEED, 0);

//PREPARE TO JUMP
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//JUMP UP! / PREPARE TO ATTACK
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_VSPEED, -5);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

//DESCENT
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3)
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 8)
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"))

//IMPACT
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, 0);

//END
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);



///HITBOXES
set_num_hitboxes(AT_FSTRONG, 2);

//DESCENT
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -14);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// //DESCENT 2
// set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
// set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
// set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
// set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
// set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 4);
// set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -40);
// set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 68);
// set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 73);
// set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
// set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
// set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 10);
// set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 2);
// set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.1);
// set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 2);
// set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.1);
// set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 0);
// set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 1);
// set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
// set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// //DESCENT 3
// set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
// set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 22);
// set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -22);
// set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 65);
// set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 50);
// set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
// set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
// set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
// set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
// set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 2);
// set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 320);
// set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 4);
// set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.2);
// set_hitbox_value(AT_FSTRONG, 3, HG_EFFECT, 0);
// set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 1);
// set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
// set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 2);
// set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.1);
// set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//IMPACT
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 74);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, red_explosion);
//set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));