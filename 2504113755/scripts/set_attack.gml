user_event(13);




// set_attack.gml
// set_attack.gml

//makes it so you cant attack during those blink frames
if (blink_state_timer >= 0 && blink_state_timer < (blink_start_frame + 7)) {
move_cooldown[attack] = 1; }


//LOL i forgot i did the above lmao

if (attack == AT_NSPECIAL) {
    move_cooldown[AT_NSPECIAL] = 1
    if (can_blink == true && blink_countdown <= 0)
    blink_state_timer = 0
    
}
