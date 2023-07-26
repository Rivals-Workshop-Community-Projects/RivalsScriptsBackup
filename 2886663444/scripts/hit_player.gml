if my_hitboxID.attack == AT_DAIR {
    //old_vsp = -5;
}
if my_hitboxID.attack == AT_DSPECIAL {
    //vsp = -3;
}

if move_cooldown[AT_FSPECIAL] > 5 {
    
    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 40, 305)
    
    //take_damage(player,1, floor (my_hitboxID.damage * -0.5) )
    hitstop += my_hitboxID.damage + 2
    hit_player_obj.hitstop += my_hitboxID.damage + 2
    
    move_cooldown[AT_FSPECIAL] += floor(hitstop*1.5) + my_hitboxID.damage
    
    sound_play(sound_get("dagger_swing1"),false,noone, 0.6 + my_hitboxID.damage/10 , .5 + random_func(2,40,true)/100 )

}

if my_hitboxID.attack == AT_FSPECIAL {
    move_cooldown[AT_FSPECIAL] = 5
    my_hitboxID.vsp = -6
    my_hitboxID.hsp = 0
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL and my_hitboxID.hbox_num < 6){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-65, .35);
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+5*spr_dir, .35);
    }
}

/*
if (my_hitboxID.attack == AT_DSPECIAL and my_hitboxID.hbox_num == 1){
    old_vsp = -5;
    old_hsp = 0;
}
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(20*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-60, .4);
    }
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FSTRONG and my_hitboxID.hbox_num < 2){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-50, .35);
    }
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_DSPECIAL and my_hitboxID.hbox_num < 5){
        hit_player_obj.x = floor(lerp(hit_player_obj.x, x, .3));
        hit_player_obj.y = floor(lerp(hit_player_obj.y, y-50, .3));
    }
}

if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FSPECIAL)
    {
        if(my_hitboxID.hbox_num == 1)
        {
            set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
            window = 4;
            window_timer = 0;
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x+30*spr_dir, .35);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .35);
            grabbed_player_obj = hit_player_obj;
            grabbed_player_relative_x = grabbed_player_obj.x - x;
            grabbed_player_relative_y = grabbed_player_obj.y - y;
            sound_play(asset_get("sfx_frog_dspecial_cast"))
        }
        if(my_hitboxID.hbox_num == 2)
        {
            grabbed_player_obj = noone; 
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x-20*spr_dir, .35);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .35);
        }
    }
}

