atk = AT_FTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));


window_num = 1;//startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);


window_num ++;//attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);


window_num ++;//endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);


window_num ++;//startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num ++;//attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);

window_num ++;//endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);


window_num ++;//endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);


set_attack_value(atk, AG_NUM_WINDOWS, window_num);


hitbox_num = 1; //attack 1

set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 72);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 75);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 58);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bite);

set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_hit_bite_01"));

hitbox_num ++;

set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 66);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 104);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 52);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8)
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigbite);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_hit_bite_03"));

set_num_hitboxes(atk, hitbox_num);

// Abyss Rune: Poison Consume

if(poison_consume_rune){

    set_hitbox_value(atk, 1, HG_EFFECT, poison_extend_effect_index);

    hitbox_num ++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num - 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 66);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 104);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 52);
    set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 14);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.2);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.5)
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_bigbite);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_hit_bite_03"));
    set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 10);
    set_hitbox_value(atk, hitbox_num, HG_EFFECT, poison_consume_effect_index);
    
    set_num_hitboxes(atk, hitbox_num);

}