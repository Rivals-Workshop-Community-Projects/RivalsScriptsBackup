//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL || attack == AT_USPECIAL){ //no B-reversing Uspecial or Dspecial, since they require a quick backward input to aim
    trigger_b_reverse();
}

switch(attack)
{
    case AT_USPECIAL:
    case AT_USPECIAL_GROUND:
        switch(window)
        {
            case 1:
                // Reset aim variables.
                if(window_timer == 1) {
                    uspec_charge = 0;
                    uspec_angle = 60;
                }

                // Charge projectile speed while holding down special.
                if(special_down)
                    uspec_charge++;

                if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                    if(!joy_pad_idle) {
                        if(spr_dir == 1 && right_down || spr_dir == -1 && left_down)
                            uspec_angle = 30;
                        else if(up_down)
                            uspec_angle = 90;
                        else
                            uspec_angle = 110;
                    }
                }

                air_friction = uspec_starup_air_fric;
                break;
            
            case 2:
                if(window_timer == 1) {
                    var proj_speed = uspec_base_speed + uspec_speed_multiplier * (uspec_charge div uspec_speed_stages);
                    var proj_hsp = spr_dir * lengthdir_x(proj_speed, uspec_angle);
                    var proj_vsp = lengthdir_y(proj_speed, uspec_angle);
                    var proj = create_hitbox(AT_USPECIAL, 1,
                                             x + spr_dir * get_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X),
                                             y + get_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y));

                    proj.hsp = proj_hsp;
                    proj.vsp = proj_vsp;

                    with(asset_get("oPlayer")) {
                        if(skl_poisoner == other.player) {
                            skl_poisoned = false;
                            skl_poisoner = 0;
                        }
                    }

                    if(instance_exists(uspec_web)) {
                        uspec_web.state = 2;
                        uspec_web.state_timer = 0;
                    }
                }

                break;
            
            default:
                air_friction = air_fric_default;
                break;
        }
        break;

    case AT_NSPECIAL:
        if(window == 2 && window_timer == 1) {
            if(instance_exists(stealth_rock)) {
                stealth_rock.state = 4;
                stealth_rock.state_timer = 0;
            }
        
            stealth_rock = instance_create( x + spr_dir * get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X),
                                            y + get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y),
                                            "obj_article2");

            move_cooldown[AT_NSPECIAL] = nspec_cooldown;
        }

        break;
    
    case AT_FSPECIAL:
        switch(window) {
            case 2:
                if(shield_pressed || hsp == 0) {
                    destroy_hitboxes();
                    window = 3;
                    window_timer = 0;
                }

                if(!free && ((spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed))) {
                    window = 4;
                    window_timer = 0;
                }
                break;
            
            case 4:
                destroy_hitboxes();

                if(window_timer == 9)
                    spr_dir *= -1;
                
                if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                    window = 2;
                    window_timer = 0;
                    attack_end();
                }
                break;
        }
        break;
    
    case AT_FSPECIAL_AIR:
        switch(window) {
            case 1:
                if(window_timer == 1) {
                    move_cooldown[AT_FSPECIAL_AIR] = 999;
                }
            case 2:
                var bbox_width = bbox_right - bbox_left;

                if(has_hit || place_meeting(x+spr_dir*(bbox_width/2+1), y-10, asset_get("par_block"))) {
                    destroy_hitboxes();
                    window = 4;
                    window_timer = 0;
                }
                break;
            
            case 3:
                can_wall_jump = true;
                break;

            case 4:
                can_wall_jump = true;

                if(window_timer == 1) {
                    hsp = -5 * spr_dir;
                    vsp = -7;
                }
                break;
        }

        if(has_hit)
            move_cooldown[AT_FSPECIAL_AIR] = 0;
        break;
    
    case AT_FSTRONG:
        if(window == 3 || window == 4 && window_timer < 6)
            off_edge = true;
        else
            off_edge = false;
        break;

    case AT_DSPECIAL:
        switch(window) {
            case 2:
                if(!special_down) {
                    window = 5;
                    window_timer = 0;
                }
                break;
            
            case 3:
                if(window_timer == 1) {
                    shell_smash_stage = clamp(shell_smash_stage + 1, 0, 2);
                    dash_speed = speed_table[shell_smash_stage];
                    knockback_adj = weight_table[shell_smash_stage];
                    jump_speed = jump_table[shell_smash_stage];
                    djump_speed = jump_table[shell_smash_stage];
                    sound_stop(asset_get("sfx_ell_missile_loop"));
                }
                break;
            
            case 5:
                sound_stop(asset_get("sfx_ell_missile_loop"));
                break;
        }
        break;

    case AT_TAUNT:
        if(window == 2) {
            can_jump = true;
            
            if(left_hard_pressed || right_hard_pressed)
                iasa_script();
        }

    default:
        break;
}

//Armor handling
switch(attack) {
    case(AT_DTILT):
        if(window == 2 || window == 1 && window_timer >= dtilt_armor_frame)
            soft_armor = armor_table[shell_smash_stage][0];
        else
            soft_armor = 0;
        break;
    
    case(AT_DATTACK):
        if(window == 2 || window == 3 || window == 1 && window_timer >= dattack_armor_frame)
            soft_armor = armor_table[shell_smash_stage][1];
        else
            soft_armor = 0;
        break;

    case(AT_FSTRONG):
        if(window == 3 || window == 2 && window_timer >= fstrong_armor_frame)
            soft_armor = armor_table[shell_smash_stage][2];
        else
            soft_armor = 0;
        break;
    
    case(AT_USTRONG):
        if(window == 3 || window == 2 && window_timer >= ustrong_armor_frame_1 || window == 4 && window_timer >= ustrong_armor_frame_2)
            soft_armor = armor_table[shell_smash_stage][1];
        else
            soft_armor = 0;
        break;
    
    case(AT_DSTRONG):
        if(window == 3 || window == 2 && window_timer >= dstrong_armor_frame)
            soft_armor = armor_table[shell_smash_stage][0];
        else
            soft_armor = 0;
        break;
    
    case(AT_NAIR):
        if(window == 2 || window == 1 && window_timer >= nair_armor_frame)
            soft_armor = armor_table[shell_smash_stage][1];
        else
            soft_armor = 0;
        break;

    case(AT_FSPECIAL):
    case(AT_FSPECIAL_AIR):
        if(window == 2 || window == 1 && window_timer >= fspecial_armor_frame)
            soft_armor = armor_table[shell_smash_stage][1];
        else
            soft_armor = 0;
        break;
    
    case(AT_DSPECIAL):
        if(window == 2)
            soft_armor = armor_table[shell_smash_stage][2];
        else
            soft_armor = 0;
        break;
}