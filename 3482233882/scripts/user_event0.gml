// ITEM INIT
// Called whenever an item is added to Commando's inventory or needs to perform a stat update.

var is_valid_index = (new_item_id == clamp(new_item_id, 0, array_length(item_grid)-1));

// If new_item_id does not represent a valid item, perform failsafe updates and exit
// (Alternatively, if new_item_id == noone, this can be used as a manual refresh for general stats)
if (!is_valid_index) {
    if (new_item_id != noone) {
        print_debug("user_event0 error: bad new_item_id value "  + string(new_item_id) + " for user_event(0) call. Using failsafe updates");
    }
    update_attack_speed();
    update_horizontal_movement();
    update_vertical_movement();
    assess_critical_active();
    exit;
}

// Crit items
if (item_grid[new_item_id][2] == 4 || item_grid[new_item_id][3] == 4) {
    if (item_grid[new_item_id][4] > 0) critical_active = 1;
    else assess_critical_active();
}

// Burn items
if (new_item_id != 25 && (item_grid[new_item_id][2] == 9 || item_grid[new_item_id][3] == 9)) {
    burn_items_held = 0;
    burn_uncommon_cache = [];
    for (var i = 0; i < array_length(burn_item_cache); i++) {
        var num_held = item_grid[burn_item_cache[i]][4]
        burn_items_held += num_held;
        if (item_grid[burn_item_cache[i]][1] == 1) {
            if (uncommon_limit - num_held > 0) array_push(burn_uncommon_cache, burn_item_cache[i]);
        }
    }
}

