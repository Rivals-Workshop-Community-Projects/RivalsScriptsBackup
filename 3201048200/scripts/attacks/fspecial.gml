var atk             = AT_FSPECIAL;
var window_num      = 1;
var window_length   = 0;

/* Fspecial 1 - Grapple Gun 
    (xF means anim frames, will change once sketch is finished, but just for ease of implimentation)
    Without a neutral special Point out, this move is a simple forward aiming grappling gun attack.
    After startup (0F), Perry will shoot out the hook (Fspec_proj), which travels forwards quickly before stopping when reaching a certain length. 
    During this, perry will hold his hook out (1-3F), staying on the 4th frame until the hook returns or it hits), and cant move. 
    If the hook misses, it will return back to perry somewhat slowly, and once it returns, perry will go into endlag (4-6F).
    If the hook lands, perry will fly towards the opponent (8F), and once he makes contact, will do a followup that sends up and gives perry VSP so he can combo off of it (7-10f).
*/


//                        --attack windows--                                  //
set_attack_value(atk, AG_SPRITE                         , sprite_get("fspec_base"));
set_attack_value(atk, AG_AIR_SPRITE                     , sprite_get("fspec_air"));

set_attack_value(atk, AG_HURTBOX_SPRITE                 , sprite_get("fspec_base_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS                    , 4); // tampered with in attack_update
set_attack_value(atk, AG_CATEGORY                       , 2);
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY            , true);
set_attack_value(atk, AG_OFF_LEDGE                      , true);

// startup
set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 11);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, sound_get("sfx_per_hookstart_2"));
set_window_value(atk, window_num                        , AG_WINDOW_SFX_FRAME, window_length-1);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
window_num++;

// fire
set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 6);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(atk, window_num                        , AG_WINDOW_CAN_WALLJUMP, true);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
window_num++;

// loop (await)
set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 6);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(atk, window_num                        , AG_WINDOW_CAN_WALLJUMP, true);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
window_num++;

// endlag
set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 30);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num                        , AG_WINDOW_CAN_WALLJUMP, true);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GRAVITY, .7);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_SFX, true);
set_window_value(atk, window_num                        , AG_WINDOW_SFX, sound_get("sfx_per_hookend"));
window_num++;

// getting pulled (wall)
set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 6);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GRAVITY, 0.3);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(atk, window_num                        , AG_WINDOW_CAN_WALLJUMP, true);
window_num++;


// getting pulled (player)
set_window_value(atk, window_num                        , AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num                        , AG_WINDOW_LENGTH, 6);
    var window_length = get_window_value(atk,window_num , AG_WINDOW_LENGTH);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num                        , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(atk, window_num                        , AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(atk, window_num                        , AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
window_num++;

// followup attack ~ startup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);
// gravity handled manually in attack_update.gml in the interest of parachute safety
window_num++;

// followup attack ~ active
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 14);
window_num++;

// followup attack ~ endlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);
window_num++;


//                        --attack hitboxes--                                 //
set_num_hitboxes(atk, 2);
var hbox_num = 1;

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE              , 2);
set_hitbox_value(atk, hbox_num, HG_WINDOW                   , 0); // spawned manually
set_hitbox_value(atk, hbox_num, HG_WINDOW_CREATION_FRAME    , 0);
set_hitbox_value(atk, hbox_num, HG_LIFETIME                 , 60);
//set_hitbox_value(atk, hbox_num, HG_HITBOX_X                 , 32);
//set_hitbox_value(atk, hbox_num, HG_HITBOX_Y                 , -32);
set_hitbox_value(atk, hbox_num, HG_SHAPE                    , 2);
set_hitbox_value(atk, hbox_num, HG_WIDTH                    , 12);
set_hitbox_value(atk, hbox_num, HG_HEIGHT                   , 28);
set_hitbox_value(atk, hbox_num, HG_PRIORITY                 , 1);
set_hitbox_value(atk, hbox_num, HG_DAMAGE                   , 2);
set_hitbox_value(atk, hbox_num, HG_ANGLE                    , 90);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK           , 6);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING        , 0.3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE            , 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING         , 0.3);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT            , 1);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX                  , sound_get("sfx_per_hookhit_2"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_SPRITE        , sprite_get("null"));
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_MASK          , -1);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, hfx_null);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR , 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_UNBASHABLE    , true);
//set_hitbox_value(atk, hbox_num, HG_PROJECTILE_PARRY_STUN    , true); // needs to be handled manually
set_hitbox_value(atk, hbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
hbox_num++;

set_hitbox_value(atk, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hbox_num, HG_WINDOW, 8);
set_hitbox_value(atk, hbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(atk, hbox_num, HG_HITBOX_X, 20);
set_hitbox_value(atk, hbox_num, HG_WIDTH, 90);
set_hitbox_value(atk, hbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hbox_num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(atk, hbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, hbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hbox_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(atk, hbox_num, HG_VISUAL_EFFECT, fx_medium_circle1);
set_hitbox_value(atk, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
hbox_num++;