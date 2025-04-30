var atk = AT_NSPECIAL;
var i = 1;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_NUM_WINDOWS, 5); // tampered with in attack_update.gml
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

// Startup
set_window_value(atk, i, AG_WINDOW_LENGTH, 9);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, i, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(atk, i, AG_WINDOW_SFX_FRAME, 8);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
i++;

// Hold (committed)
set_window_value(atk, i, AG_WINDOW_LENGTH, 9);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
i++;

// Hold (releasable, looping)
set_window_value(atk, i, AG_WINDOW_TYPE, 9);
set_window_value(atk, i, AG_WINDOW_LENGTH, 20);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
i++;




// Await fall (looping)
set_window_value(atk, i, AG_WINDOW_TYPE, 9);
set_window_value(atk, i, AG_WINDOW_LENGTH, 4);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
i++;

// Swallow recovery
set_window_value(atk, i, AG_WINDOW_LENGTH, 16);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
i++;

// All remaining windows must be used manually.

// Hurl-start
set_window_value(atk, i, AG_WINDOW_LENGTH, 8);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(atk, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, i, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_spit"));
set_window_value(atk, i, AG_WINDOW_SFX_FRAME, 6);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
i++;

// Hurl
set_window_value(atk, i, AG_WINDOW_LENGTH, 18);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
i++;

// Empty recovery
set_window_value(atk, i, AG_WINDOW_LENGTH, 8);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
i++;

// Punished recovery
set_window_value(atk, i, AG_WINDOW_LENGTH, 36);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, i, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(atk, i, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
i++;

set_num_hitboxes(atk, 0);
i = 1;

set_hitbox_value(atk, i, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, i, HG_WINDOW                   , 1);
set_hitbox_value(atk, i, HG_WINDOW_CREATION_FRAME    , 1);
set_hitbox_value(atk, i, HG_LIFETIME                 , 2);
set_hitbox_value(atk, i, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, i, HG_HITBOX_Y                 , 0);
set_hitbox_value(atk, i, HG_SHAPE                    , 0);
set_hitbox_value(atk, i, HG_WIDTH                    , 28);
set_hitbox_value(atk, i, HG_HEIGHT                   , 28);
set_hitbox_value(atk, i, HG_PRIORITY                 , 1);
set_hitbox_value(atk, i, HG_DAMAGE                   , 8);
set_hitbox_value(atk, i, HG_EFFECT                   , 0);
set_hitbox_value(atk, i, HG_ANGLE                    , 90);
set_hitbox_value(atk, i, HG_BASE_KNOCKBACK           , 8);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING        , .75);
set_hitbox_value(atk, i, HG_HITSTUN_MULTIPLIER        , .8);
set_hitbox_value(atk, i, HG_BASE_HITPAUSE            , 12);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING         , .5);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT            , fx_bite);
set_hitbox_value(atk, i, HG_HIT_SFX                  , asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, i, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, i, HG_PROJECTILE_PARRY_STUN    , false);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, i, HG_PROJECTILE_PLASMA_SAFE   , false);

// Rune Hitboxes

i++; // Explosion Hit
set_hitbox_value(atk, i, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, i, HG_WINDOW                   , 1);
set_hitbox_value(atk, i, HG_WINDOW_CREATION_FRAME    , 1);
set_hitbox_value(atk, i, HG_LIFETIME                 , 9);
set_hitbox_value(atk, i, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, i, HG_HITBOX_Y                 , 0);
set_hitbox_value(atk, i, HG_SHAPE                    , 0);
set_hitbox_value(atk, i, HG_WIDTH                    , 128);
set_hitbox_value(atk, i, HG_HEIGHT                   , 128);
set_hitbox_value(atk, i, HG_PRIORITY                 , 1);
set_hitbox_value(atk, i, HG_DAMAGE                   , 10);
set_hitbox_value(atk, i, HG_EFFECT                   , 0);
set_hitbox_value(atk, i, HG_ANGLE                    , 45);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER            , 3);
set_hitbox_value(atk, i, HG_BASE_KNOCKBACK           , 8);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING        , 1.15);
set_hitbox_value(atk, i, HG_HITSTUN_MULTIPLIER       , 1);
set_hitbox_value(atk, i, HG_BASE_HITPAUSE            , 12);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING         , .8);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT            , fx_bite);
set_hitbox_value(atk, i, HG_HIT_SFX                  , asset_get("sfx_mol_norm_explode"));
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, i, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, i, HG_PROJECTILE_PARRY_STUN    , false);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, i, HG_PROJECTILE_PLASMA_SAFE   , false);


