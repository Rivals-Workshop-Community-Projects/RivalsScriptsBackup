// attack_update



//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if (attack == AT_JAB){
       was_parried = false;
}


if (attack == AT_NSPECIAL_2 && window_timer = 1){
    detached_cooldown = 58;
}


if (attack == AT_DATTACK){
if (window = 1 || window = 2 && has_hit_player = false){
    if (spr_dir = 1){
     hsp = 5.45;
    }
    
    if (spr_dir = -1){
     hsp = -5.45;
    }
   
}

if (window = 3){
    hsp = 0;
}
}


//dstrong throw
if (attack == AT_DSTRONG && window = 2 && window_timer = 16 && (has_hit_player = false || hit_player_obj.super_armor = true)){
    window = 7;
    window_timer = 0;
}

if (attack == AT_DSTRONG && window = 4 && window_timer = 1){
    vsp = -10;
}

if (attack == AT_DSTRONG && window = 4){
    can_move = 0;

}

if (attack == AT_DSTRONG && window = 5){
    can_move = false;
    vsp = vsp + 0.35;
}

if (attack == AT_DSTRONG && (window = 5 || window = 4)){
    if (hsp > 7){
        hsp = 7;
    }
        if (hsp < -7){
        hsp = -7;
    }
}


if (attack == AT_DSTRONG && (window = 5 || window = 4) && left_down){
    hsp = hsp - dstrong_movement_mult;
}

if (attack == AT_DSTRONG &&  (window = 5 || window = 4) && right_down){
    hsp = hsp + dstrong_movement_mult;
}

if (attack == AT_DSTRONG && has_hit_player){
    if (window == 3 || window == 2){
    with (hit_player_obj){
        if (super_armor = false){
        if(other.spr_dir = 1){
        self.x = other.x + 30;
        self.y = other.y - 6;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 30;
        self.y = other.y - 6;
    }
        }
}

if (window == 3){
    with (hit_player_obj){
        other.grabbed_player_damage = get_player_damage( player );
        if (super_armor = false){
        self.hitstop = 8;
        }
    }
    dstrong_movement_mult = (0.06 * ((grabbed_player_damage * 0.1) + 1));
}

}

if (attack == AT_DSTRONG && window = 4){
    with (hit_player_obj){
        self.hitstop = 8;
        
        if(other.spr_dir = 1){
        self.x = other.x + 20;
        self.y = other.y - 34;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 20;
        self.y = other.y - 34;
    }
    
}
}


if (attack == AT_DSTRONG && window = 5){
    with (hit_player_obj){
    self.hitstop = 8;
    }
    can_fast_fall = 0;
    vsp = vsp + 0.5;
    with (hit_player_obj){
        self.x = other.x;
        self.y = other.y - 50;
    }
}

if (attack == AT_DSTRONG && window = 6 && window_timer = 1){
    hsp = 0;
    with (hit_player_obj){
        if(other.spr_dir = 1){
        self.x = other.x + 20;
        self.y = other.y - 5;
    }
    
        if(other.spr_dir = -1){
        self.x = other.x - 20;
        self.y = other.y - 5;
    }
}
}
}

if (attack == AT_DSTRONG && has_hit_player){
    if (y > room_height){
  with (hit_player_obj){
    self.hitstop = 0;
}
}
}



if (attack == AT_DAIR && taunt_down && window = 5 && window_timer = 4){
    window_timer = 3;
}

if (attack == AT_NSPECIAL && window < 6){
    can_move = false;
    hsp = 0;
}


if (attack == AT_NSPECIAL && has_hit_player){
    if (window = 8){
    if (frog_pausetime < 12){
        frog_pausetime = frog_pausetime + 1;
    } 
    if (frog_pausetime = 1){
        shake_camera(3, 3);
    }
    if (frog_pausetime = 11){
        sound_play( sound_get("bonby_frog_zip"));
    }        
 with (nspecial_grabbedplayer){
    hitstop = 5;
    hitstun = 15;
     can_tech = false;
    hsp = 0;
    vsp = 0;
    old_hsp = 0;
    old_vsp = 0;
    if (point_distance(x, y, other.x, other.y) > 44 && other.frog_pausetime > 11){ 
    var frogdir = point_direction(x, y, other.x, other.y - 12);
    var frogspeed = 30;
    other.frog_movetimer = other.frog_movetimer + 1;
    x += lengthdir_x(frogspeed, frogdir);
    y += lengthdir_y(frogspeed, frogdir);
    }
 }
    }
}


if (attack == AT_NSPECIAL && window = 8){
     if ((point_distance(x, y, hit_player_obj.x, hit_player_obj.y) < 45) || frog_movetimer = 12){ 
         window = 6;
         create_hitbox( AT_NSPECIAL, 2, x, y);
         frog_pausetime = 0;
    with (nspecial_grabbedplayer){ 
            hsp = 0;
    vsp = 0;
    hitstun = 5;
    old_hsp = 0;
    old_vsp = 0;
     }
}
}




if (attack == AT_NSPECIAL && window = 6 && window_timer > 5 && has_hit_player){
    move_cooldown[AT_NSPECIAL] = 48;
    iasa_script();
    frog_movetimer = 0;

}

