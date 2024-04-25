var atk             = AT_INTRO_1; // 2
var window_num      = 1;
var window_length   = 0;

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("intro1"));
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("null"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 6);
set_attack_value(atk, AG_CATEGORY                       , 0);

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //Idle, waiting for stuff
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 25 + (player * 5)); //offsets it for multiple players
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, (window_length-1));

window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //trash can startup
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 5);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, (window_length-1));

window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //jump
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 36);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, 1);

window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //land  
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 5);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_land_heavy"));
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, 1);

window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //land hold 
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 54 - (player*5)); //make up for it so doesnt fuck with spawn timing
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);


window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //land end
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 4);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, 1);

window_num++;