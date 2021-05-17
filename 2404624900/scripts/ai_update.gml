
xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);


//parry punish
if(invincible && can_strong && xdist < 100){
    set_attack(AT_FSTRONG);
}


if (ai_target.state == PS_RESPAWN && !free){
    jump_pressed = false
    attack_pressed = false
    special_pressed = false
    funny_walkturn *= -1;
    switch(funny_walkturn){
        case 1:
            left_down = true
            break;
        case -1:
            right_down = true;
            break;
    }
}

//hitfalling
ai_should_hitfall = (collision_line(x,y,x,y + 120,asset_get("par_block"),false,true) || collision_line(x,y,x,y + 120,asset_get("par_jumpthrough"),false,true)) && (hitpause && state_cat != SC_HITSTUN) && can_fast_fall && free;

if ai_should_hitfall {
    down_hard_pressed = true;
}

//CPU MAY CHARGE ITS STRONG ATTACKS
if(attack==AT_DSTRONG)||(attack==AT_FSTRONG)||(attack==AT_USTRONG){
    if(xdist>55 && window<3)&&(!hitstun){
        strong_down=true;
    }else{
        strong_down=false;
    }
}

if(attack==AT_FSTRONG){
    if(xdist>100 && window<3)&&(!hitstun){
        strong_down=true;
    }else{
        strong_down=false;
    }
}

if(attack==AT_USTRONG){
    if(xdist>30 && window<2 )&&(!hitstun){
        strong_down=true;
    }else{
        strong_down=false;
    }
}