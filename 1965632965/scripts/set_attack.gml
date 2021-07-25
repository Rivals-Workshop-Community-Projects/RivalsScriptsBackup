if(attack == AT_NSPECIAL){
    if spr_dir{
    			bash_angle = 0;
    		}else{
    			bash_angle = 180;
    		}
}

if(attack == AT_NSPECIAL and gun == 1){
    attack = AT_NSPECIAL_SHOT;
}else if(attack == AT_NSPECIAL and gun == 2){
    attack = AT_NSPECIAL_SHELL;
}else if(attack == AT_NSPECIAL and gun == 3){
    attack = AT_NSPECIAL_SNIPE;
}else if(attack == AT_NSPECIAL and gun == 4){
    attack = AT_NSPECIAL_WIND;
}else if(attack == AT_NSPECIAL and gun == 5){
    attack = AT_NSPECIAL_GRENADE;
}

// if(strong_pressed and free){
//     attack = AT_DSTRONG_AIR;
// }

if(attack == AT_TAUNT){
    if(spr_dir){
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("taunt"));
    }else{
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_reverse"));
set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("taunt_reverse"));
    }
}

if(table != noone and attack == AT_FSPECIAL and not runeN){
    attack = AT_FSPECIAL_AIR;
}else if(tablecount < 3 and attack == AT_FSPECIAL and runeN){
    
}else if(table != noone and attack == AT_FSPECIAL){
    attack = AT_FSPECIAL_AIR;
}

if runeG{
    
}else if(free and attack == AT_FSPECIAL){
    attack = AT_FSPECIAL_AIR;
}