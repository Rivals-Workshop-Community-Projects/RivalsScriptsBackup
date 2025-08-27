var atk             = AT_FTILT;
var window_num      = 1;
var window_length   = 0;

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("ftilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("ftilt_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 3);
set_attack_value(atk, AG_CATEGORY                       , 0);

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 4);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 9);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, s_coin);
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 14);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_WHIFFLAG, 1);
window_num++;

//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 4);
var hbox_num = 1; //back hit

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 3);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , -4);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -30);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 55);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 30);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 3);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER            , 9);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 45);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 10);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 3);
set_hitbox_value(atk, hbox_num, HG_TECHABLE                 , 1);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_weak2"));

hbox_num++;


set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 3);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 36);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -30);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 51);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 30);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 3);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER            , 9);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 45);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 3);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 3);
set_hitbox_value(atk, hbox_num, HG_TECHABLE                 , 1);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_weak2"));

hbox_num++;


set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_HITBOX_GROUP             , -1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 3);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 3);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 46);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -35);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 64);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 40);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 3);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 45);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER            , 9);
set_hitbox_value(atk, hbox_num, HG_TECHABLE                 , 1);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 3);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 3);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_weak2"));

hbox_num++;


set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_HITBOX_GROUP             , -1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 6);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 3);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 46);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -35);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 64);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 40);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 3);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 80);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 6);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , .4);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , .4);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_medium3"));




