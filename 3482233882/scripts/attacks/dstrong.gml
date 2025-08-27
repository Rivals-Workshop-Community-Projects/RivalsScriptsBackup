var atk             = AT_DSTRONG;
var window_num      = 1;
var window_length   = 0;

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 6);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW           , 1);
set_attack_value(atk, AG_CATEGORY                       , 0);

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 6);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
//set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
//set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 5);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //first active
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 6);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, s_gunm);
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
window_num++;
 
set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //loop active
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 6);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true); // handled manually
set_window_value(atk, window_num                        , AG_WINDOW_SFX, s_gunm);
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //Final
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 2);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //endlag
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 24);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_WHIFFLAG, 1);

//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 5);
var hbox_num = 1; //Initial Multihit

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1); 
set_hitbox_value(atk, hbox_num, HG_HITBOX_GROUP             , 1); 
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 3);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -20);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 150);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 40);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 4);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 45);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER            , 3);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 6);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 4);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, hbox_num, HG_HAS_LERP                 , 1);
set_hitbox_value(atk, hbox_num, HG_LERP_PERCENT             , 0.2);

hbox_num++; //GunshotL
//print(hbox_num)

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_HITBOX_GROUP             , 2); 
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 4);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , -57);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -35);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 90);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 43);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 3);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER            , 3);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 2);
set_hitbox_value(atk, hbox_num, HG_EXTRA_HITPAUSE           , 3);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, hbox_num, HG_HAS_LERP                 , 1);
set_hitbox_value(atk, hbox_num, HG_LERP_PERCENT             , 0.05);


hbox_num++; //GunshotR
//print(hbox_num)

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_HITBOX_GROUP             , 2); 
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 4);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 69);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -39);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 90);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 43);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 3);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER            , 3);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 2);
set_hitbox_value(atk, hbox_num, HG_EXTRA_HITPAUSE           , 3);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, hbox_num, HG_HAS_LERP                 , 1);
set_hitbox_value(atk, hbox_num, HG_LERP_PERCENT             , 0.05);


hbox_num++; //GunshotFinalL
//print(hbox_num)

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_HITBOX_GROUP             , 4); 
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 5);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , -57);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -39);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 104);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 56);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 4);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 45);
set_hitbox_value(atk, hbox_num, HG_ANGLE_FLIPPER            , 5);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 8);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , .9);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 1);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hbox_num, 82          , 1);
set_hitbox_value(atk, hbox_num, 84               , 1);


hbox_num++; //GunshotFinalR
//print(hbox_num)
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_HITBOX_GROUP             , 4); 
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 5);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 68);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -39);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 104);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 56);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 4);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 45);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 8);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , .9);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 1);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hbox_num, 82          , 1);
set_hitbox_value(atk, hbox_num, 84               , 1);





