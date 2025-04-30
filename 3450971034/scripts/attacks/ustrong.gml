atk = AT_USTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(atk,AG_OFF_LEDGE, 0);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

window_num ++; //charge window
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //shoot up windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);


window_num ++; //hold pose
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

window_num ++; //endlag first half
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -57);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 61);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 94);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bite);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_bigplant_eat"));
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1)
hitbox_num ++; 
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -76);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 44);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 130);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 11);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigbite);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -50);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 4);

set_num_hitboxes(atk, hitbox_num);

// Abyss Rune: Poison Consume

if(poison_consume_rune){

    set_hitbox_value(atk, 1, HG_EFFECT, poison_extend_effect_index);

    hitbox_num ++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num - 1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
    set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -76);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 44);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 130);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 17);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.35);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigbite);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -50);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 10);
    set_hitbox_value(atk, hitbox_num, HG_EFFECT, poison_consume_effect_index);
    
    set_num_hitboxes(atk, hitbox_num);

}