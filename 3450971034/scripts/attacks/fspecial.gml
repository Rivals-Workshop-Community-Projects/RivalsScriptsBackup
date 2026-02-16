atk = AT_FSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

window_num = 1; //Charge startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_start"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num ++; //Charge loop
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 25);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //Release startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 9);

window_num ++; //Release active + endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

window_num ++; //Canceled
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);

set_attack_value(atk, AG_NUM_WINDOWS, window_num-1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //level 1, grounded
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW                   , 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME                 , fspecial_lifetime[0]);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y                 , 0);
set_hitbox_value(atk, hitbox_num, HG_SHAPE                    , 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH                    , 57);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT                   , 55);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE                   , 2);
set_hitbox_value(atk, hitbox_num, HG_EFFECT                   , 0);
set_hitbox_value(atk, hitbox_num, HG_ANGLE                    , 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK           , 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING        , .2);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER       , 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE            , 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING         , .3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT            , fx_poisonhit);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE        , sprite_get("poison_small_active"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED    , 2/fspecial_lifetime[0]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED        , poison_ground_hsp[0]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, HFX_GEN_OMNI);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN    , true);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN      , true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE    , true);

hitbox_num ++; //level 1, aerial
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW                   , 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME                 , fspecial_lifetime[0]);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y                 , 0);
set_hitbox_value(atk, hitbox_num, HG_SHAPE                    , 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH                    , 72);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT                   , 72);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE                   , 2);
set_hitbox_value(atk, hitbox_num, HG_EFFECT                   , 0);
set_hitbox_value(atk, hitbox_num, HG_ANGLE                    , -20);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK           , 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING        , .2);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER       , .8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE            , 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING         , .3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT            , fx_poisonhit);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX                  , asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE        , sprite_get("poison_small_active"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED    , 2/fspecial_lifetime[0]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED        , poison_air_hsp[0]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_VSPEED        , poison_air_vsp[0]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN    , true);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN      , true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE    , true);

hitbox_num ++; //level 2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW                   , 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME                 , fspecial_hbox_rate[1]+1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y                 , 0);
set_hitbox_value(atk, hitbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hitbox_num, HG_WIDTH                    , 80);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT                   , 40);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE                   , 1);
set_hitbox_value(atk, hitbox_num, HG_EFFECT                   , 0);
set_hitbox_value(atk, hitbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK           , 3);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING        , 0);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER       , .7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE            , 4);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING         , 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT            , fx_poisonhit); // yes this is bad sorry
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX                  , asset_get("sfx_ell_steam_hit"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN    , true);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN      , true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES    , 1);

hitbox_num ++; //level 3
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW                   , 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME                 , fspecial_hbox_rate[2]+1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y                 , 0);
set_hitbox_value(atk, hitbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hitbox_num, HG_WIDTH                    , 86);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT                   , 80);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE                   , 1);
set_hitbox_value(atk, hitbox_num, HG_EFFECT                   , 0);
set_hitbox_value(atk, hitbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK           , 3);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING        , 0);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER       , .7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE            , 4);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING         , 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT            , fx_poisonhit); // yes this is bad sorry
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX                  , asset_get("sfx_ell_steam_hit"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN    , true);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN      , true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE   , false);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES    , 1);

set_num_hitboxes(atk, 0);