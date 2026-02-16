atk = AT_JAB;

set_attack_value(atk, AG_SPRITE, sprite_get("jab"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//JAB 1 (windows 1 - 3)
window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 2);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, 2);

//JAB 2 (windows 4 - 6)
window_num ++; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 4);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, 2);

//JAB 3 (windows 7 - 9)
window_num ++; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 6);

window_num ++; //endlag (jabs don't use whifflag)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //attack 1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 47);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -22);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 66);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 34);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_leaf);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 1);

hitbox_num ++; //attack 2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 38);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 87);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 55);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_leaf);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hitbox_num ++; //attack 3
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 48);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 92);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bite);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));

hitbox_num ++; //attack 3 second hit 
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 8);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 58);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 110);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 58);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigbite);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));

set_num_hitboxes(atk, hitbox_num);

// Abyss Rune: Poison Consume

if(poison_consume_rune){

    set_hitbox_value(atk, 3, HG_EFFECT, poison_extend_effect_index);

    hitbox_num ++; //attack 3 poison consume
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num - 1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, 8);
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 0);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 58);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -24);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 110);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 58);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.2);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.5);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigbite);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
    set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 10);
    set_hitbox_value(atk, hitbox_num, HG_EFFECT, poison_consume_effect_index);
    
    set_num_hitboxes(atk, hitbox_num);

}