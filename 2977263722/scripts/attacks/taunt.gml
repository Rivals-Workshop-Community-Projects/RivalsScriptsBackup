//NORMAL TAUNT =====================================================
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//UP TAUNT =========================================================
set_attack_value(AT_TAUNT_2, AG_MUNO_ATTACK_NAME, "UTaunt");
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_up_alts"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("mfx_editor_paint"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("mfx_editor_paint"));
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 11);

set_num_hitboxes(AT_TAUNT_2, 2);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 30);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 1)
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_TAUNT_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_TAUNT_2, 2, HG_WIDTH, 30);
set_hitbox_value(AT_TAUNT_2, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_TAUNT_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_DAMAGE, 1)
set_hitbox_value(AT_TAUNT_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_TAUNT_2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT_2, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_TAUNT_2, 2, HG_HIT_PARTICLE_NUM, 2);

//TIN CAN =======================================================
set_attack_value(AT_EXTRA_2, AG_MUNO_ATTACK_NAME, "DTaunt");
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("taunt_down"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_EXTRA_2, AG_MUNO_ATTACK_MISC_ADD, "Press Taunt again while grounded to end the taunt.");

//start
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 19);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("bonk"));

//loop
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 9);

//end
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_GOTO, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);

//walk
set_window_value(AT_EXTRA_2, 4, AG_MUNO_WINDOW_EXCLUDE, true);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);

//walkturn
set_window_value(AT_EXTRA_2, 5, AG_MUNO_WINDOW_EXCLUDE, true);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 13);

var temp_attack = AT_EXTRA_2;
var temp_num = 1;
set_num_hitboxes(AT_EXTRA_2, 1);


//this is just zetter shine bc itd be funny i think lmao
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -20);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 80);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 80);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .14);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 303);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, 0);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(temp_attack, temp_num, HG_HIT_PARTICLE_NUM, 2);

//NES TAUNTS =======================================================
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_EXCLUDE, true);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("taunt_smb1"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 56);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 15);

//FLAGS =========================================================
set_attack_value(AT_EXTRA_3, AG_MUNO_ATTACK_EXCLUDE, true);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("taunt_flag_pride"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("sm64_slidedoor_open"));

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("xp_tada"));

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, sound_get("sm64_slidedoor_close"));

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 11);
