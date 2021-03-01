//coyote time logic
switch (state) {
    case PS_WALK:
        peacock_coyote_timer++;
    break;
    case PS_IDLE_AIR:
        if (peacock_coyote_timer > 60 && state_timer <= 1 && prev_state == PS_WALK) {
            set_state(PS_ATTACK_AIR);
            set_attack(AT_EXTRA_3);
            window_timer = peacock_coyote_timer mod 60;
            sprite_index = sprite_get("walk");
            image_index = window_timer / 18;
        }
    break;
    
    default:
        peacock_coyote_timer = 0;
    break;
}