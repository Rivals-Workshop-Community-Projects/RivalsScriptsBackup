set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("bluefstrong"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);

//CHARGE UP
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HSPEED, 0);

//PREPARE TO JUMP
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//JUMP UP! / PREPARE TO ATTACK
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_VSPEED, -5);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 1);

//DESCENT
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
//set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4)
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_SFX_FRAME, 8)
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"))

//IMPACT
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_VSPEED, 0);

//END
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);



///HITBOXES
set_num_hitboxes(AT_FSTRONG_2, 2);

//IMPACT
set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 74);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, fspec_effect);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//DESCENT
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));