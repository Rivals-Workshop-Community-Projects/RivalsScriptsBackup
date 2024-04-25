var atk             = AT_NSPECIAL;
var window_num      = 1;
var window_length   = 0;

/* Nspecial 
a really simple projectile. You can aim it up or down (or back/forward) which makes the angle more or less shallow - It has gravity and arcs, but after it starts to descend (or hits the ground), it slows down and stops.
Once its stopped, its just a stationary article that doesn't really do much. Made for the fspecial interaction. youll probably be able to hit it with dspec if i go with my first idea, but unsure yet.

*/

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("nspecial"));
set_attack_value(atk, AG_AIR_SPRITE                     , sprite_get("nspecial_air"));

set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 3);
set_attack_value(atk, AG_CATEGORY                       , 2);

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 9);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 2);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);

window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 16);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 2);
window_num++;

//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 2);
var hbox_num = 1;

// main hitbox
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 0);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 32);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -32);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 0);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 40);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 40);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 5); // kragg rock safety
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 4);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 70);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 5);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.3);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER       , .8);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , HFX_GEN_OMNI);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_medium3"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, hfx_null);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PARRY_STUN    , false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
hbox_num++;

// slot 2: scrapped
hbox_num++;

// explode [abyss]
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 0);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 32);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -32);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 70);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 70);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 5); // kragg rock safety
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 4);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 7);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.3);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER       , .8);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , HFX_ELL_FSPEC_HIT);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, hfx_null);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PARRY_STUN    , false); // slightly evil but it's abyss so hey
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
set_hitbox_value(atk, hbox_num, HG_EXTENDED_PARRY_STUN      , false);
hbox_num++;

// primed explosions in dspecial.gml