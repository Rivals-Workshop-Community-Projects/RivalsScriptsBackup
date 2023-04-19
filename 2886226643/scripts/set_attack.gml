//
if (free && up_strong_pressed){
    attack = AT_USTRONG_2;
}

if (attack = AT_USPECIAL && instance_exists(sword)){
    attack = AT_USPECIAL_2;
    uspecial_2_start = false;
    uspecial_jean = create_hitbox(AT_USPECIAL_2, 1, x, y);
}

if (attack = AT_DSPECIAL && instance_exists(sword) && sword.state != 2 && sword_close && !free){
    attack = AT_DSPECIAL_2;
    dspecial_2_damage = sword.portal_size*2;
    dspecial_2_x = sword.x;
    dspecial_2_y = sword.y;
    sword.shoulddie = true;
}

if (attack = AT_TAUNT){
    if (up_down){
        attack = AT_TAUNT_2;
    }
    if (down_down){
        attack = AT_TAUNT_3;
    }
}
