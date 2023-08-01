atk = AT_DSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_ustrong"));

window_num ++; //charge window
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 4); //this is a custom attack grid variable i made for your usage - bar-kun
set_window_value(atk, window_num, AG_WINDOW_LOOP_REFRESH_HITS, 1); //this one too
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_dsmash_skitter_alone"));

window_num ++; //endlag (normally we should apply whifflag as soon as the hitbox ends but in the case we have a loop that makes it harder)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //blast - front
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 1); //because of the looping, window timer 0 won't update the attack in time, this is a tester issue
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 64);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 48); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1.5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium")); //multihit value - final hit is on attack_update.gml

hitbox_num ++; //blast - back
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -48);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);

set_num_hitboxes(atk, hitbox_num);