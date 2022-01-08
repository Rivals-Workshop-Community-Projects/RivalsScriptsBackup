switch (state){
    case PS_ATTACK_GROUND: //dstrong charge animation
        if (attack == AT_FSTRONG && window == 2) {
            image_index = (floor(strong_charge / 2.5) % 2) + 2;
            create_hitbox( AT_FSTRONG, 6, 0, 0 );
        }
        if (attack == AT_TAUNT && window == 2) {
            if (int_text_pos >= int_total_length) image_index = 2;
            else image_index = (floor(window_timer / 4) % 2) + 2;
        }
    break;
}