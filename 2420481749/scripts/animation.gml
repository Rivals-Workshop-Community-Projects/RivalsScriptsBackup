//hi

if (state == PS_RESPAWN)
{
    sprite_index = sprite_get("respawn");
}

if (attack == AT_DATTACK && has_hit && window == 2 && window_timer >= 3 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    image_index = 2;
}

if (attack == AT_FSTRONG && window == 2 && !hitpause && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    if (strong_charge == 0) {
    image_index = 8;}
    else if (strong_charge <= 3) {
    image_index = 9;}
    else if (strong_charge <= 6) {
    image_index = 10;}
    else if (strong_charge <= 12) {
    image_index = 11;}
    else if (strong_charge <= 18) {
    image_index = 12;}
    else if (strong_charge <= 60) {
    image_index = 13;}
}   

if (attack == AT_FAIR && has_hit && window == 2 && window_timer >= 1 && window_timer <= 3 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    image_index = 5;
}

if (state == PS_SPAWN) {
    if (introTimer < 46 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
        depth = -6;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
        depth = -5;
    }
}

if (attack == AT_FSPECIAL_2 && (state == PS_ATTACK_GROUND)) {
    if window == 1
    {
    if thousandfold_intro >= 12
    {
        image_index = 25;
    }
    if thousandfold_intro >= 10 && thousandfold_intro <= 12
    {
        image_index = 25;
    }
    if thousandfold_intro >= 8 && thousandfold_intro <= 10
    {
        image_index = 25;
    }
    if thousandfold_intro >= 6 && thousandfold_intro <= 8
    {
        image_index = 24;
    }
    if thousandfold_intro >= 4 && thousandfold_intro <= 6
    {
        image_index = 24;
    }
    if thousandfold_intro >= 2 && thousandfold_intro <= 4
    {
        image_index = 23;
    }
    if thousandfold_intro <= 2
    {
        image_index = 22;
    }
    }
    
    if window == 2
    {
        if thousandfold_window_timer >= 295
        {
            image_index = 0;
        }
        if thousandfold_window_timer >= 290 && thousandfold_window_timer <= 295
        {
            image_index = 1;
        }
        if thousandfold_window_timer >= 285 && thousandfold_window_timer <= 290 && thousandfold_x <= 10
        {
            image_index = 0;
        }
    }
    
    if window == 4 || window == 5 || window == 6
    {
        if window_timer <= 3
        {
            image_index = 29;
        }
        if window_timer <= 5 && window_timer >= 3
        {
            image_index = 30;
        }
        if window_timer <= 7 && window_timer >= 5
        {
            image_index = 31;
        }
        if window_timer <= 15 && window_timer >= 7
        {
            image_index = 32;
        }
        if window_timer <= 19 && window_timer >= 15
        {
            image_index = 33;
        }
        if window_timer >= 19
        {
            image_index = 34;
        }
    }
    
    if window == 7
    {
        if window_timer <= 3
        {
            image_index = 34;
        }
        if window_timer <= 6 && window_timer >= 3
        {
            image_index = 35;
        }
        if window_timer <= 9 && window_timer >= 6
        {
            image_index = 36;
        }
        if window_timer <= 12 && window_timer >= 9
        {
            image_index = 37;
        }
        if window_timer <= 15 && window_timer >= 12
        {
            image_index = 38;
        }
        if window_timer <= 18 && window_timer >= 15
        {
            image_index = 39;
        }
        if window_timer <= 24 && window_timer >= 18
        {
            image_index = 40;
        }
        if window_timer <= 30 && window_timer >= 24
        {
            image_index = 41;
        }
        if window_timer <= 33 && window_timer >= 30
        {
            image_index = 42;
        }
        if window_timer >= 33
        {
            image_index = 43;
        }
    }
    
    if window == 10
    {
        if window_timer <= 3
        {
            image_index = 11;
        }
        if window_timer >= 3 && window_timer <= 6
        {
            image_index = 12;
        }
        if window_timer >= 6 && window_timer <= 9
        {
            image_index = 13;
        }
        if window_timer >= 9 && window_timer <= 12
        {
            image_index = 14;
        }
        if window_timer >= 12 && window_timer <= 18
        {
            image_index = 15;
        }
        if window_timer >= 18 && window_timer <= 24
        {
            image_index = 16;
        }
        if window_timer >= 24 && window_timer <= 27
        {
            image_index = 17;
        }
        if window_timer >= 27 && window_timer <= 30
        {
            image_index = 18;
        }
        if window_timer >= 30
        {
            image_index = 19;
        }
    }
}   