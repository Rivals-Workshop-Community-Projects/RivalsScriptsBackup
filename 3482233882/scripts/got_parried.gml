
nspec_charge_level = 0;

// Headstompers
if (my_hitboxID.attack == AT_EXTRA_1 && (4 <= my_hitboxID.hbox_num || my_hitboxID.hbox_num <= 6)) {
    was_parried = true;
    my_hitboxID.dodging = false;
    invincible = false;
    if (free) set_state(PS_PRATFALL);
    else set_state(PS_PRATLAND);
}

// Ignition Tank
do_ignite_hbox = 0;

// Fireman's Boots
if (fireboots_lockout < 180 && item_grid[32][4] > 0) {
    fireboots_lockout = 180;
    sound_play(asset_get("sfx_burnend"));
}

// Filial Imprinting
if (filial_aspeed_timer > 0) filial_aspeed_timer = 1;
if (filial_speed_timer > 0) filial_speed_timer = 1;

// Fireworks
if (my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 9) {
    if (hit_player != player) {
        with pHitBox {
            if (orig_player == other.player && attack == AT_EXTRA_1 && hbox_num == 9) {
                was_parried = true;
                reflected = true;
                player = other.hit_player;
                proj_angle = point_direction(x, y, other.x, other.y);
                hbox_timer = 2;
                delay = 0;
                does_not_reflect = true;
                homing = true;
                target_obj = other;
                walls = 1;
                grounds = 1;
            }
        }
        
        if (instance_exists(my_hitboxID.parent_obj)) {
            my_hitboxID.parent_obj.was_parried = true;
            my_hitboxID.parent_obj.parry_owner = hit_player;
            my_hitboxID.target_list = [self];
            my_hitboxID.target_index = 0;
        }
    } else {
        with pHitBox {
            if (orig_player == other.player && attack == AT_EXTRA_1 && hbox_num == 9) {
                homing = false;
                walls = 0;
                grounds = -1;
            }
        }
        
        if (instance_exists(my_hitboxID.parent_obj)) {
            my_hitboxID.parent_obj.was_parried = false;
            my_hitboxID.parent_obj.parry_owner = player;
            my_hitboxID.target_list = [];
        }
    }
    
    
}