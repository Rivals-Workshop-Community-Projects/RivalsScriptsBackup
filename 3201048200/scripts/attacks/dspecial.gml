var atk             = AT_DSPECIAL;
var window_num      = 1;
var window_length   = 0;

//Perry will put a SSSN-Grade Landmine into the ground, which detonates when stepped on, or if an opponent is hit next to/into it.
//It should send straight up with decent KB but low scaling, its a combo move.
//Perry cannot make a new one while the previous is out, but he can use the move again without spawning it (with a cooldown, and less height but still a slight stall in the air.)

//If Perry uses the move in the air, he should get a slight boost and shoot a projectile down - The projectile is a weak spike that goes through opponents, and if it lands on the ground, it will create the mine.
//If Pery is parachuting during this move, the aerial boost should be a bit higher - Intended to be used as an extra recovery tool.

//If its parried, it should go haywire and disable itself for a few seconds, like Lily. Might also make this disable the drone, but idk probably not it'd be pretty random.

//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 2);
set_attack_value(atk, AG_CATEGORY                       , 2);

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 16);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); //replace with custom sound later
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, 1);
window_num++;

set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 25);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, 1);
window_num++;
window_num++;

//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 0); //
var hbox_num = 1;

// Default explosion
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 0);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 0);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 100);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 100);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 5);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 7);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 7);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.3);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER       , .9);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , HFX_ELL_BOOM_HIT);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, hfx_null);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PARRY_STUN    , false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
set_hitbox_value(atk, hbox_num, HG_EXTENDED_PARRY_STUN      , false);
hbox_num++;

// Drone explosion
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 0);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 0);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 110);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 110);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 5);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 7);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 7);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.3);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER       , .9);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , HFX_ELL_BOOM_HIT);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, hfx_null);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PARRY_STUN    , false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
set_hitbox_value(atk, hbox_num, HG_EXTENDED_PARRY_STUN      , false);
hbox_num++;

// Drone explosion (rune H-enhanced)
set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 0);
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 2);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 0);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 82);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 82);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 5);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 9);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 9);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.8);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 10);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.3);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER       , .8);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , HFX_ELL_BOOM_BIG);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , asset_get("sfx_mol_huge_explode"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, hfx_null);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PARRY_STUN    , false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
set_hitbox_value(atk, hbox_num, HG_EXTENDED_PARRY_STUN      , false);
hbox_num++;