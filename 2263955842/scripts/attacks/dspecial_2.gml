set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_2, AG_LANDING_LAG, 3);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));




set_num_hitboxes(AT_DSPECIAL_2,1);


    
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 110)
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 100);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 46);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -32);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 40);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 40);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 1);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 0);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 0);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 1);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 1);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
    if (get_player_color(player) == 11)
    {
        set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("amulet_ctc"));
    }
    else
    {
        set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("amulet"));
    }
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("amulet"));
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 2); // change the speed of the cards here
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 0);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, true);
        





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

