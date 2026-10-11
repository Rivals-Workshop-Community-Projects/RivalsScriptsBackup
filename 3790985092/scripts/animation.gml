switch (attack) {
    case AT_FTILT:
        //if (window == 1 && window_time_is(get_window_value(attack, window, AG_WINDOW_LENGTH) ) && attack_down && state_timer < 69) {
            //image_index = 3;
        //}
    break;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion