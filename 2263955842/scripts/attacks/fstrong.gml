set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));


set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("fantasy_seal"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


if(!has_rune("H"))
{
    set_num_hitboxes(AT_FSTRONG, 3);
    
    set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
    set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 80);
    set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -30);
    set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
    set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 25);
    set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 25);
    set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
    set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.9);
    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 20);
    set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    
    set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
    set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 80);
    set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -30);
    set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
    set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 58);
    set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 58);
    set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
    set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
    set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 50);
    set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
    set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
    set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 20);
    set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 302);
    set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    
    set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
    set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
    set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 30);
    set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -30);
    set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 1);
    set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 35);
    set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 15);
    set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
    set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 1);
    set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 50);
    set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.5);
    set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.7);
    set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 25);
    set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
    
}
else
{
    var nbr = 22;
    set_num_hitboxes(AT_FSTRONG, nbr);
    
    for (var i = 0; i < nbr; i += 1)
    {
        var ang = 360 / nbr * i;
        
        set_hitbox_value(AT_FSTRONG, i, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_FSTRONG, i, HG_WINDOW, 99)
        set_hitbox_value(AT_FSTRONG, i, HG_LIFETIME, 50);
        set_hitbox_value(AT_FSTRONG, i, HG_HITBOX_X, 46);
        set_hitbox_value(AT_FSTRONG, i, HG_HITBOX_Y, -32);
        set_hitbox_value(AT_FSTRONG, i, HG_WIDTH, 40);
        set_hitbox_value(AT_FSTRONG, i, HG_HEIGHT, 40);
        set_hitbox_value(AT_FSTRONG, i, HG_SHAPE, 0);
        set_hitbox_value(AT_FSTRONG, i, HG_PRIORITY, 2);
        set_hitbox_value(AT_FSTRONG, i, HG_DAMAGE, 1);
        set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, ang);
        set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 3);
        set_hitbox_value(AT_FSTRONG, i, HG_BASE_HITPAUSE, 1);
        set_hitbox_value(AT_FSTRONG, i, HG_HIT_LOCKOUT, 1);
        set_hitbox_value(AT_FSTRONG, i, HG_VISUAL_EFFECT, 302);
        set_hitbox_value(AT_FSTRONG, i, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
        if (get_player_color(player) == 11)
        {
            set_hitbox_value(AT_FSTRONG, i, HG_PROJECTILE_SPRITE, sprite_get("ofuda_ctc"));
        }
        else
        {
            set_hitbox_value(AT_FSTRONG, i, HG_PROJECTILE_SPRITE, sprite_get("ofuda"));
        }
        set_hitbox_value(AT_FSTRONG, i, HG_PROJECTILE_MASK, sprite_get("ofuda"));
        set_hitbox_value(AT_FSTRONG, i, HG_PROJECTILE_HSPEED, 5); // change the speed of the cards here
        set_hitbox_value(AT_FSTRONG, i, HG_PROJECTILE_VSPEED, 0);
        set_hitbox_value(AT_FSTRONG, i, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
        set_hitbox_value(AT_FSTRONG, i, HG_PROJECTILE_PARRY_STUN, true);
            
    }

}
