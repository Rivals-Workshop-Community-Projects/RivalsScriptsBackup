atk = AT_TAUNT;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
//set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt")); //meh

//BASE
window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_oly"));

window_num ++; //shine like a diamond girl
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_shing"));

window_num ++; //ok back to kicking ass
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_shing"));
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);


//SPARKING
window_num ++; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 17);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

window_num ++; //bring it on
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);


window_num ++; //windup2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));


window_num ++; //bring it on electric boogaloo
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);


window_num ++; //back to it
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 21);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);

//SPARKING TAUNT 2
window_num ++; //startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_may"));
//set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_fair"));

window_num ++; //punch
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_slap2"));
//set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_dstrong"));


window_num ++; //winddown
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 24);

window_num ++; //end
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 28);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);

//GUARDIAN
window_num ++; //start
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 19);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_pom"));

window_num ++; //i've seen better
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //well back to it
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 36);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 19);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_may"));
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);

//SUPER
window_num ++; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_oly"));

window_num ++; //is that all??
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 50);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_shing"));

window_num ++; //well alright then..
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_may"));


set_attack_value(atk, AG_NUM_WINDOWS, window_num);

set_num_hitboxes(atk, 0);