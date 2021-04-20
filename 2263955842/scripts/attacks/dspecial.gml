set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 3);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);


set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("dspecial"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -4);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);


var nbr = 20; // don't foregt to changes value in article2_update and update
set_num_hitboxes(AT_DSPECIAL, nbr);

for (var i = 0; i < nbr; i += 1)
{
    var ang = 360 / nbr * i;
    
    set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_DSPECIAL, i, HG_WINDOW, 99)
    set_hitbox_value(AT_DSPECIAL, i, HG_LIFETIME, 50);
    set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_X, 46);
    set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_Y, -32);
    set_hitbox_value(AT_DSPECIAL, i, HG_WIDTH, 40);
    set_hitbox_value(AT_DSPECIAL, i, HG_HEIGHT, 40);
    set_hitbox_value(AT_DSPECIAL, i, HG_SHAPE, 0);
    set_hitbox_value(AT_DSPECIAL, i, HG_PRIORITY, 2);
    set_hitbox_value(AT_DSPECIAL, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_DSPECIAL, i, HG_ANGLE, ang);
    set_hitbox_value(AT_DSPECIAL, i, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_DSPECIAL, i, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(AT_DSPECIAL, i, HG_EXTRA_HITPAUSE, 20);
    set_hitbox_value(AT_DSPECIAL, i, HG_HIT_LOCKOUT, 1);
    set_hitbox_value(AT_DSPECIAL, i, HG_VISUAL_EFFECT, 302);
    set_hitbox_value(AT_DSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
    if (get_player_color(player) == 11)
    {
        set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("ofuda_ctc"));
    }
    else
    {
        set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("ofuda"));
    }
    set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_MASK, sprite_get("ofuda"));
    set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_HSPEED, 5); // change the speed of the cards here
    set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
    set_hitbox_value(AT_DSPECIAL, i, HG_PROJECTILE_PARRY_STUN, true);
        
}





// ofuda
/*
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 65);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ofuda"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("ofuda"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
*/

