var atk             = AT_FAIR;
var window_num      = 1;
var window_length   = 0;

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("fair_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 5);
set_attack_value(atk, AG_CATEGORY                       , 1);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW           , 9); // enables strong_charge checks (hacky)
set_attack_value(atk, AG_HAS_LANDING_LAG                , 1);
set_attack_value(atk, AG_LANDING_LAG                    , 7);

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //pre-chcarge
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 12);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 2);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0); //charge
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 30);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);

window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 6);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, 5);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 3);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 17);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_WHIFFLAG, 1);
window_num++;

//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 2);
var hbox_num = 1;

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 4);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , get_window_value(atk, get_hitbox_value(atk,hbox_num,HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 54);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -12);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 0);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 64);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 60);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 2);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 8);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 40);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 8);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.7);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 9);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.65);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , 1);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_X_OFFSET   , 30);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET   , 30);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hbox_num, 83             , 1);

hbox_num++;

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 4);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , get_window_value(atk, get_hitbox_value(atk,hbox_num,HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 30);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -38);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 50);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 30);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 2);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 8);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 40);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 8); 
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.7);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 9);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.65);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , 1);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_X_OFFSET   , 30);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET   , 30);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hbox_num, 83             , 1);

