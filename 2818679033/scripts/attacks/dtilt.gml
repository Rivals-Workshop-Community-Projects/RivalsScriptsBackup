easy_window("startup",
    AG_WINDOW_LENGTH, 4,
)


easy_window("active",
    AG_WINDOW_LENGTH, 4,
    AG_WINDOW_SFX, asset_get(SFX_SWIPE_WEAK1),
) 

easy_hitbox(1,
    HG_HITBOX_Y, -10,
    HG_HITBOX_X, 50,
    HG_HEIGHT, 20,
    HG_WIDTH, 70,

    HG_DAMAGE, 12,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 0,
    HG_TECHABLE, HITBOX_TECHABLE_NO_TECH,
    HG_HIT_SFX, asset_get(SFX_WAR_HORN),  
    
)

easy_window("recovery",
    AG_WINDOW_LENGTH, 20,
)

// set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
// set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);
// set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

// set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
// set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
// set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("thanks_anguish"));
// set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);
// set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED, -4);

// set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
// set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
// set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 7);
// set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);

// set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
// set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 9);
// set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
// set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED, 6);
// set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);

// set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
// set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 10);
// set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
// set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 6);

// set_num_hitboxes(AT_DTILT,2);

// set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
// set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 23);
// set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -9);
// set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 62);
// set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 20);
// set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
// set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
// set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
// set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 65); 
// set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3);
// set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
// set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .3);
// set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
// set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 15);
// set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
// set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 9);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 20);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -8);
// set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 52);
// set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 20);
// set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
// set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
// set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
// set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 65);
// set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .2);
// set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .2);
// set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
// set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 15);
// set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#macro HITBOX_TECHABLE_NO_TECH 1

#define easy_hitbox // Version 0
    // / easy_hitbox(_hitbox_index, ...)
    var _hitbox_index = argument[0];

    var _attack_index = get_attack_index_from_filename()

    // TODO add named hitbox support here?

    set_num_hitboxes(_attack_index, get_num_hitboxes(_attack_index) + 1)

    var assignments = array_create(100, undefined)
    for(var i=1; i<=argument_count-1; i+=2) {
        var _var_index = argument[i]
        var _value = argument[i+1]
        assignments[_var_index] = _value
    }

    // Required
    var requireds = []

    // New Defaults
    var special_defaults = [
        [HG_HITBOX_TYPE, HITBOX_TYPE_MELEE],
        [HG_PRIORITY, 5], // Middle value
        [HG_LIFETIME, 3], // TODO make remaining duration of window
        [HG_HITBOX_X, 15],
        [HG_HITBOX_Y, -40],
        [HG_WIDTH, 60],
        [HG_HEIGHT, 60],
        [HG_ANGLE, 361],
        [HG_PROJECTILE_HSPEED, 10],
        [HG_DAMAGE, 6], // TODO The rest of these should correlate based on any supplied value
        [HG_BASE_KNOCKBACK, 6],
        [HG_KNOCKBACK_SCALING, 0.35],
        [HG_BASE_HITPAUSE, 6],
        [HG_HITPAUSE_SCALING, 0.25],
    ]

    if assignments[HG_PROJECTILE_SPRITE] != undefined {
        array_push(special_defaults, [HG_PROJECTILE_MASK, assignments[HG_PROJECTILE_SPRITE]])
    }


    // HG_WINDOW, set to "active" window if it exists
    var index_of_window_named_active = get_window_index("active")
    if index_of_window_named_active != -1 {
        array_push(special_defaults, [HG_WINDOW, index_of_window_named_active])
    } else {
        array_push(requireds, HG_WINDOW)
    }


    // If the window will be 1, increase the default creation frame to 1. You can't have a window 1 frame 1 hitbox.
    if (
        assignments[HG_WINDOW] == 1
        or (assignments[HG_WINDOW] == undefined and special_defaults[HG_WINDOW] == 1)
    ) {
        array_push(special_defaults, [HG_WINDOW_CREATION_FRAME, 1])
    }



    // Check requireds
    for (var required_i=0; required_i<array_length(requireds); required_i++) {
        var required = requireds[required_i]
        if assignments[required] == undefined {
            prints("ERROR: easy_hitbox", get_script_name(), _hitbox_index, "didn't set", required)
        } else {
            set_hitbox_value(_attack_index, _hitbox_index, required, assignments[required])
        }
    }


    var default_array = array_create(100, 0)
    for (var default_i=0; default_i<array_length(special_defaults); default_i++) {
        var index = special_defaults[default_i][0]
        var default_value = special_defaults[default_i][1]
        default_array[index] = default_value
    }
    for (var i=0; i<array_length(assignments); i++) {
        if assignments[i] == undefined {
            set_hitbox_value(_attack_index, _hitbox_index, i, default_array[i])
        } else {
            set_hitbox_value(_attack_index, _hitbox_index, i, assignments[i])
        }
    }

