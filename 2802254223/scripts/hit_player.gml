if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num != 5) {
    hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*40),0.5);
    hit_player_obj.y = lerp(hit_player_obj.y,y,0.5);
}

//if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num != 4) {
    //hit_player_obj.y = lerp(hit_player_obj.y,y,0.1);
//}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3) {
    with(obj_article2)
    {
        if(player_id == other.id)
        {
            hsp = 0;
            vsp = -4;
            state = 3;
            state_timer = 0;    
        }
    }
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 6) {
    set_player_damage( my_hitboxID.player, clamp(get_player_damage(my_hitboxID.player)-4,0,999));
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 5) {
    set_player_damage( my_hitboxID.hbox_owner, clamp(get_player_damage(my_hitboxID.hbox_owner)-4,0,999));
}
if (get_player_color(player) == 29 && my_hitboxID.attack != AT_NSPECIAL && my_hitboxID.attack != AT_FSPECIAL && my_hitboxID.attack != AT_DSPECIAL){
    
    if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_SFX) == 643 || get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_SFX) == 644)
        sound_play(sound_get("DS_crowbar_weak"), false, noone, 0.5, randomizeSFX);
    if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_SFX) == 647 || get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_SFX) == 648 || get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_SFX) == 649)
        sound_play(sound_get("DS_crowbar_med"), false, noone, 0.5, randomizeSFX);
    if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_SFX) == 654 || get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HIT_SFX) == 655)
        sound_play(sound_get("DS_crowbar_strong"), false, noone, 0.5, randomizeSFX);
}