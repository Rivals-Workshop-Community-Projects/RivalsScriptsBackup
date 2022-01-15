// [8] EMBER FIST
atk = AT_DSPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("emberfist"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("emberfist_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("emberfist_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("emberfist_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);
set_attack_value(atk, AG_OFF_LEDGE, 1);

windowNum = 1; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);

windowNum++; //windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 5);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

windowNum++; //punch
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_upbmove"));

windowNum ++; //fire stream
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 20); //14
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 5);

hitboxNum = 1; //fire
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 12); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 5);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 48+16); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -30); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 40);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 32);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 80);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitboxNum, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //fire 2
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 12); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 88+16); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -30); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //fire 3
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 12); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 128+16); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -30); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);

hitboxNum ++; //punch
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 3); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 2); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 60);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 28);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 2);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 30);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 6); //hitstun
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3);


hitboxNum ++; //burning fury constant hitbox
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 0); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 2); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 100);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 100);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 1);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 50);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 10); //hitstun
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "20 MP
Pressing UP or DOWN allows the move to be angled
Burning Fury increases the damage and knockback, aswell as make the initial punch inflict Holy Burn");