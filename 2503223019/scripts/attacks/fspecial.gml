set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_FSPECIAL, 1);

//card
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 250);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, .8);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"))
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj_mask"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);

/*
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("melee_fan"));
*/

//Base -- all four hitboxes start with the same properties
// (DAN WHY DONT PARENT HITBOXES BEHAVE LIKE THIS!?)
for (var i = 2; i < 6; i++)
{
    set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 3);
    set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 8);
    set_hitbox_value(AT_FSPECIAL, i, HG_WIDTH, 64);
    set_hitbox_value(AT_FSPECIAL, i, HG_HEIGHT, 100);
    set_hitbox_value(AT_FSPECIAL, i, HG_SHAPE, 2);
    set_hitbox_value(AT_FSPECIAL, i, HG_PRIORITY, 3);
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 1);
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_PLASMA_SAFE, 1);
    set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE, 60);
    set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 6);
    set_hitbox_value(AT_FSPECIAL, i, HG_TECHABLE, 3);
    set_hitbox_value(AT_FSPECIAL, i, HG_BASE_KNOCKBACK, 6.5);
    set_hitbox_value(AT_FSPECIAL, i, HG_KNOCKBACK_SCALING, 0.6);
    set_hitbox_value(AT_FSPECIAL, i, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(AT_FSPECIAL, i, HG_HITPAUSE_SCALING, 0.5);
    set_hitbox_value(AT_FSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_MASK, -1);
}

//Special stats for elemental hitboxes
//WATER - bonus duration
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 16);
//AIR - multihit (see hitbox_update)
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_bird_downspecial"));
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 4);
//EARTH - bonus damage
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 198);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 12);
//FIRE - burn effect
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSPECIAL, 5, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 8);


