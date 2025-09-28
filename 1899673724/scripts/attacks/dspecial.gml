set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_NAME, "DSpecial: Spin Dash");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Sonic's signature technique.
Hold SPECIAL to charge the move. Longer charge means longer Spin Dash duration.
After releasing, Sonic will Spin Dash forwards.
While rolling, Sonic can do the following:
- turn around by inputting the opposite direction
- cancel the move with a dodge
- attack to instantly Dash Attack (on the ground) or into an aerial (in the air)");

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_spindash_charge"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);//Charging
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);//Jumping after the charge
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 13.1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);//Rolling
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 12);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);//Endlag
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);//Turn
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 12);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_DSPECIAL, 3);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Charging Hitbox");
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Rolling Hitbox");
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 55);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Rolling Hitbox");
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 55);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 3);