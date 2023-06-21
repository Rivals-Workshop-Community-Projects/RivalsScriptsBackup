//
// if intro_timer < 108{
//     intro_timer += 
//     /*if state != PS_CROUCH{
//         set_state = PS_CROUCH
//     }*/
// }

if free == false{
    hive_air = 0;
}

if attack == AT_NSPECIAL and window == 2 and window_timer == 1 and hive_count > 0 and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND){
    sound_play(sound_get("hive_bees"))
}

if attack == AT_NSPECIAL and window == 3 and special_down{
    kill_hold += 1
     if kill_hold >= 14 {
         window = 4
         window_timer = 1
         sacrifice = true
     }
 }
else{
    kill_hold = 0
}
// print(hit_assists)
if hit_assists == true{
    destroy_hitboxes();
    if attack != AT_DSPECIAL{
        hit_assists = false
    }
}

if honey_armor > 25{
    honey_armor = 25
}
if honey_armor < 0{
    honey_armor = 0
}

if clinging{
    cling_time += 1
    if cling_time < 60{
        state_timer = 0
        wall_fall = 0
    }
    if cling_time >= 60{
        wall_fall += .03
        vsp += wall_fall
        state_timer = 0
    }
}
if state == PS_WALL_JUMP and clinging == false{
    cling_time = 0
}
if cling_time >= 60 and clinging == true and state_timer > 0{
    wall_jump_timer = 32
    clinging = false
    print("trevor why")
}

//fspecial hive interaction
if hive_vault == 2{
    vsp = 0//-10
    hsp = 0//10*spr_dir
    old_hsp = 3*spr_dir
    old_vsp = -8
    window = 4
    // window_timer = 0
    hive_vault = 0
}

//dair hive interaction
if hive_bounce == 1{
    set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 5);
    set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -7);
}
if hive_bounce == 0{
    set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 15);
    set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -10);
}

if get_player_color(player) >= 17 and get_player_color(player) < 21 {
    shiny_timer +=1
    //print("dog")
    //print(shiny_timer)
}
if get_player_color(player) >= 18{
    set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_ravyn"));
}
if shiny_timer >= 25{
    shiny_timer = 0
    shiny_x = random_func(0, 49, true)
    shiny_y = random_func(1, 60, true)
}

if attack == AT_TAUNT_2{
    if window == 1 and window_timer == 1{
        sound_play(pcpm)
    }
    if window_timer >= 37 and window == 2{
        print("dingdong")
    	if taunt_down{
    		attack = AT_TAUNT_2
    		window_timer = 0;
    	}
        if taunt_down == false{
        	state = PS_CROUCH
        	attack = AT_TAUNT
        	sound_stop(pcpm)
        	if down_down{
            state_timer = 4
        	}
        }
    }
    suppress_stage_music(0, .01);
}
else{
    sound_stop(pcpm)
}


// if get_player_color(player) == 23{
//     set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt2"));
//     if covet2 != 1 and hit_assists == false{
//         set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_w"));
//         set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_w"));
//     }
//     else{
//         set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial2"));
//         set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial2"));
//     }
// }

if hit_assists == false{
    set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
    set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
}
else{
    set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial2"));
    set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial2"));
}

if attack == AT_UTILT and window == 3 and window_timer <= 2 and utilt_parried == 1{
    vsp = 0
    state = PS_PRATFALL
    destroy_hitboxes();
    utilt_parried = 0
}

if killarticles = 1 and (state != PS_RESPAWN or attack == AT_NSPECIAL and window == 4){
    killarticles = 0
}

if state == PS_ATTACK_AIR and attack == AT_DSPECIAL{
    max_fall = 6; 
}
else{
    max_fall = 10; 
}
print(hive_cooldown)
if hive_cooldown > 0{
    hive_cooldown -= 1
}