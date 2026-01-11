// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//if (hitstop)
//    exit;
if (state_timer == 6 && energized && attack != AT_TAUNT && attack != AT_TAUNT_2)
{
    energized_attack = true;
    energized = false;
    clear_button_buffer(PC_ATTACK_PRESSED);
    clear_button_buffer(PC_SPECIAL_PRESSED);
    clear_button_buffer(PC_STRONG_PRESSED);
}
if (energized_attack)
{
    can_attack = true;
    can_jump = true;
    can_strong = true;
    can_ustrong = true;
    can_special = true;
    can_shield = true;
    can_dash_attack = true;
    can_dash = true;
}
if (state_timer == 6 && !old_ice 
    && attack != AT_NSPECIAL 
    && attack != AT_FSPECIAL
    && attack != AT_DSPECIAL
    && attack != AT_FTILT
    && attack != AT_TAUNT
    && attack != AT_TAUNT_2)
{
    var frost_orb = -1;
    for (var i = 0; i < 3; i++)
    {
        if (orb_slots[i] == 2)
        {
            frost_orb = i;
            break;
        }
    }
    if (frost_orb != -1 && armor_cooldown == 0)
    {
        var target_orb = frost_orb == 0 ? orb1 : frost_orb == 1 ? orb2 : orb3;
        
        var targetX = x;
        var targetY = y - 20;
        target_orb.x = targetX;
        target_orb.y = targetY;
        target_orb.orb_evoke_x = targetX;
        target_orb.orb_evoke_y = targetY;
        target_orb.orbID = frost_orb;
        target_orb.override_orb = -1;
        with (target_orb) { user_event(1); }
        switch (frost_orb)
        {
            case 0:
                orb_slots = [orb_slots[1], orb_slots[2], 0];
                break;
            case 1:
                orb_slots = [orb_slots[0], orb_slots[2], 0];
                break;
            case 2:
                orb_slots = [orb_slots[0], orb_slots[1], 0];
                break;
        }
    }
}

switch (attack)
{
    case AT_USPECIAL:
        bear_uspecial = false;
        can_up_b = false;
        break;
    case AT_DSTRONG:
        if (state_timer == 19 && window == 1)
            sound_play(asset_get("sfx_boss_charge"), false, noone, 1, 1);
        break;
    case AT_DSPECIAL:
        if (window == 2 && window_timer == 2)
        {
            if (instance_exists(oTestPlayer))
            {
                sound_play(asset_get("mfx_tut_fail"), false, noone, 1, 1);
            }
            else if (!instance_exists(hologram))
            {
                if (!hologram_was_alive)
                {
                    sound_play(asset_get("sfx_clairen_tip_weak"), false, noone, 1, 1);
                    hologram = instance_create(x, y, "oPlayer");
                    with (hologram)
                    {
                        hologram_valid_attack = other.hologram_valid_attack;
                        jump_to_attack = 0;
                        ai_disabled = true;
                        damage_scaling = 0;
                        jump_speed = 10;
                        short_hop_speed = 10;
                        invincible = true;
                        invince_time = 25;
                    }
                }
            }
            else
            {
                with (hologram)
                {
                    if (state_cat == SC_GROUND_NEUTRAL && get_attack_value(hologram_valid_attack, AG_CATEGORY) == 1)
                    {
                        set_state(PS_JUMPSQUAT);
                        jump_to_attack = 6;
                    }
                    else
                        jump_to_attack = 1;
                }
            }
        }
        break;
    case AT_FSPECIAL:
        var targetX = x + (80 * spr_dir);
        var targetY = y - 20;
        if (window == 1 && window_timer == 1)
            temp_hit_fx = spawn_hit_fx(targetX, targetY, HFX_ORI_BASH_START);
        if (instance_exists(temp_hit_fx))
        {
            temp_hit_fx.x = targetX;
            temp_hit_fx.y = targetY;
        }
        if (dualcast_orb != 0)
        {
            if (window == 2 && (window_timer == 1 || window_timer == 7))
            {
                orb1.x = targetX;
                orb1.y = targetY;
                orb1.orb_evoke_x = targetX;
                orb1.orb_evoke_y = targetY;
                orb1.orbID = 0;
                orb1.override_orb = dualcast_orb;
                //print("magique");
                if (dualcast_orb == 2)
                    armor_duration = 1;
                if (dualcast_orb == 4)
                    energized = true;
                with (orb1) { user_event(1); }
            }
        }
        else if (window == 2 && window_timer == 1)
        {
            orb1.x = targetX;
            orb1.y = targetY;
            sound_play(asset_get("mfx_back"), false, noone, 1, 1);
            spawn_hit_fx(targetX, targetY, HFX_ELL_STEAM_HIT);
        }
        break;
    case AT_NSPECIAL:
        if (orb_slots[0] == 0)
        {
            if (window == 2 && window_timer == 3)
            {
                var targetX = x + (80 * spr_dir);
                var targetY = y - 20;
                orb1.x = targetX;
                orb1.y = targetY;
                sound_play(asset_get("mfx_back"), false, noone, 1, 1);
                spawn_hit_fx(targetX, targetY, HFX_ELL_STEAM_HIT);
            }
        }
        else if (window == 2 && window_timer % 6 == 3)
        {
            var index = floor(window_timer / 6);
            if (orb_slots[index] != 0)
            {
                var target_orb = index == 0 ? orb1 : index == 1 ? orb2 : orb3;
                if (!instance_exists(target_orb.attached_projectile))
                {
                    var projectile = create_hitbox(AT_NSPECIAL, 1, x, y - 40);
                    target_orb.attached_projectile = projectile;
                    sound_play(asset_get("sfx_ori_spirit_flame_1"), false, noone, 1, 1);
                }
            }
        }
        break;
    case AT_TAUNT:
        if (window == 3 && !taunt_down)
        {
            window = 4;
        }
        break;
}