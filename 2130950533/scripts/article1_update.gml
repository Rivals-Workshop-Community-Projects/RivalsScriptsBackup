state_timer++;

// Decrement comedy zone counters of each player
with (asset_get("oPlayer")) {
    // But first, set timers to 0 when a player loses a stock or heals
    var previous_stocks = ds_map_find_value(other.player_stock_map, player);
    var current_stocks = get_player_stocks(player);
    ds_map_set(other.player_stock_map, player, current_stocks);
    var previous_damage = ds_map_find_value(other.player_damage_map, player);
    var current_damage = get_player_damage(player);
    ds_map_set(other.player_damage_map, player, current_damage);
    if (previous_stocks != current_stocks)
    {
        ds_map_set(other.healing_counter_map, player, 0);
        ds_map_set(other.burning_counter_map, player, 0);
        ds_map_set(other.final_outline_change_cycle_map, player, true);
    }
    
    ds_map_set(other.final_outline_change_cycle_map, player, false);
    var current_laugh_countdown = ds_map_find_value(other.healing_counter_map, player);
    if (current_laugh_countdown > 0) {
        ds_map_set(other.healing_counter_map, player, --current_laugh_countdown);
        if (current_laugh_countdown == 0) {
            ds_map_set(other.final_outline_change_cycle_map, player, true);
        }
    }
    var current_burn_countdown = ds_map_find_value(other.burning_counter_map, player);
    if (current_burn_countdown > 0) {
        // TODO - add emanating emojis

        // Decrement the coutndown
        ds_map_set(other.burning_counter_map, player, --current_burn_countdown);
        // Deal damage at regular intervals
        if ((current_burn_countdown == (other.laughter_burn_duration / 2))
            || (current_burn_countdown == 0))
        {
            take_damage(player, other.player, 1);
        }
        if (current_burn_countdown == 0) {
            ds_map_set(other.final_outline_change_cycle_map, player, true);
        }
    }
}

if (init == 0) {
    init = 1;
    state = 0;
    state_timer = 0;
    hsp = spr_dir * 4;
    vsp = -8;
    image_index = 0;
}

var airborne_time = 16;
var deployment_time = 8;
var disappear_time = 15;
var curtain_drop_slides = 12;
var curtain_drop_fps = 8;
var curtain_drop_time = curtain_drop_slides * curtain_drop_fps;