if (attack == AT_NSPECIAL && window = 7 && has_hit_player){
    iasa_script();
    frog_movetimer = 0;

}

if (attack == AT_NSPECIAL && window = 7 && window_timer = 14){
    if (!has_hit_player){
            move_cooldown[AT_NSPECIAL] = 15;
    }
        if (free = 0){
            set_state(PS_IDLE);
        }
                if (free = 1){
            set_state(PS_IDLE_AIR);
        }
}

if (attack == AT_NSPECIAL && window = 8){
    can_fast_fall = false;
}


if (attack == AT_USPECIAL){
    can_fast_fall = false;
}

if (attack == AT_USPECIAL && window = 3 && window_timer > 6 && window_timer < 14 && free){
    vsp = -1;

}

if (attack == AT_USPECIAL && (window = 2 || window = 3)){
    can_wall_jump = true;
}


if (attack == AT_USPECIAL && has_hit_player && window = 2){
 with (hit_player_obj){
    var uspecialautolinkdir = point_direction(x, y, other.x, other.y - 36);
    var uspecialautolinkspeed = 8;
    hsp = lengthdir_x(uspecialautolinkspeed, uspecialautolinkdir);
    vsp = lengthdir_y(uspecialautolinkspeed, uspecialautolinkdir);
 }
}

if (attack == AT_NAIR && strong_charge > 10 && window = 1){
    vsp = 0;
    can_move = false;
}

if (attack == AT_NAIR && strong_charge > 10 && window = 1 && left_down){
    hsp = -0.5;
}

if (attack == AT_NAIR && strong_charge > 10 && window = 1 && right_down){
    hsp = 0.5;
}

if (attack == AT_NAIR && strong_charge > 10 && window = 1 && !left_down && !right_down){
    hsp = 0;
}

if (attack == AT_NAIR && strong_charge = 40){
    attack_down = false;
    window_timer = 1;
    window = 1;
    set_attack(47);

    strong_charge = 0;
}

if (attack == AT_DSPECIAL && window_timer = 4 && window = 1){
sound_play(sound_get("bonby_dspecial_back2"));
}


if (attack == AT_DSPECIAL && window_timer = 1 && window = 2){
    frog = instance_create( x + (28 * spr_dir), y - 20, "obj_article1" );
    frog_exists = 1;
}




if (attack == AT_DSPECIAL_2 && window_timer = 1 && window = 2){
    spawn_hit_fx(frog.x, frog.y, frog_despawneffect)
    instance_destroy(frog)
    frog_exists = 0;
}

if attack == AT_USPECIAL_GROUND && window != 3 {
        if left_down hsp  -= 0.65;
        if right_down hsp += 0.65;
}

if attack == AT_USPECIAL_GROUND{
    fall_through = false;
}

if (attack == AT_FSPECIAL && window = 2 && special_down){
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);    
   fspecial_charge = fspecial_charge + 1;

}

if (attack == AT_FSPECIAL && ((window = 2 && !special_down) || (fspecial_charge = 44))){
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, (-3 - ((fspecial_charge / 44) * 7)));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 11 + ((fspecial_charge / 44) * 5));
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 11 + ((fspecial_charge / 44) * 5));
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 11 + ((fspecial_charge / 44) * 5));
}

if (attack == AT_FSPECIAL && fspecial_charge > 25){
set_num_hitboxes(AT_FSPECIAL, 4);
}

if (attack == AT_FSPECIAL && fspecial_charge < 26){
set_num_hitboxes(AT_FSPECIAL, 3);
}



if (attack == AT_FSPECIAL && (window = 3 || window = 4)){
    can_wall_jump = true;
}


if (attack == AT_FSPECIAL && window = 3 && window_timer = 3){
    fspecial_charge = 0;

}

if (attack == AT_FSPECIAL && window = 3 && window_timer = 1 && !hitpause){
    spawn_hit_fx(x, y, fspecial_waveeffect)

}


if (attack == AT_DAIR && window == 1){
    clear_button_buffer(PC_ATTACK_PRESSED);
        clear_button_buffer(PC_DOWN_STICK_PRESSED);
    can_jump = true;
}


if (attack == AT_DAIR && has_hit_player && window < 4 && !hitpause){
can_jump = true;
can_shield = true;
}

//Final Smash
if (attack == 49){
    can_fast_fall = false;
    can_move = false;

 
 if (window > 2){
     hsp = 0;
 }
 

 if ((window = 1 || window = 2) && free = 0){
     y = y - 1;
 }

 
if (window < 9){
        initial_invince = 1;
    with (oPlayer){
        if (player != other.player){
            hitpause = true;
            hitstop = 1;
            old_hsp = hsp;
            old_vsp = vsp;

        }
    }
}



if (window > 2 && window < 9)
    with (oPlayer){
        if (player != other.player){
        initial_invince = 1;
        visible = false;
        }
}

if (window = 9)
    with (oPlayer){
        if (player != other.player){
        initial_invince = 0;
        visible = true;
        }
}


 
 
 if (window = 2 && window_timer = 18){
     window = 9;
 }

 
if (window = 3){
    sound_stop(sound_get("bonby_final_dash"))
} 
 
 
 if (window = 9 && window_timer = 1){
    initial_invince = 0;

}

}