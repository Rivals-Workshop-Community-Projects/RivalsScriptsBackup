var atk             = AT_FSTRONG_2;
var window_num      = 1;
var window_length   = 0;

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("tricorn"));
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("tricorn_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 4);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW           , 1);
set_attack_value(atk, AG_CATEGORY                       , 0);

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 11);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, s_reload);
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, 5);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 7);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num                        , AG_WINDOW_HSPEED, -2);

    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 26);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_WHIFFLAG, 1);
window_num++;

//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 3);
var hbox_num = 1;

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 3);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , get_window_value(atk, get_hitbox_value(atk,hbox_num,HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 25);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -46);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 44);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 50);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 14);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 361);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 10);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 1.3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 15);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 1.5);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , -1); // Spawn manually
//set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_X_OFFSET   , 80);
//set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET   , -30);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hbox_num, HG_HIT_LOCKOUT              , 6);
//set_hitbox_value(atk, hbox_num, HG_STRONG_FINISHER          , 1);
//set_hitbox_value(atk, hbox_num, HG_IS_BLAST               , 1);

var hbox_num = 2;

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 3);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , get_window_value(atk, get_hitbox_value(atk,hbox_num,HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 100);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -51);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 120);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 75);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 14);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 361);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 10);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 1.3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 15);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 1.5);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , -1); // Spawn manually
//set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_X_OFFSET   , 80);
//set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET   , -30);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hbox_num, HG_HIT_LOCKOUT              , 6);
//set_hitbox_value(atk, hbox_num, HG_STRONG_FINISHER          , 1);
//set_hitbox_value(atk, hbox_num, HG_IS_BLAST                 , 1);

var hbox_num = 3;

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 3);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 240);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , -10);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -70);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 0);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 0);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 0);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 0);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 0);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , -1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_SPRITE        , sprite_get("tricorn_hat"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_ANIM_SPEED    , 0.3);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_HSPEED        , -7);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_VSPEED        , -8);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_GRAVITY       , 0.5);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_UNBASHABLE    , 1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, HFX_GEN_OMNI);