//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB && was_parried){
    was_parried = false;
}



//e
if (attack == AT_BAIR){
    if (window == 1){
        if (window_timer == 6){
            hsp = -7*spr_dir;
        }
    }
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
    can_wall_jump = true;
    if spawn_lots_of_stars and window == get_window_index("recovery") {
        if window_time_is(1) {
            var projectile = create_hitbox(AT_NSPECIAL, 1, x, y-10)
            projectile.hsp = 0
            projectile.vsp = 1.5;
        }
    }
}

if (attack == AT_FSPECIAL){
    can_fast_fall = true;
    can_wall_jump = true;
    
    if(window == get_window_index("active_weak", AT_FSPECIAL)) {
        if spawn_lots_of_stars and window_time_is(1) {
            var projectile = create_hitbox(AT_NSPECIAL, 1, x, y-10)
            projectile.hsp = spr_dir*-1.5
            projectile.vsp = 0;
        }

        if up_down {
            vsp -= 0.2
        }
        if down_down {
            vsp += 0.2
        }
        
        if window_time_is(1) {
            vsp = -8
            fspec_hitbox = create_hitbox(attack, 1, x, y)
        }
        var FULL_CHARGE = 60
        hsp = spr_dir * floor(ease_linear(2, 16, window_timer, FULL_CHARGE))
        if(instance_exists(fspec_hitbox)) {
            fspec_hitbox.damage = floor(ease_linear(4, 16, window_timer, FULL_CHARGE))
            fspec_hitbox.kb_value = floor(ease_linear(2, 9, window_timer, FULL_CHARGE))
            fspec_hitbox.kb_scale = 0.1*ease_linear(3, 11, window_timer, FULL_CHARGE)
            fspec_hitbox.hitpause = floor(ease_linear(3, 10, window_timer, FULL_CHARGE))
            if window_timer < 15 {
                fspec_hitbox.sound_effect = asset_get(SFX_BLOW_WEAK2)
            } else if window_timer < 35 {
                fspec_hitbox.sound_effect = asset_get(SFX_BLOW_MEDIUM2)
            } else {
                fspec_hitbox.sound_effect = asset_get(SFX_BLOW_HEAVY2)
            }


            // If hit star, bounce off and quick cancel (not much fun)            
            // var hit_star = false;
            // with pHitBox if player_id == other and attack == AT_NSPECIAL {
            //     if place_meeting(x, y, other.fspec_hitbox) {
            //         hit_star = true;
            //         instance_destroy();
            //     }
            // }
            // if hit_star {
            //     fspec_on_hit_quick_recovery()
            // }
            
        } 
        
        if (jump_pressed) {
            destroy_hitboxes()
            set_window(get_window_index("recovery", AT_FSPECIAL))
            vsp = -8
            hsp = floor(hsp/2)
            djumps += 1    
        }
    }
    if(window == get_window_index("recovery", AT_FSPECIAL)) {
        // This makes endlag not matter
        // if(shield_pressed) {
        //     state = PS_IDLE_AIR
        // }
    }
    
}

if(attack == AT_DATTACK) {
    if(window == get_window_index("startup")){
        dattack_loop = 0;
    }
    if(window == get_window_index("active")) {
        if window_timer == 1 {
            dattack_loop += 1;
        }
        
        if window_timer == 6 {
            sound_play(asset_get(SFX_SWIPE_WEAK1))
        }
        
        if(!attack_down and dattack_loop >= 2){
            set_window(get_window_index("recovery"))
            if has_hit {
                window_timer = 10
            }
        }
    }
}
 

if attack == AT_NSPECIAL {
    if window == get_window_index("active") {
        if window_time_is(1) {
            var projectile = create_hitbox(AT_NSPECIAL, 1, x+spr_dir*50, y-10)
            projectile.hsp = spr_dir*1.5
            projectile.vsp = 0;
        }
    }
} 