i++; // Evil Ptooie
set_hitbox_value(atk, i, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, i, HG_WINDOW                   , 1);
set_hitbox_value(atk, i, HG_WINDOW_CREATION_FRAME    , 1);
set_hitbox_value(atk, i, HG_LIFETIME                 , 200);
set_hitbox_value(atk, i, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, i, HG_HITBOX_Y                 , 0);
set_hitbox_value(atk, i, HG_SHAPE                    , 0);
set_hitbox_value(atk, i, HG_WIDTH                    , 40);
set_hitbox_value(atk, i, HG_HEIGHT                   , 40);
set_hitbox_value(atk, i, HG_PRIORITY                 , 1);
set_hitbox_value(atk, i, HG_DAMAGE                   , 4 + !ptooie_explode_rune * 4);
set_hitbox_value(atk, i, HG_EFFECT                   , 0);
set_hitbox_value(atk, i, HG_ANGLE                    , 45);
set_hitbox_value(atk, i, HG_BASE_KNOCKBACK           , 8);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING        , .8);
set_hitbox_value(atk, i, HG_HITSTUN_MULTIPLIER       , 1);
set_hitbox_value(atk, i, HG_BASE_HITPAUSE            , 12);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING         , .5);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT            , fx_bite);
set_hitbox_value(atk, i, HG_HIT_SFX                  , asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE        , sprite_get("ptooie"));
set_hitbox_value(atk, i, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, i, HG_PROJECTILE_GRAVITY       , .5);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, (ptooie_explode_rune ? 1 : HFX_FOR_HIT_SMALL));
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, !ptooie_explode_rune);
set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, i, HG_PROJECTILE_PARRY_STUN    , false);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, i, HG_PROJECTILE_PLASMA_SAFE   , false);


i++; // Explosion Hit But Evil
set_hitbox_value(atk, i, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, i, HG_WINDOW                   , 1);
set_hitbox_value(atk, i, HG_WINDOW_CREATION_FRAME    , 1);
set_hitbox_value(atk, i, HG_LIFETIME                 , 9);
set_hitbox_value(atk, i, HG_HITBOX_X                 , 0);
set_hitbox_value(atk, i, HG_HITBOX_Y                 , 0);
set_hitbox_value(atk, i, HG_SHAPE                    , 0);
set_hitbox_value(atk, i, HG_WIDTH                    , 128);
set_hitbox_value(atk, i, HG_HEIGHT                   , 128);
set_hitbox_value(atk, i, HG_PRIORITY                 , 1);
set_hitbox_value(atk, i, HG_DAMAGE                   , 8);
set_hitbox_value(atk, i, HG_EFFECT                   , 0);
set_hitbox_value(atk, i, HG_ANGLE                    , 45);
set_hitbox_value(atk, i, HG_ANGLE_FLIPPER            , 3);
set_hitbox_value(atk, i, HG_BASE_KNOCKBACK           , 8);
set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING        , 1);
set_hitbox_value(atk, i, HG_HITSTUN_MULTIPLIER       , 1);
set_hitbox_value(atk, i, HG_BASE_HITPAUSE            , 12);
set_hitbox_value(atk, i, HG_HITPAUSE_SCALING         , .8);
set_hitbox_value(atk, i, HG_VISUAL_EFFECT            , fx_bite);
set_hitbox_value(atk, i, HG_HIT_SFX                  , asset_get("sfx_mol_norm_explode"));
set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, i, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, i, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE    , true);
set_hitbox_value(atk, i, HG_PROJECTILE_PARRY_STUN    , false);
set_hitbox_value(atk, i, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, i, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, i, HG_PROJECTILE_PLASMA_SAFE   , false);

if (ptooie_parry_rune){
    set_hitbox_value(atk, i, HG_IGNORES_PROJECTILES, true);
}