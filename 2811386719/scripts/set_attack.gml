if(attack == AT_NSPECIAL){
    reset_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING);
}

if(attack == AT_FSTRONG){
    set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
}

//change attacks aerial and grounded
if(attack == AT_FSPECIAL and free){
    attack = AT_FSPECIAL_AIR;
    // vsp *= .5
    state = PS_ATTACK_AIR;
}
if(!free and attack == AT_USPECIAL){
    
  attack = AT_USPECIAL_GROUND;
  hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}

if(attack == AT_UTHROW){
  hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}

if(attack == AT_DSPECIAL){
    if(static <= 100){ 
        if(free){
            set_window_value(attack, 2, AG_WINDOW_VSPEED, -4);
        }else{
            set_window_value(attack, 2, AG_WINDOW_VSPEED, -8);
        }
    }
    // else{
    //     attack = AT_DSPECIAL_2;
    //     hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE);
    // }
}
//

if(attack == AT_EXTRA_1){
  
  clear_button_buffer(PC_JUMP_PRESSED);
  can_let_go_jump = false;
  walljump_charge = -1;
  hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}

wave_summoned = false;

// if(instance_exists(right_bubble)){
//   right_bubble.last_hitbox_group = []
// }

//For some reason the hitbox groups are not clearing

// attack_end();