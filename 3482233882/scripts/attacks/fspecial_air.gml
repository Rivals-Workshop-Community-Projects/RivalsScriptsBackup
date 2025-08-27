var atk             = AT_FSPECIAL_AIR;
var window_num      = 1;
var window_length   = 0;

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("fspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("fspecial_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 3);
set_attack_value(atk, AG_CATEGORY                       , 2);
set_attack_value(atk, AG_OFF_LEDGE                      , 1);
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY            , 1);
set_attack_value(atk, 40               , 1); // attack_update: interruptable after first window

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 12);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num                        , AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num                        , AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num                        , AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, s_slide);
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 3);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_HSPEED, 13);
set_window_value(atk, window_num                        , AG_WINDOW_VSPEED, -5);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 18);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num                        , AG_WINDOW_VSPEED, -1);
window_num++;

//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 0);
var hbox_num = 1;
