if (player_id.is_morph == false && !free && (player_id.beam_level == 1 || player_id.beam_level == 2 || player_id.beam_level == 3)){destroyed = true}
if (player_id.is_morph == false && !free && (attack == AT_DTHROW || attack == AT_FTHROW)){destroyed = true}
if(attack == AT_FSTRONG_2 && destroy_timer >= 78){
    destroyed = true;
    destroy_timer = 0;
}
if(attack == AT_USPECIAL_GROUND && destroy_timer >= 48){
    destroyed = true;
    destroy_timer = 0;
}

if(attack == AT_FSTRONG_2 || attack == AT_USPECIAL_GROUND){
    destroy_timer++;
}

