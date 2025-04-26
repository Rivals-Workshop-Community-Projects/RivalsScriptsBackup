has_grab = 0;
grabp = noone;
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);

if free && special_pressed && down_down{
    attack = AT_DSPECIAL_AIR;
}
if attack == AT_DSPECIAL_AIR && window == 3 && window_timer == 12{ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    attack = AT_DSPECIAL;
}

if !free && taunt_pressed && down_down{
    attack = AT_TAUNT_2;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion