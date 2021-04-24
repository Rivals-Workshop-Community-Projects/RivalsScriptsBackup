//set_attack


//final smash stuff at the top
var doing_fs = false;
if item_held == "none" && attack == AT_NSPECIAL && "fs_charge" in self && fs_charge >= 200 {
    item_pulling = "subspace_bomb";
    attack = AT_NSPECIAL;
    doing_fs = true;
    fs_force_fs = true;
    clear_button_buffer(PC_SPECIAL_PRESSED);
}


item_attack = false;
item_loop = 0;
item_roulette_num = 0;
if item_held != "none" {
    if attack == AT_BAIR {
        attack = AT_FAIR;
        spr_dir *= -1;
    }
    if attack == AT_FAIR || attack == AT_FTILT {
        attack = AT_FTHROW;
    } else if attack == AT_UAIR || attack == AT_UTILT {
        attack = AT_UTHROW;
    } else if attack == AT_DAIR || attack == AT_DTILT {
        attack = AT_DTHROW
    } else if attack == AT_NAIR || attack == AT_JAB {
        attack = AT_NTHROW;
    }
    
    if attack == AT_DATTACK {
        attack = AT_FTHROW;
    }
    if attack == AT_NSPECIAL {
        attack = AT_FSPECIAL;
    }
    if item_held == "bumper" || item_held == "boomerang" || item_held == "pop" || item_held == "squeaky_hammer" {
        ow_primid_boomerang_on_floor = false;
        if attack == AT_FSPECIAL {
            attack = AT_FTHROW;
            clear_button_buffer(PC_SPECIAL_PRESSED);
        } else if attack == AT_USPECIAL {
            attack = AT_UTHROW;
            clear_button_buffer(PC_SPECIAL_PRESSED);
        } else if attack == AT_DSPECIAL {
            attack = AT_DTHROW;
            clear_button_buffer(PC_SPECIAL_PRESSED);
        } else if attack == AT_NSPECIAL {
            attack = AT_NTHROW;
            clear_button_buffer(PC_SPECIAL_PRESSED);
        }
    }
    if item_held == "superscope" {
            if attack == AT_FSPECIAL {
                attack = AT_FSPECIAL_2;
            } else if attack == AT_USPECIAL {
                attack = AT_USPECIAL_2;
            } else if attack == AT_DSPECIAL {
                attack = AT_DSPECIAL_2;
            } else if attack == AT_NSPECIAL {
                attack = AT_FSPECIAL_2;
            }
    }
    if item_held == "gust_bellows" {
        if attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_NSPECIAL {
            attack = AT_TAUNT_2;
        }
    }
    if item_held != "pop" {
        if attack == AT_USTRONG {
            attack = AT_UTHROW;
        }
        if attack == AT_FSTRONG {
            attack = AT_FTHROW;
        }
        if attack == AT_DSTRONG {
            attack = AT_DTHROW;
        }
    }
} 
if item_held == "none" && !doing_fs {
    switch attack {
        case AT_DSPECIAL:
            if beamsword_out == false item_pulling = "beamsword";
            else item_pulling = "pop";
            clear_button_buffer(PC_SPECIAL_PRESSED);
            attack = AT_NSPECIAL;
            break;
        case AT_FSPECIAL:
            if superscope_out == false item_pulling = has_rune("M")? "gust_bellows" : "superscope";
            else item_pulling = "pop";
            clear_button_buffer(PC_SPECIAL_PRESSED);
            attack = AT_NSPECIAL;
            break;
        case AT_USPECIAL:
            item_pulling = "bumper";
            clear_button_buffer(PC_SPECIAL_PRESSED);
            attack = AT_NSPECIAL;
            break;
        case AT_NSPECIAL:
            if boomerang_out == false item_pulling = "boomerang";
            else item_pulling = "pop";
            clear_button_buffer(PC_SPECIAL_PRESSED);
            attack = AT_NSPECIAL;
            break;
    }
}

// could I modify the hit player in hit_player.gml?
// absolutely.
// would it be as functional?
// lol no   
// this changes the hitboxes themselves, which inherently makes it work with everything
// of couse this doesn't interact with final smashes because IT SHOULDN'T.
if check_hitboxes {
    var check_windows = (check_scale || check_curry);
    if check_windows var quascale = power(player_scale,0.25);
    var window_scale = 1;
        if check_windows {
            if curry_timer <= 0 && player_scale > 1 {
                window_scale = 1;
            } else if curry_timer > 0 && player_scale <= 1 {
                window_scale = 0.6;
            }
        }
    for (var i = 1; i < 49; i ++) {
        if get_attack_value(i,AG_NUM_WINDOWS) > 0 {
            if check_windows for (var j = 1; j <= get_attack_value(i,AG_NUM_WINDOWS); j ++) {
                reset_window_value(i,j,AG_WINDOW_LENGTH);
                set_window_value(i,j,AG_WINDOW_LENGTH,ceil(window_scale*get_window_value(i,j,AG_WINDOW_LENGTH)*quascale));
            }
            for (var j = 1; j <= get_num_hitboxes(i); j ++) {
                if check_scale {
                    reset_hitbox_value(i,j,HG_HITBOX_X);
                    reset_hitbox_value(i,j,HG_HITBOX_Y);
                    reset_hitbox_value(i,j,HG_WIDTH);
                    reset_hitbox_value(i,j,HG_HEIGHT);
                    reset_hitbox_value(i,j,HG_BASE_KNOCKBACK);
                    reset_hitbox_value(i,j,HG_KNOCKBACK_SCALING);
                    reset_hitbox_value(i,j,HG_BASE_KNOCKBACK);
                    reset_hitbox_value(i,j,HG_WINDOW_CREATION_FRAME);
                    reset_hitbox_value(i,j,HG_LIFETIME);
                    set_hitbox_value(i,j,HG_HITBOX_X,player_scale*get_hitbox_value(i,j,HG_HITBOX_X));
                    set_hitbox_value(i,j,HG_HITBOX_Y,player_scale*get_hitbox_value(i,j,HG_HITBOX_Y));
                    if get_hitbox_value(i,j,HG_HITBOX_TYPE) != 2 {
                        set_hitbox_value(i,j,HG_LIFETIME,ceil(quascale)*get_hitbox_value(i,j,HG_LIFETIME));
                        set_hitbox_value(i,j,HG_WIDTH,player_scale*get_hitbox_value(i,j,HG_WIDTH));
                        set_hitbox_value(i,j,HG_HEIGHT,player_scale*get_hitbox_value(i,j,HG_HEIGHT));
                        set_hitbox_value(i,j,HG_KNOCKBACK_SCALING,quascale*quascale*get_hitbox_value(i,j,HG_KNOCKBACK_SCALING));
                        set_hitbox_value(i,j,HG_BASE_KNOCKBACK,quascale*quascale*get_hitbox_value(i,j,HG_BASE_KNOCKBACK));
                    }
                }
                if check_windows {
                    reset_hitbox_value(i,j,HG_WINDOW_CREATION_FRAME);
                    reset_hitbox_value(i,j,HG_LIFETIME);
                    set_hitbox_value(i,j,HG_WINDOW_CREATION_FRAME,ceil(window_scale*quascale*get_hitbox_value(i,j,HG_WINDOW_CREATION_FRAME)));
                    if get_hitbox_value(i,j,HG_HITBOX_TYPE) != 2 {
                        set_hitbox_value(i,j,HG_LIFETIME,ceil(quascale*window_scale*get_hitbox_value(i,j,HG_LIFETIME)));
                    }
                }
                if check_metal {
                    reset_hitbox_value(i,j,HG_DAMAGE);
                    reset_hitbox_value(i,j,HG_BASE_HITPAUSE);
                    reset_hitbox_value(i,j,HG_EXTRA_HITPAUSE);
                    if metal_timer > 0 { 
                        set_hitbox_value(i,j,HG_DAMAGE,1.3*get_hitbox_value(i,j,HG_DAMAGE));
                        set_hitbox_value(i,j,HG_BASE_HITPAUSE,0.7*get_hitbox_value(i,j,HG_BASE_HITPAUSE));
                        set_hitbox_value(i,j,HG_EXTRA_HITPAUSE,get_hitbox_value(i,j,HG_DAMAGE)*1.2+1.5*get_hitbox_value(i,j,HG_EXTRA_HITPAUSE));
                    }
                }
            }
        }
    }
    check_hitboxes = false;
    check_curry = false;
    check_metal = false;
    check_scale = false;
}
if !joy_pad_idle aiming_dir = joy_dir;
if attack == AT_TAUNT {
    item_pulling = "squeaky_hammer";
    attack = AT_NSPECIAL;
    clear_button_buffer(PC_SPECIAL_PRESSED);
}