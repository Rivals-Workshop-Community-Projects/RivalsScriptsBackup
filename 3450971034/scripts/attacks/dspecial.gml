// Based on code written by VForce. Used with permission.
var atk = AT_DSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);
set_attack_value(atk, AG_HAS_LANDING_LAG, 4);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(atk, 1, AG_WINDOW_TYPE, 1);
set_window_value(atk, 1, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_fire"));

set_window_value(atk, 2, AG_WINDOW_TYPE, 9);
set_window_value(atk, 2, AG_WINDOW_LENGTH, 40);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, 2, AG_WINDOW_VSPEED, -1.5);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(atk, 3, AG_WINDOW_TYPE, 1);
set_window_value(atk, 3, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(atk, 4, AG_WINDOW_TYPE, 1);
set_window_value(atk, 4, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, 4, AG_WINDOW_VSPEED, -2);
set_window_value(atk, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(atk, 5, AG_WINDOW_TYPE, 1);
set_window_value(atk, 5, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, 5, AG_WINDOW_HAS_WHIFFLAG, 3);
set_window_value(atk, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(atk, 6, AG_WINDOW_TYPE, 1);
set_window_value(atk, 6, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(atk, 6, AG_WINDOW_HAS_WHIFFLAG, 3);
set_window_value(atk, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.3);


set_window_value(atk, 7, AG_WINDOW_TYPE, 1);
set_window_value(atk, 7, AG_WINDOW_LENGTH, 20);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(atk, 7, AG_WINDOW_HAS_WHIFFLAG, 3);
set_window_value(atk, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
//set_window_value(atk, 7, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, 7, AG_WINDOW_SFX, asset_get("sfx_watergun_fire"));

set_num_hitboxes(atk, 0);

set_hitbox_value(atk, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 4);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_WIDTH, 56);
set_hitbox_value(atk, 1, HG_HEIGHT, 56);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 4);
set_hitbox_value(atk, 1, HG_ANGLE, 45);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, fx_bite);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(atk, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(atk, 1, HG_TECHABLE, 3); // cannot tech or bounce

set_hitbox_value(atk, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 4);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_WIDTH, 28);
set_hitbox_value(atk, 2, HG_HEIGHT, 28);
set_hitbox_value(atk, 2, HG_PRIORITY, 1);
set_hitbox_value(atk, 2, HG_DAMAGE, 4);
set_hitbox_value(atk, 2, HG_ANGLE, 45);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(atk, 2, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(atk, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 4);
set_hitbox_value(atk, 3, HG_LIFETIME, 3);
set_hitbox_value(atk, 3, HG_WIDTH, 56);
set_hitbox_value(atk, 3, HG_HEIGHT, 56);
set_hitbox_value(atk, 3, HG_PRIORITY, 2);
set_hitbox_value(atk, 3, HG_DAMAGE, 5);
set_hitbox_value(atk, 3, HG_ANGLE, 45);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, 3, HG_VISUAL_EFFECT, fx_bigbite);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(atk, 3, HG_IGNORES_PROJECTILES, true);

// Abyss Rune: Poison Consume

if(poison_consume_rune){

    set_hitbox_value(atk, 1, HG_EFFECT, poison_extend_effect_index);

    set_hitbox_value(atk, 4, HG_PARENT_HITBOX, 4);
    set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, 4, HG_HITBOX_GROUP, 1);
    set_hitbox_value(atk, 4, HG_WINDOW, 4);
    set_hitbox_value(atk, 4, HG_LIFETIME, 3);
    set_hitbox_value(atk, 4, HG_WIDTH, 56);
    set_hitbox_value(atk, 4, HG_HEIGHT, 56);
    set_hitbox_value(atk, 4, HG_PRIORITY, 2);
    set_hitbox_value(atk, 4, HG_DAMAGE, 12);
    set_hitbox_value(atk, 4, HG_ANGLE, 45);
    set_hitbox_value(atk, 4, HG_ANGLE_FLIPPER, 1);
    set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, 1.4);
    set_hitbox_value(atk, 4, HG_HITSTUN_MULTIPLIER, .8);
    set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, 0.5);
    set_hitbox_value(atk, 4, HG_VISUAL_EFFECT, fx_bigbite);
    set_hitbox_value(atk, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(atk, 4, HG_EXTENDED_PARRY_STUN, true);
    set_hitbox_value(atk, 4, HG_IGNORES_PROJECTILES, true);
    set_hitbox_value(atk, 4, HG_EFFECT, poison_consume_effect_index);
    set_hitbox_value(atk, 4, HG_HIT_LOCKOUT, 10);

}
