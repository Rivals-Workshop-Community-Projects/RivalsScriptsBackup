//Find what attack Fry is using and how much damage it deals
var hit_damage = my_hitboxID.damage;
var hit_attack = my_hitboxID.attack;

//Grant Fry temperature when landing non-special attacks
if (temperature < temperature_max)
{
    if (hit_attack == AT_NSPECIAL || hit_attack == AT_FSPECIAL || hit_attack == AT_DSPECIAL || hit_attack == AT_USPECIAL || hit_attack == AT_EXTRA_1)
    {
        //do nothing
    } else if (runeK || fry_platinum){ //For runes buddy; if rune K active, double temperature gain
        temperature += hit_damage*2;
    } else {
        temperature += hit_damage;
    }
}

//Dash attack grab code courtesy of Muno
if (my_hitboxID.attack == AT_DATTACK){
    dattack_target = hit_player_obj;
}

if (my_hitboxID.attack == AT_UAIR){
    uair_target = hit_player_obj;
}

//Added - A
/*if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 7) {
    with obj_article1 {
        if hbox == other.my_hitboxID { //If it is the article's hitbox
            state = 2;
        }
    }
    
}

/*if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 8) {
    with obj_article1 {
        if hbox == other.my_hitboxID { //If it is the article's hitbox
            state = 4;
        }
    }
    
}*/
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
    with obj_article2 {
        if hBox == other.my_hitboxID { //If it is the article's hitbox
            hit_timer = hit_timer_max;
        }
    }
    
}

//
if runeG {
    if (hit_attack == AT_NSPECIAL || hit_attack == AT_FSPECIAL || hit_attack == AT_DSPECIAL || hit_attack == AT_USPECIAL || hit_attack == AT_USTRONG || hit_attack == AT_FSTRONG || hit_attack == AT_DSTRONG){

    } else {
        //do nothing
    }
}