atk = AT_DSTRONG;


set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_ustrong"));

window_num ++; //charge window
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);

window_num ++; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 3); 
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("chai_swish_jab3"));

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //hit - front
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 1); //because of the looping, window_timer 0 won't spawn hitboxes
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 35);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 48); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 50); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1.5);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); //multihit value - final hit is on attack_update.gml

hitbox_num ++; //hit - back
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -35);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1.5);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3); //multihit value - final hit is on attack_update.gml
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2")); //multihit value - final hit is on attack_update.gml


set_num_hitboxes(atk, hitbox_num);