// Switch statement uses hard-coded IDs since RCF constants aren't real constants on dev builds.
switch new_item_id {
    
    case 1: // Warbanner
        if (item_grid[1][4] == 0) warbanner_obj = noone; // this will prompt the warbanner to clean itself up
        else far_side_attacks[3] = AT_TAUNT; // for AI
        update_horizontal_movement();
        update_attack_speed();
        set_taunt_indices();
        break;
    
    case 5: // Paul's Goat Hoof
    case 6: // Energy Drink
    case 7: // Arcane Blades
        update_horizontal_movement();
        break;
    
    case 8: // Hermit Scarf
        dodge_duration_add = 0 + 2*item_grid[8][4]*nectar_mult; // mirrored under growth nectar
        break;
    
    case 13: // Soldier's Syringe
        update_attack_speed();
        break;
    
    case 14: // Mocha
        update_attack_speed();
        update_horizontal_movement();
        break;
    
    case 17: // Tough Times
        update_knockback_adj();
        break;
    
    case 20: // Ukelele
        ustrong_index = (item_grid[20][4] > 0) ? AT_USTRONG_2 : AT_USTRONG;
        set_taunt_indices();
        break;
    
    case 21: // Hopoo Feather
        max_djumps = max_djumps_base + item_grid[21][4];
        break;
    
    case 22: // Guardian Heart
        heart_barrier_max = 0 + 5*item_grid[22][4];
        break;
    
    case 23: // Locked Jewel
        update_horizontal_movement();
        break;
    
    /*
    case 25: // Ignition Tank
        if (!ignition_odds_applied) {
            buff_synergy_odds(ITP_BURNING, ITEM_IGNITION);
            ignition_odds_applied = true;
        }
        break;
    */
    
    case 26: // Predatory Instincts
        update_attack_speed();
        break;
        
    case 28: // ATG Mk I
    case 33: // ATG Mk II
        atg_freq = item_grid[28][4] + 3*item_grid[33][4];
        break;
    
    case 29: // Rusty Jetpack
        update_vertical_movement();
        break;
    
    case 30: // Filial Imprinting
        update_attack_speed();
        update_horizontal_movement();
        break;
    
    case 31: // Ancient Scepter
        update_attack_speed();
        break;
    
    case 32: // Fireman's Boots
        fireboots_lockout = 0;
        break;
    
    case 37: // Photon Jetpack
        pjetpack_fuel_max = 30 + 45*item_grid[37][4];
        break;
    
    case 38: // H3AD-5T V2
        update_vertical_movement();
        break;
    
    case 39: // Hardlight Afterburner
        set_num_hitboxes(AT_FSPECIAL, (item_grid[39][4] > 0)); // enable fspec hitbox if afterburner is present
        fspec_air_max_uses = 1 + item_grid[39][4];
        break;
    
    case 42: // Aegis
        aegis_ratio = 0.5 + 0.25*item_grid[42][4];
        if (!aegis_odds_applied) {
            //buff_synergy_odds(ITP_HEALING, ITEM_AEGIS);
            aegis_odds_applied = true;
        }
        break;
        
    case 43: // Brilliant Behemoth
        if (!behemoth_odds_applied) {
            buff_synergy_odds(7, 43);
            behemoth_odds_applied = true;
        }
        break;
        
    case 46: // 57 Leaf Clover
        clover_active = item_grid[46][4];
    
    case 49: // Filial Imprinting
        if (filial_num_spawned < item_grid[49][4]) {
            var critter = instance_create(x-((54+6*filial_num_spawned)*spr_dir), y-60, "obj_article3");
            critter.state = 40;
            critter.spawn_num = item_grid[49][4];
        }
        filial_num_spawned = item_grid[49][4];
        update_attack_speed();
        update_horizontal_movement();
        break;
    
    case 50: // Energy Cell
        if (item_grid[50][4] == 0) var new_cell_stacks = 0;
        else {
            var div_scale = 1 + (item_grid[50][4]-1)*0.3;
            var new_cell_stacks = round(get_player_damage(player) * div_scale / 36);
            // https://www.desmos.com/calculator/ppoyduzgni
        }
        if (new_cell_stacks != cell_active_stacks) {
            if (new_cell_stacks > cell_active_stacks) {
                sound_play(asset_get("sfx_boss_shine"));
                flash_timer = 15;
        		flash_timer_max = 18;
        		flash_color = make_color_rgb(140, 200, 250);
            }
            cell_active_stacks = new_cell_stacks;
            update_attack_speed();
        }
        break;
        
    case 51: // Shipping Request Forms
        var odds = [25,50,75,100];
        trishop_odds = odds[item_grid[51][4]]
        break;
        
    // Fire Shield moved to bottom for a small control flow improvement
    
    case 53: // Trophy Hunter's Tricorn
        fstrong_index = item_grid[53][4] > 0 ? AT_FSTRONG_2 : AT_FSTRONG;
        break;
    
    case 55: // Fireworks
        fireworks_freq = item_grid[55][4] * 3;
        // Grant hit lockout to Classified Access Codes
        if (fireworks_freq > 0) set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 12);
        else set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 0);
        break;
        
    case 56: // Snake Eyes
        if (item_grid[56][4] <= 0) snakeeyes_active = 0;
        break;
    
    case 58: // Growth Nectar
        nectar_mult = 1 + item_grid[58][4];
        update_attack_speed();
        update_horizontal_movement();
        // No common items affect vertical movement
        dodge_duration_add = 0 + 2*item_grid[8][4]*nectar_mult;
        // No break - continue to Fire Shield
    
    case 52: // Fire Shield
        if (item_grid[52][4] == 0) fshield_damage = 0;
        else fshield_damage = 4 + 2*item_grid[52][4]*nectar_mult;
        break;
        
    case 59: // Shaped Glass
        shaped_glass_active = (item_grid[59][4] > 0);
        update_knockback_adj();
        break;
        
    case 60: // ICBM
        icbm_active = (item_grid[60][4] > 0);
        set_hitbox_value(AT_EXTRA_1, 7, 83, icbm_active); // cere dagger
        set_hitbox_value(AT_EXTRA_1, 8, 83, icbm_active); // atg
        set_hitbox_value(AT_EXTRA_1, 9, 83, icbm_active); // fireworks
        set_hitbox_value(AT_EXTRA_1, 12, 83, icbm_active); // plasma shrimp
        break;
    
    case 64: // Captain's Brooch
        dspec_cooldown_hits = 0;
        break;
    
}



#define assess_critical_active

    critical_active = false;
        var i = 0;
        while (!critical_active && i < array_length(item_grid)) {
            if (item_grid[i][2] == 4 && item_grid[i][4] > 0) critical_active = true;
            i++;
        }
    
    return;

#define update_attack_speed
    
    attack_speed = 1
                 + ((commando_warbanner_strength > 0) ? (0 + 2*commando_warbanner_strength) : 0) // Warbanner
                 + (2 * item_grid[13][4] * nectar_mult) // Soldier's Syringe
                 + (1 * item_grid[14][4] * nectar_mult) // Mocha
                 + ((instincts_timer > 0) ? (1 + 2*item_grid[26][4]) : 0) // Predatory Instincts
                 + ((filial_aspeed_timer > 0) ? 3 : 0) // Filial Imprinting
                 + cell_active_stacks // Energy Cell
                 + ((spark_buff_timer > 0) ? 3 * item_grid[30][4] : 0) // Legendary Spark
                 + item_grid[31][4]
    return;
    
#define update_horizontal_movement
    
    move_speed = ((commando_warbanner_strength > 0) ? (0 + 1*commando_warbanner_strength) : 0) // Warbanner
               + (1 * item_grid[5][4] * nectar_mult) // Paul's Goat Hoof
               + (get_player_damage(player) >= 100 ? 1.5 * item_grid[7][4] * nectar_mult : 0) // Arcane Blades
               + (0.5 * item_grid[14][4] * nectar_mult) // Mocha
               + ((jewel_barrier_timer > 0) ? 2 * item_grid[23][4] : 0) // Locked Jewel
               + ((filial_speed_timer > 0) ? 2 : 0) // Filial Imprinting
               + ((spark_buff_timer > 0) ? 2 * item_grid[30][4] : 0) // Legendary Spark
    
    walk_anim_speed = walk_anim_speed_base + (0.04 * move_speed);
    dash_anim_speed = dash_anim_speed_base + (0.03 * move_speed) + (0.015 * item_grid[6][4] * nectar_mult);
    
    walk_speed = walk_speed_base + (1 * move_speed);
    walk_accel = walk_accel_base + (0.08 * move_speed);
    dash_speed = dash_speed_base + (0.8 * move_speed) + (1 * item_grid[6][4] * nectar_mult);
    initial_dash_speed = initial_dash_speed_base + (1 * move_speed) + (1.5 * item_grid[6][4] * nectar_mult);
    moonwalk_accel = moonwalk_accel_base + (0.075 * move_speed) + (0.1 * item_grid[6][4] * nectar_mult);
    
    max_jump_hsp = max_jump_hsp_base + (1 * move_speed);
    air_max_speed = air_max_speed_base + (0.5 * move_speed);
    
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10 + (0.5 * move_speed));
    set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 13 + (0.65 * move_speed));
    set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -5 + (-0.25 * move_speed));

#define update_vertical_movement
    
    jump_speed = jump_speed_base + clamp((1 * item_grid[29][4]) + (4 * item_grid[38][4]), 0, 8);
    // short_hop_speed = base_short_hop_speed; // actually let's not
    djump_speed = djump_speed_base + (0.5 * item_grid[29][4]);
    walljump_vsp = walljump_vsp_base + (1 * item_grid[29][4]);
    
    max_fall = max_fall_base + (-0.5 * item_grid[29][4]);
    fast_fall = fast_fall_base + (item_grid[38][4] > 0 ? 4 : 0);
    gravity_speed = gravity_speed_base - (-0.05 * (item_grid[29][4] > 0));

#define update_knockback_adj
    // Tough Times ignores Growth Nectar, given the sheer power of kb adj scaling
    knockback_adj = (item_grid[17][4] > 0) ? power(0.9, item_grid[17][4]) : knockback_adj_base;
    if (item_grid[59][4] > 0) knockback_adj += 0.3;
    
#define set_taunt_indices
    utaunt_index = (item_grid[20][4] > 0) ? AT_TAUNT_2 : AT_TAUNT;
    ntaunt_index = (item_grid[1][4] > 0) ? AT_EXTRA_2 : utaunt_index;
    // dtaunt is constant and set in init.gml

// note: deprecated.
// source_id is the id of the item doing the buffing, which is excluded.
// rare items are excluded on account of items like Dios existing.
#define buff_synergy_odds(item_type, source_id)
    for (var rty = 0; rty <= 1; rty++) {
        var arr_len = array_length(p_item_ids[rty]);
        for (var i = 0; i < arr_len; i++) {
            var iid = p_item_ids[rty][i];
            var type1 = item_grid[iid][2];
            var type2 = item_grid[iid][3];
            if ((type1 == item_type || type2 == item_type) && iid != source_id && p_item_values[@ rty][@ i] < 10) {
                var quantity = p_item_remaining[rty][i];
                p_item_values[@ rty][@ i] = 10;
                p_item_weights[@ rty][@ i] = quantity * 10;
            }
        }
    }