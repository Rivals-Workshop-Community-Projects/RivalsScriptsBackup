if (my_hitboxID.attack == AT_NSPECIAL && !hit_player_obj.clone && !hit_player_obj.blue && !hit_player_obj.orbd){
    hit_player_obj.blue = true;
    hit_player_obj.blue_time = 600;
    hit_player_obj.blue_id = id;
}

if (my_hitboxID.attack == AT_NSPECIAL && !hit_player_obj.clone && hit_player_obj.blue && !hit_player_obj.orbd){
    if (hit_player_obj.blue_time < 600){
    hit_player_obj.blue_time += 180;
    }
}

if (my_hitboxID.attack == AT_DSPECIAL){
    if (instance_exists(bone_trap)){
        my_hitboxID.spr_dir = bone_trap.spr_dir;
    }
    if (my_hitboxID.hbox_num == 1){
        sound_play(sound_get("sfx_ut_souldamage"));
        move_cooldown[AT_DSPECIAL] = 90;
    }
    if (my_hitboxID.hbox_num == 2){
        sound_play(sound_get("sfx_monsterhit"));
        if (hit_player_obj.blue_time > 0){
            hit_player_obj.blue_time -= 60;
        }
        move_cooldown[AT_DSPECIAL] = 120;
    }
    if (instance_exists(bone_trap) && bone_trap.state == 1){
        if (hit_player_obj.blue == true){
        bone_trap.state = 2;
        bone_trap.state_timer = 0;
        hit_player_obj.x = lerp(hit_player_obj.x, bone_trap.x, 0.6);
        hit_player_obj.hsp *= 0.5;
        } else {
        bone_trap.state = 3;
        bone_trap.state_timer = 0;
        }
        my_hitboxID.destroyed = true;
    }
}

if(!hit_player_obj.can_djump && hit_player_obj.blue){
    hit_player_obj.can_djump = true;
}

if (my_hitboxID.attack == AT_FSPECIAL){
    
    move_cooldown[AT_FSPECIAL] = 40;
    if (hit_player_obj.blue == true || hit_player_obj.player == my_hitboxID.orig_player){
        hit_player_obj.orbd = true;
        hit_player_obj.blue_time -= 160;
        sound_play(sound_get("sfx_shock"), false, noone, 0.75, 1);
        hit_player_obj.hitstop += 42;
        if (hit_player_obj.player == my_hitboxID.orig_player){
        hit_player_obj.hitstop += 20;
        }
        move_cooldown[AT_FSPECIAL] = 80;
    }
} else {
    hit_player_obj.orbd = false;
}