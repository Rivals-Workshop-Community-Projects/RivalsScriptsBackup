if attack == AT_NSPECIAL and instance_exists(voltorb_obj)
{
    attack = AT_NSPECIAL_2;
    
    if !(voltorb_obj.state == PS_ATTACK_GROUND or voltorb_obj.state == PS_DASH or voltorb_obj.state == PS_PRATFALL or voltorb_obj.state == PS_DEAD) and (voltorb_obj.inactive_timer == 0)
    {
        voltorb_obj.state = PS_DASH;
        voltorb_obj.state_timer = 0;
        voltorb_obj.lock_state = true;
    }
}

if (attack == AT_TAUNT && (down_down)){
  attack = AT_TAUNT_2 
}

if attack == AT_FSPECIAL
{
    set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, free ? 7 : 1);
    set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, free ? 7 : 1);
}

if attack == AT_USPECIAL
{
    uspec_held = 0;
    uspec_parry_pressed = false;
    set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
}

if (attack == AT_DSTRONG or attack == AT_USTRONG or attack == AT_FSTRONG or attack == AT_TAUNT_2)
{
    dstrong_forgiveness = 0;
    if fspecial_charge == fspecial_max_charge
    {
        strong_powered_up = true;
        fspecial_charge = 0;
        
        take_damage(player, -1, 8);
        
        switch (attack)
        {
            case AT_TAUNT_2:
                set_hitbox_value(AT_TAUNT_2, 2, HG_DAMAGE, 16);
                set_hitbox_value(AT_TAUNT_2, 2, HG_ANGLE, 90);
                set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_KNOCKBACK, 12); //5->7
                set_hitbox_value(AT_TAUNT_2, 2, HG_KNOCKBACK_SCALING, 1.4);
                set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_HITPAUSE, 8);
                set_hitbox_value(AT_TAUNT_2, 2, HG_HITPAUSE_SCALING, 1.0);
                set_hitbox_value(AT_TAUNT_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
            break;
            case AT_FSTRONG:
                set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 16);
                set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
                set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 157);
                set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
                set_hitbox_value(AT_FSTRONG, 2, HG_FINAL_BASE_KNOCKBACK, 5);
                set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
                set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj2"));
                set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 197);
                set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
                set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
                set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_HSPEED, 12);
                set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);
                
                set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 18);
            break;
            case AT_USTRONG:
                thunderfx_obj = spawn_hit_fx(x,y,thunderfx);
            
                set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 300);
                set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -150);
                set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 157);
                set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
                
                set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("thunder_start"));
                set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("thunder_slam"));
                set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 26);
            break;
            case AT_DSTRONG:
                set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_2"));
                set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 15);
                set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.3);
                set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 143);
                set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
                
                set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("pokkencharge"));
                set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 12);
                set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 18);
            break;
        }
    }
    else
    {
        strong_powered_up = false;
        
        //reset
        switch (attack)
        {
            case AT_TAUNT_2:
                reset_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE)
                reset_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE)
                reset_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK); //5->7
                reset_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING);
                reset_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX);
            break;
            case AT_FSTRONG:
                reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
                reset_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT);
                reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
                reset_hitbox_value(AT_FSTRONG, 2, HG_ANGLE);
                reset_hitbox_value(AT_FSTRONG, 2, HG_FINAL_BASE_KNOCKBACK);
                reset_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE);
                reset_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT);
                reset_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX);
                reset_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR);
                reset_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_CAMERA_SHAKE);
                reset_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_HSPEED);
                reset_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH);
            break;
            case AT_USTRONG:
                reset_hitbox_value(AT_USTRONG, 2, HG_HEIGHT);
                reset_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y);
                reset_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT);
                reset_window_value(AT_USTRONG, 1, AG_WINDOW_SFX);
                reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX);
                reset_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);
            break;
            case AT_DSTRONG:
                reset_attack_value(AT_DSTRONG, AG_SPRITE);
                reset_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX);
                reset_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE);
                reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT);
                reset_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX);
                reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX);
                reset_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH);
                reset_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH);
            break;
        }
    }
}