if (attack == AT_DSPECIAL){ 
    if (window == get_window_index("jump")){
        cancelled = false;
    }
    if (window == get_window_index("active")){
        if (!free){
            destroy_hitboxes();
            window = get_window_index("land");
            window_timer = 0;
        }
        
        if ((special_pressed || jump_down || attack_pressed) 
            && free 
            && window_timer >= 2 
            && !was_parried
        ){
            spawn_hit_fx( x, y, 15 );
            cancelled = true;
            move_cooldown[AT_DSPECIAL] = 30;
            destroy_hitboxes();
            window = get_window_index("bounce");
            window_timer = 0;
        }
    }
    if (window == get_window_index("bounce_air")){
        if (window_timer == 1){
            if (!hitstop && !hitpause){
                vsp = -9;
            }
        }
    }
    if spawn_lots_of_stars and  window == get_window_index("land") {
        if window_time_is(1) {
            var projectile = create_hitbox(AT_NSPECIAL, 1, x, y-10)
            projectile.hsp = 0
            projectile.vsp = -1.5;
        }
    }
    if (window >= get_window_index("land")){
        move_cooldown[AT_DSPECIAL] = 30;
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause

#define set_window(_new_window) // Version 0
    // Sets the window to the given state and resets the window timer.
    window = _new_window
    window_timer = 0

#define get_window_index // Version 0
    // / get_window_index(window_name, attack_index = attack;)
        var window_name = argument[0];
    var attack_index = argument_count > 1 ? argument[1] : attack;;
        if attack_index == 0 || attack_index == undefined {
            attack_index = get_attack_index_from_filename()
        }
        var window_names = get_window_names(attack_index)
        var index_of_window_name = array_find_index(window_names.a, window_name)
        return index_of_window_name

#define get_window_names // Version 0
    // / get_window_names(_attack = attack)
    var _attack = argument_count > 0 ? argument[0] : attack;

    owner = get_owner()
    if "_window_name_registry" not in owner {
        return []
    }
    if owner._window_name_registry[_attack] == undefined {
        return []
    }
    var names =  owner._window_name_registry[_attack]
    return names

#define get_owner // Version 0
    var levels_searched = 0
    var max_levels_to_search = 10
    var current_level = self
    while levels_searched < max_levels_to_search {
        if current_level.object_index == oPlayer {
            return current_level
        } else {
            current_level = current_level.player
            levels_searched += 1
        }
    }
    prints("ERROR: Couldn't find an owning player for object with index", object_index)

#define prints // Version 0
    // Prints each parameter to console, separated by spaces.
    var _out_string = string(argument[0])
    for (var i=1; i<argument_count; i++) {
        _out_string += " "
        _out_string += string(argument[i])
    }
    print(_out_string)

#define get_attack_index_from_filename // Version 0
    var manually_set_index = variable_instance_get(self, get_attack_index_variable_name())
    if manually_set_index != undefined {
        return manually_set_index
    } else {
         var script_name = get_script_name()
        var attack_index = attack_name_to_index(script_name)
        if attack_index == undefined {
            prints("ERROR: could not find an attack named", script_name, "for easy attack functions.")
            prints("    Please call set_attack_index_for_file(AT_DAIR) for your attack of choice.")
        }
        return attack_index
    }

#define get_attack_index_variable_name // Version 0
    return get_script_name() + "_attack_index"

#define get_script_name // Version 0
    return script_get_name(1)

#define set_attack_index_for_file(attack_index) // Version 0
    variable_instance_set(self, get_attack_index_variable_name(), attack_index)

#define attack_name_to_index(attack_name) // Version 0
    var attack_names_to_indices = {
        "bair" : AT_BAIR,
        "dair" : AT_DAIR,
        "dattack" : AT_DATTACK,
        "dspecial" : AT_DSPECIAL,
        "dspecial_2" : AT_DSPECIAL_2,
        "dspecial_air" : AT_DSPECIAL_AIR,
        "dstrong" : AT_DSTRONG,
        "dstrong_2" : AT_DSTRONG_2,
        "dthrow" : AT_DTHROW,
        "dtilt" : AT_DTILT,
        "extra_1" : AT_EXTRA_1,
        "extra_2" : AT_EXTRA_2,
        "extra_3" : AT_EXTRA_3,
        "fair" : AT_FAIR,
        "fspecial" : AT_FSPECIAL,
        "fspecial_2" : AT_FSPECIAL_2,
        "fspecial_air" : AT_FSPECIAL_AIR,
        "fstrong" : AT_FSTRONG,
        "fstrong2" : AT_FSTRONG_2,
        "fthrow" : AT_FTHROW,
        "ftilt" : AT_FTILT,
        "jab" : AT_JAB,
        "nair" : AT_NAIR,
        "nspecial" : AT_NSPECIAL,
        "nspecial_2" : AT_NSPECIAL_2,
        "nspecial_air" : AT_NSPECIAL_AIR,
        "nthrow" : AT_NTHROW,
        "taunt" : AT_TAUNT,
        "taunt_2" : AT_TAUNT_2,
        "uair" : AT_UAIR,
        "uspecial" : AT_USPECIAL,
        "uspecial2" : AT_USPECIAL_2,
        "ustrong_special_ground" : AT_USPECIAL_GROUND,
        "ustrong" : AT_USTRONG,
        "ustrong_2" : AT_USTRONG_2,
        "uthrow" : AT_UTHROW,
        "utilt" : AT_UTILT,
    }
    var attack_index = variable_instance_get(attack_names_to_indices, attack_name)
    return attack_index

#define fspec_on_hit_quick_recovery // Version 0
    destroy_hitboxes()
    set_window(get_window_index("recovery", AT_FSPECIAL))
    window_timer = 20 // less endlag
    old_hsp = spr_dir*6 // Must be old because hitpause overrides the speed
    hsp = spr_dir*6
    old_vsp = -6
    vsp = -6

#macro SFX_BLOW_HEAVY2 "sfx_blow_heavy2"

#macro SFX_BLOW_MEDIUM2 "sfx_blow_medium2"

#macro SFX_BLOW_WEAK2 "sfx_blow_weak2"

#macro SFX_SWIPE_WEAK1 "sfx_swipe_weak1"
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion