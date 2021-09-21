//set_attack

if attack == AT_DSPECIAL && move_cooldown[AT_DSPECIAL] == 0 {
    attack = AT_DTHROW
    if orbitar_id != noone && instance_exists(orbitar_id) && move_cooldown[AT_DTHROW] == 0 {
        attack = AT_DSPECIAL_2;
    }
}

if attack == AT_DTHROW && instance_exists(orbitar_id) && move_cooldown[AT_DTHROW] == 0 {
    attack = AT_DSPECIAL_2;
}

if (attack == AT_FAIR || attack == AT_BAIR) && (right_strong_pressed || left_strong_pressed) && has_rune("N") { //FSTRONG has super armour and can be used in the air.
    attack = AT_FSTRONG;
    spr_dir = right_strong_pressed*2 - 1;
}

height_timer = 0;

//munophone
muno_event_type = 2;
if echo || (!echo && !pit_codec_handler.active) user_event(14);