#define prints // Version 0
    // Prints each parameter to console, separated by spaces.
    var _out_string = string(argument[0])
    for (var i=1; i<argument_count; i++) {
        _out_string += " "
        _out_string += string(argument[i])
    }
    print(_out_string)

#macro HITBOX_TYPE_MELEE 1

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

#define easy_window // Version 0
    if not variable_instance_exists(self, "easy_attack_called_"+get_script_name()) {
        easy_attack()
    }

    var _attack_index = get_attack_index_from_filename()
    var _window_name
    var _window_index
    if is_string(argument[0]) {
        _window_name = argument[0]
        _window_index = _get_next_open_window_index(_attack_index)
    } else {
        _window_name = undefined
        _window_index = argument[0]
    }

    if _window_name != undefined {
        set_window_name(_attack_index, _window_index, _window_name)
    }

    // Increases AG_NUM_WINDOWS by 1. Can be overwritten by setting it manually last.
    set_attack_value(_attack_index, AG_NUM_WINDOWS, get_attack_value(_attack_index, AG_NUM_WINDOWS) + 1)

    var assignments = array_create(100, undefined)
    for(var i=1; i<=argument_count-2; i+=2) {
        var _var_index = argument[i]
        var _value = argument[i+1]
        assignments[_var_index] = _value
    }


    // If named charge, set as the default charge window.
    if _window_name == "charge"
        and string_pos("special", get_script_name()) == 0
    {
        if get_attack_value(_attack_index, AG_STRONG_CHARGE_WINDOW) == 0 {
            set_attack_value(_attack_index, AG_STRONG_CHARGE_WINDOW, _window_index)
        }
    }


    // Required
    var requireds = [
        AG_WINDOW_LENGTH
    ]
    // New Defaults
    var special_defaults = [
        [AG_WINDOW_HAS_WHIFFLAG, get_default_whifflag(_window_name)]
    ]


    if assignments[AG_WINDOW_SFX] != undefined {
        array_push(special_defaults, [AG_WINDOW_HAS_SFX, true])
    }
    if (
        assignments[AG_WINDOW_CUSTOM_AIR_FRICTION] != undefined
        or assignments[AG_WINDOW_CUSTOM_GROUND_FRICTION] != undefined
    ) {
        array_push(special_defaults, [AG_WINDOW_HAS_CUSTOM_FRICTION, true])
    }




    // Set defaults
    if _window_name != undefined {
        var get_frames_script_name = "_get_"+_window_name+"_frames"
        if script_exists(get_frames_script_name) {
            array_push(special_defaults, [AG_WINDOW_ANIM_FRAMES, script_execute(script_get_index(get_frames_script_name))])
        } else {
            array_push(requireds, AG_WINDOW_ANIM_FRAMES)
        }

        var get_frame_start_script_name = "_get_"+_window_name+"_frame_start"
        if script_exists(get_frames_script_name) {
            array_push(special_defaults, [AG_WINDOW_ANIM_FRAME_START, script_execute(script_get_index(get_frame_start_script_name))])
        } else if _window_index > 1 {
            array_push(requireds, AG_WINDOW_ANIM_FRAME_START)
        }

    }

    // Check requireds
    for (var required_i=0; required_i<array_length(requireds); required_i++) {
        var required = requireds[required_i]
        if assignments[required] == undefined {
            prints("ERROR: easy_window", get_script_name(), _window_name, _window_index, "didn't set", get_ag_window_name_from_index(required))
        } else {
            set_window_value(_attack_index, _window_index, required, assignments[required])
        }
    }

    // Add new defaults
    var default_array = array_create(100, 0)
    for (var default_i=0; default_i<array_length(special_defaults); default_i++) {
        var index = special_defaults[default_i][0]
        var default_value = special_defaults[default_i][1]
        default_array[index] = default_value
    }

    for (var i=0; i<array_length(assignments); i++) {
        if assignments[i] == undefined {
            set_window_value(_attack_index, _window_index, i, default_array[i])
        } else {
            set_window_value(_attack_index, _window_index, i, assignments[i])
        }
    }

