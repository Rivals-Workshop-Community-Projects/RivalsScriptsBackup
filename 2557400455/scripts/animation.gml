///


if attacking && attack == AT_NSPECIAL && bulletnum <= 0 && state_timer < 10{
    if gun == 1 {
        if !hitpause && state_timer == 3{
            create_hitbox(AT_TAUNT,3,x,y)
        }
    }
    if gun == 2 {
        image_index = state_timer/2 + 5
        if !hitpause && state_timer == 3{
            create_hitbox(AT_TAUNT,3,x,y)
        }
    }
    if gun == 3 {
        image_index = state_timer/2 + 11
        if !hitpause && state_timer == 3{
        create_hitbox(AT_TAUNT,4,x,y)
        }
    }
}