if (my_hitboxID.attack == AT_FSPECIAL && hit_player_obj.id != id){
    if (!instance_exists(pellet_id) && instance_exists(pellet)){
        sound_play(asset_get("sfx_blow_weak1"));
        pellet_id = hit_player_obj;
        pellet.state = 1;
        pellet.state_timer = 0;
    }
    destroyed = true;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 2){
    sound_play(sound_get("sfx_chomp"));
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num = 7){
    var extra_hitstop = round(get_player_damage( hit_player_obj.player )*0.25);
    if (extra_hitstop > 60){
        extra_hitstop = 60;
    }
    hit_player_obj.hitstop += extra_hitstop;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 && instance_exists(hydrant)){
    if (instance_exists(hydrant)){
        if hydrant.x < room_width *0.5{
            hit_player_obj.x = hydrant.x - 36;
        }
        if hydrant.x > room_width * 0.5{
            hit_player_obj.x = hydrant.x + 36;
        }
    }
}
if (my_hitboxID.attack == AT_DTILT){
    sound_play(sound_get("sfx_wakka"));
    //sound_play(sound_get("sfx_wakka"));
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num >= 3){
    if my_hitboxID.hsp == 0 && hit_player_obj.vsp > my_hitboxID.vsp{
        hit_player_obj.vsp = my_hitboxID.vsp;
    }
    if my_hitboxID.hsp > 0 && hit_player_obj.hsp < my_hitboxID.hsp{
        hit_player_obj.hsp = my_hitboxID.hsp + 1;
    }
    if my_hitboxID.hsp < 0 && hit_player_obj.hsp > my_hitboxID.hsp{
        hit_player_obj.hsp = my_hitboxID.hsp - 1;
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && fruit.passes_through == false){
        fruit.state = 2;
        fruit.state_timer = 0;
}