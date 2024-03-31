atk = AT_JAB;

set_attack_value(atk, AG_SPRITE, sprite_get("jab"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//JAB 1
window_num = 1; //windup w1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX,sound_get("sword_swing3"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);

window_num ++; //attack w2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 4);

window_num ++; //endlag w3
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, 6);

//JAB 2
window_num ++; //windup w4
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sword_swing2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);

window_num ++; //attack w5
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 4);

window_num ++; //endlag w6
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, 6);

//JAB 3
window_num ++; //windup w7
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sword_swing"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 5);

window_num ++; //attack w8
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);

window_num ++; //endlag w9
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, 6);

//JAB LOOP
window_num ++; //windup w10
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sword_swing2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);


anim_frame = 19;

for(var i = 0; i < 3; ++i){
    window_num ++; //attack w11, 13, 15
    set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
    set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, anim_frame++);
    
    window_num ++; //inbetween w12, 14, 16
    set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
    set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, anim_frame++);
    set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
    set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sword_swing"));
    set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);

}

window_num ++; //attack w17
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 11);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, anim_frame);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //attack 1 h1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 20);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 69);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 48);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 1);

hitbox_num ++; //attack 2 h2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 22);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -38);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 90);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hitbox_num ++; //attack 3 h3
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 44);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -26);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 90);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 42);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//attack 4 h4-6
for(var i = 0; i<3; ++i){
    hitbox_num ++; //jab flurry1
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, 11 + 2*i);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 7);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 70);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 66);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 82);
    set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 2);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
}


set_num_hitboxes(atk, hitbox_num);