#define easy_attack // Version 0
    // This is called automatically by easy_window if it hadn't been already.
    var _attack_index = get_attack_index_from_filename()
    variable_instance_set(self, "easy_attack_called_"+get_script_name(), true)

    var assignments = array_create(100, undefined)
    for(var i=0; i<=argument_count-1; i+=2) {
        var _var_index = argument[i]
        var _value = argument[i+1]
        assignments[_var_index] = _value
    }

    // Special Defaults
    var special_defaults = [
        [AG_CATEGORY, get_default_ag_category()],
        [AG_LANDING_LAG, 4],
        [AG_HAS_LANDING_LAG, true],
    ]
    // Add sprite defaults to special defaults if the default exists
    var sprite_defaults = [
        [AG_SPRITE, get_script_name()],
        [AG_HURTBOX_SPRITE, get_script_name()+"_hurt"],
        [AG_AIR_SPRITE, get_script_name()+"_air"],
        [AG_HURTBOX_AIR_SPRITE, get_script_name()+"_air_hurt"],
    ]
    var SPRITE_NOT_FOUND = sprite_get("kljgalksjglkvoaiwemnfnoiuaganio");
    for (var default_i=0; default_i<array_length(sprite_defaults); default_i++) {
        var index = sprite_defaults[default_i][0]
        var default_sprite_name = sprite_defaults[default_i][1]
        var sprite = sprite_get(default_sprite_name)

        if sprite != SPRITE_NOT_FOUND {
            array_push(special_defaults, [index, sprite])
        }
    }


    var default_array = array_create(100, 0)
    for (var default_i=0; default_i<array_length(special_defaults); default_i++) {
        var index = special_defaults[default_i][0]
        var default_value = special_defaults[default_i][1]
        default_array[index] = default_value
    }
    for (var i=0; i<array_length(assignments); i++) {
        if assignments[i] == undefined {
            set_attack_value(_attack_index, i, default_array[i])
        } else {
            set_attack_value(_attack_index, i, assignments[i])
        }
    }

#define get_default_ag_category // Version 0
    if is_air_attack_script() {
        return ATTACK_CATEGORY_AIR;
    } else {
        return ATTACK_CATEGORY_GROUND;
    }

#macro ATTACK_CATEGORY_GROUND 0

#macro ATTACK_CATEGORY_AIR 1

#define is_air_attack_script // Version 0
    var script_name = get_script_name()
    var air_string_position = string_pos("air", script_name)
    return air_string_position == 2 // Where air is in nair, dair, fair, etc

#define _get_next_open_window_index(_attack_index) // Version 0
    // Look at each window in the attack until you find one with a lifetime of 0. I think its safe to assume no window will have a lifetime of 0?
    var current_window = 1
    var max_windows = 20
    while current_window < max_windows {
        var window_length = get_window_value(_attack_index, current_window, AG_WINDOW_LENGTH)
        if window_length == 0 {
            return current_window
        }
        current_window += 1
    }
    prints("ERROR: _get_next_open_window_index found no open windows for", _attack_index, "in", get_script_name())

#define get_default_whifflag(_window_name) // Version 0
    if _window_name == "recovery" {
        return 1
    } else {
        return 0
    }

#define set_window_name(_attack, window_index, name) // Version 0
    owner = get_owner()
    if "_window_name_registry" not in owner {
        owner._window_name_registry = array_create(50, undefined)
    }

    if owner._window_name_registry[_attack] == undefined {
        owner._window_name_registry[_attack] = list_create(window_index, undefined)
    }

    list_set(owner._window_name_registry[_attack], window_index, name)

#define list_create // Version 0
    // / list_create(size, val = 0)
    var size = argument[0];
    var val = argument_count > 1 ? argument[1] : 0;
    // Create a list of the default value with the given size.
        var values = array_create(size, val)
        var array = _list_reallocate_array(values, size)
        return {
            size:size,
            a:array
        }

#define _list_reallocate_array(array, size) // Version 0
    // Allocates space for the array with some extra padding
    if size < 9 {
        var padding = 3
    } else {
        var padding = 6
    }
    var alloc_size = size + (size >> 3) + padding
    var new_array = array_create(alloc_size, undefined)
    array_copy(new_array, 0, array, 0, alloc_size)
    return new_array

