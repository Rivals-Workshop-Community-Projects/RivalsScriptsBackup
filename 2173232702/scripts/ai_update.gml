if (attack = AT_NSPECIAL  && window == 2 && window_timer > 18){
    var spell = random_func_2(10, 4, true);
    switch (spell){
        case 0: special_pressed = true;
        break;
        case 1: right_pressed = true;
        break;
        case 2: down_pressed = true;
        break;
        case 3: left_pressed = true;
        break;
        case 4: up_pressed = true;
        break;
    }
}