switch (state) {
    case 0 :
        // State 0 == airborne
        var index_offset = ((state_timer / 4) % 4);
        image_index = 0 + index_offset;
        if (state_timer >= airborne_time) {
            hsp = 0;
            vsp = 0;
            state = 1;
            state_timer = 0;
        } else {
            vsp += 0.5;
        }
        break;
    case 1 :
        // State 1 == deploying
        // Spend some amount of time setting up
        var index_offset = 0;
        if (state_timer < (deployment_time / 4)) {
            index_offset = 0;
        } else if (state_timer < ((2 * deployment_time) / 4)) {
            index_offset = 1;
        } else if (state_timer < ((3 * deployment_time) / 4)) {
            index_offset = 2;
        } else {
            index_offset = 3;
        }
        image_index = 3 + index_offset;
        if (state_timer >= deployment_time) {
            state = 2;
            state_timer = 0;
        }
        break;
    case 2 :
        // State 2 == deployed
        // The owner deals bonus damage here to enemies
        // Anyone can taunt here for health regen
        
        // The lights turn on when the anyone is on stage
        var lights = false;
        
        // For each character, check if they're in the zone
        with (asset_get("oPlayer")) {
            // The code in this scope is now effectively being executed from the perspective of each player
            if (place_meeting(x, y, other)) {
                // This code will only execute if this player is in the zone
                lights = true;
                if ((state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR)) {
                    // Anyone can heal if they taunt here
                    if ((attack == AT_TAUNT) || (attack == AT_TAUNT_2)) {
                        if (ds_map_find_value(other.healing_counter_map, player) == 0) {
                            // If it was an enemy, heal for more and destroy the zone
                            if (get_player_team(player) != get_player_team(other.player)) {
                                take_damage(player, -1, -8);
                                ds_map_set(other.healing_counter_map, player, other.laughter_heal_cooldown);
                                other.collapse_zone = true;
                            } else {
                                take_damage(player, -1, -2);
                                ds_map_set(other.healing_counter_map, player, other.laughter_heal_cooldown);
                            }
                        }
                        if (other.laughter_audio_countdown == 0) {
                            // The audio is set to last longer than the
                            // cooldown so we can have multiple laughs going
                            // on at the same time.
                            other.laughter_audio_countdown = other.laughter_audio_duration;
                            other.laughter_video_countdown = other.laughter_video_duration;
                        }
                    }
                    
                    // This will happen only if the owner is in the zone
                    if (other.player_id == id) {
                        if ((attack == AT_NSPECIAL) && (window == 2)) {
                            if (joke_progress < joke_limit) {
                                joke_progress++;
                            }
                        }
                    }
                }
            }
        }
        
        if (laughter_audio_countdown > 0) {
            // Start the laugh track
            if (laughter_audio_countdown == laughter_audio_duration) {
                var attempts = 100;
                var laugh_option_upper_bound = 9; // 0 up to this, inclusive
                var laugh_choice = random_func(1, laugh_option_upper_bound, true);
                // Try to pick a different laugh than last time, but don't try too many times
                // (find index returns -1 if not found)
                while ((attempts > 0) && (ds_list_find_index(previous_laughs, laugh_choice) != -1)) {
                    laugh_choice = random_func(1, laugh_option_upper_bound, true);
                    attempts--;
                }
                switch (laugh_choice) {
                case 0 :
                    current_laugh = "laugh_track0";
                    break;
                case 1 :
                    current_laugh = "laugh_track1";
                    break;
                case 2 :
                    current_laugh = "laugh_track2";
                    break;
                case 3 :
                    current_laugh = "laugh_track3";
                    break;
                case 4 :
                    current_laugh = "laugh_track4";
                    break;
                case 5 :
                    current_laugh = "laugh_track5";
                    break;
                case 6 :
                    current_laugh = "laugh_track6";
                    break;
                case 7 :
                    current_laugh = "laugh_track7";
                    break;
                case 8 :
                    current_laugh = "laugh_track8";
                    break;
                case 9 :
                    current_laugh = "laugh_track9";
                    break;
                case 10 :
                    current_laugh = "laugh_track10";
                    break;
                case 11 :
                    current_laugh = "laugh_track11";
                    break;
                case 12 :
                    current_laugh = "laugh_track12";
                    break;
                case 13 :
                    current_laugh = "laugh_track13";
                    break;
                case 14 :
                    current_laugh = "laugh_track14";
                    break;
                default :
                    current_laugh = "laugh_track0";
                    break;
                }
                sound_play(sound_get(current_laugh));
                if (ds_list_size(previous_laughs) <= num_dont_repeat) {
                    ds_list_add(previous_laughs, laugh_choice);
                } else {
                    // Assuming new elements are added to the high end, remove from 0
                    ds_list_delete(previous_laughs, 0);
                    ds_list_add(previous_laughs, laugh_choice);
                }
            }
            laughter_audio_countdown--;
        }
        
        
        bg_offset = 0
        // Choose whether to draw background with lights on or off
        if (lights) {
            bg_offset = 1;
        }
        
        var index_offset = 0;
        // Offset differs with laughter
        if (laughter_video_countdown > 0) {
            index_offset += 8;
            laughter_video_countdown--;
            // Add the wiggle amount
            index_offset += ((state_timer / 4) % 16);
        } else {
            // The wiggle is a smaller offset when not laughing
            index_offset += (state_timer / 8) % 8;
        }
        
        image_index = 8 + index_offset;
        
        // Decide next state
        if (close_zone) {
            state = 3;
            state_timer = 0;
        } else if (collapse_zone) {
            state = 5;
            state_timer = 0;
        }
        
        break;
    case 3 :
        // Closing zone manually
        
        // Spend some amount of time shrinking
        var index_offset = 0;
        if (state_timer < (deployment_time / 4)) {
            index_offset = 0;
        } else if (state_timer < ((2 * deployment_time) / 4)) {
            index_offset = 1;
        } else if (state_timer < ((3 * deployment_time) / 4)) {
            index_offset = 2;
        } else {
            index_offset = 3;
        }
        image_index = 32 + index_offset;
        if (state_timer >= deployment_time) {
            state = 4;
            state_timer = 0;
        }
        break;
    case 4 :
        // Disappear
        var index_offset = 0;
        if (state_timer < (disappear_time / 6)) {
            index_offset = 0;
        } else if (state_timer < ((2 * disappear_time) / 6)) {
            index_offset = 1;
        } else if (state_timer < ((3 * disappear_time) / 6)) {
            index_offset = 2;
        } else if (state_timer < ((4 * disappear_time) / 6)) {
            index_offset = 3;
        } else if (state_timer < ((5 * disappear_time) / 6)) {
            index_offset = 4;
        } else {
            index_offset = 5;
        }
        image_index = 36 + index_offset;
        if (state_timer == (disappear_time - 10)) {
            sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 1.5);
        } else if (state_timer >= disappear_time) {
            instance_destroy(id);
        }
        
        // End healing timer
        with (asset_get("oPlayer")) {
            ds_map_set(other.healing_counter_map, player, 0);
            ds_map_set(other.final_outline_change_cycle_map, player, true);
        }
        break;
    case 5 :
        // Closing zone by enemy taunt
        // End burn timers
        with (asset_get("oPlayer")) {
            ds_map_set(other.burning_counter_map, player, 0);
        }
        
        // Keep border wiggling while curtain is pulled down
        var index_offset = 0;
        if (laughter_video_countdown > 0) {
            index_offset += 8;
            laughter_video_countdown--;
            // Add the wiggle amount
            index_offset += ((state_timer / 4) % 16);
        } else {
            // The wiggle is a smaller offset when not laughing
            index_offset += (state_timer / 8) % 8;
        }
        image_index = 8 + index_offset;
        
        // Pull down the curtain
        bg_offset = 2 + (state_timer / curtain_drop_fps);
        
        // Make a rustling noise a few times
        if ((state_timer == (2 * curtain_drop_fps))
            || (state_timer == (6 * curtain_drop_fps))
            || (state_timer == (10 * curtain_drop_fps)))
        {
            sound_play(asset_get("sfx_birdflap"), false, noone, 1, 1);
        }
        
        if (state_timer >= curtain_drop_time) {
            state = 6;
            state_timer = 0;
        }
        break;
    case 6 :
        // Spend some amount of time shrinking
        var index_offset = 0;
        if (state_timer < (deployment_time / 4)) {
            index_offset = 0;
        } else if (state_timer < ((2 * deployment_time) / 4)) {
            index_offset = 1;
        } else if (state_timer < ((3 * deployment_time) / 4)) {
            index_offset = 2;
        } else {
            index_offset = 3;
        }
        image_index = 42 + index_offset;
        if (state_timer >= deployment_time) {
            state = 7;
            state_timer = 0;
        }
        break;
    case 7 :
        // Disappear
        var index_offset = 0;
        if (state_timer < (disappear_time / 6)) {
            index_offset = 0;
        } else if (state_timer < ((2 * disappear_time) / 6)) {
            index_offset = 1;
        } else if (state_timer < ((3 * disappear_time) / 6)) {
            index_offset = 2;
        } else if (state_timer < ((4 * disappear_time) / 6)) {
            index_offset = 3;
        } else if (state_timer < ((5 * disappear_time) / 6)) {
            index_offset = 4;
        } else {
            index_offset = 5;
        }
        image_index = 46 + index_offset;
        if (state_timer == (disappear_time - 10)) {
            sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 1.5);
        } else if (state_timer >= disappear_time) {
            instance_destroy(id);
        }
        
        // End healing timer
        with (asset_get("oPlayer")) {
            ds_map_set(other.healing_counter_map, player, 0);
            ds_map_set(other.final_outline_change_cycle_map, player, true);
        }
        break;
    default :
        instance_destroy(id);
        break;
}