#define list_set(lst, index, value) // Version 0
    // Sets the given index to the value. Empty spaces created are filled with undefined.
    var array = lst.a
    array = _list_update_size(array, max(lst.size, index+1))

    array[index] = value
    lst.a = array
    lst.size = index+1

#define _list_update_size(array, new_size) // Version 0
    // Reallocates space if the new size is too large or much smaller than current allocated space.
    var current_size = array_length(array)

    if new_size < current_size/2 or new_size > current_size {
        return _list_reallocate_array(array, new_size)
    } else {
        return array
    }

#define get_ag_window_name_from_index(index) // Version 0
    // / get_ag_window_name_from_index(window_name, ?attack_index = undefined)
    var index_to_name = array_create(70)
    index_to_name[AG_WINDOW_TYPE] = "AG_WINDOW_TYPE"
    index_to_name[AG_WINDOW_LENGTH] = "AG_WINDOW_LENGTH"
    index_to_name[AG_WINDOW_ANIM_FRAMES] = "AG_WINDOW_ANIM_FRAMES"
    index_to_name[AG_WINDOW_ANIM_FRAME_START] = "AG_WINDOW_ANIM_FRAME_START"
    index_to_name[AG_WINDOW_HSPEED] = "AG_WINDOW_HSPEED"
    index_to_name[AG_WINDOW_VSPEED] = "AG_WINDOW_VSPEED"
    index_to_name[AG_WINDOW_HSPEED_TYPE] = "AG_WINDOW_HSPEED_TYPE"
    index_to_name[AG_WINDOW_VSPEED_TYPE] = "AG_WINDOW_VSPEED_TYPE"
    index_to_name[AG_WINDOW_HAS_CUSTOM_FRICTION] = "AG_WINDOW_HAS_CUSTOM_FRICTION"
    index_to_name[AG_WINDOW_CUSTOM_AIR_FRICTION] = "AG_WINDOW_CUSTOM_AIR_FRICTION"
    index_to_name[AG_WINDOW_CUSTOM_GROUND_FRICTION] = "AG_WINDOW_CUSTOM_GROUND_FRICTION"
    index_to_name[AG_WINDOW_CUSTOM_GRAVITY] = "AG_WINDOW_CUSTOM_GRAVITY"
    index_to_name[AG_WINDOW_HAS_WHIFFLAG] = "AG_WINDOW_HAS_WHIFFLAG"
    index_to_name[AG_WINDOW_INVINCIBILITY] = "AG_WINDOW_INVINCIBILITY"
    index_to_name[AG_WINDOW_HITPAUSE_FRAME] = "AG_WINDOW_HITPAUSE_FRAME"
    index_to_name[AG_WINDOW_CANCEL_TYPE] = "AG_WINDOW_CANCEL_TYPE"
    index_to_name[AG_WINDOW_CANCEL_FRAME] = "AG_WINDOW_CANCEL_FRAME"
    index_to_name[AG_WINDOW_HAS_SFX] = "AG_WINDOW_HAS_SFX"
    index_to_name[AG_WINDOW_SFX] = "AG_WINDOW_SFX"
    index_to_name[AG_WINDOW_SFX_FRAME] = "AG_WINDOW_SFX_FRAME"
    index_to_name[AG_WINDOW_GOTO] = "AG_WINDOW_GOTO"

    return index_to_name[index]

#define script_exists(script_name) // Version 0
    var script_index = script_get_index(script_name)
    return script_index >= 0

#macro SFX_SWIPE_WEAK1 "sfx_swipe_weak1"

#macro SFX_WAR_HORN "sfx_war_horn"

#macro STARTUP_FRAMES 2
#define _get_startup_frames()
    return STARTUP_FRAMES
#macro STARTUP_FRAME_START 0
#define _get_startup_frame_start()
    return STARTUP_FRAME_START

#macro ACTIVE_FRAMES 2
#define _get_active_frames()
    return ACTIVE_FRAMES
#macro ACTIVE_FRAME_START 2
#define _get_active_frame_start()
    return ACTIVE_FRAME_START

#macro RECOVERY_FRAMES 2
#define _get_recovery_frames()
    return RECOVERY_FRAMES
#macro RECOVERY_FRAME_START 4
#define _get_recovery_frame_start()
    return RECOVERY_FRAME_START
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion