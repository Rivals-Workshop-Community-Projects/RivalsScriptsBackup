if((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_BAIR) && missile_sprite == 2 && hit_player_obj.frozen_level < 2 && hit_player_obj.frozen == 0){
    hit_player_obj.frozen_level++;
}else if((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_BAIR) && missile_sprite == 2 && hit_player_obj.frozen == 0){
    hit_player_obj.frozen_level = 0;
    hit_player_obj.frozen = 1;
    hit_player_obj.frozen_timer = 160;
}else if(hit_player_obj.frozen_timer > 0){
    hit_player_obj.frozen_timer = 0;
    hit_player_obj.frozen = 0;
    hit_player_obj.ice_alpha = 1;
    sound_play(asset_get("sfx_ice_shatter_big"));
}
if(my_hitboxID.attack == AT_NSPECIAL){
    spawn_dust_fx(my_hitboxID.x, my_hitboxID.y, sprite_get(string(beam_sprite) + "_hit"), 8);
    if(my_hitboxID.charge >= 90){
        sound_play(sound_get("beam_chargehit"));
    }else{
        sound_play(sound_get("beam_smallhit"));
    }
}
if(my_hitboxID.attack == AT_FSPECIAL){
    spawn_dust_fx(my_hitboxID.x, my_hitboxID.y, sprite_get(string(missile_sprite) + "_missile_hit"), 15);
    switch(my_hitboxID.missile_sprite){
        case 0:
        sound_play(sound_get("missile_hit"));
        break;
        case 1:
        sound_play(sound_get("super_hit"));
        break;
        case 2:
        sound_play(sound_get("ice_hit"));
        break;
    }
}

if(has_rune("K")){
    damage_counter += my_hitboxID.damage;
    if(damage_counter >= 100){
        damage_counter -= 100;
        missile_amount += (has_rune("H")? (missile_amount > 225? 275 - missile_amount: 50): 25);
        power_bomb_amount = (power_bomb_amount > 2? (has_rune("H")? (power_bomb_amount > 10? power_bomb_amount + 15 - power_bomb_amount: power_bomb_amount + 5): power_bomb_amount): 2);
    }
}