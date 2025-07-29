var atk             = AT_FSPECIAL;
var window_num      = 1;
var window_length   = 0;

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("fspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("fspecial_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 3);
set_attack_value(atk, AG_CATEGORY                       , 2);
set_attack_value(atk, AG_OFF_LEDGE                      , 1);

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 10);
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
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 16);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num                        , AG_WINDOW_HSPEED, 10);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 4);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 18);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 3);
window_num++;

//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 0);
var hbox_num = 1;

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 4);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 24);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -10);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 85);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 34);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 2);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 6);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 45);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 6);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 5);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.25);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER       , 0.5);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , HFX_CLA_DSMASH_BREAK);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_X_OFFSET   , 10);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET   , 10);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_ice_back_air"));
