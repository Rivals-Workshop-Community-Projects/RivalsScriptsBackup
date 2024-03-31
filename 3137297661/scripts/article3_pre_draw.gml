//article3_pre_draw.gml
//have to do this rendering ihere in this dummy article so the motes can persist after ring has gone
if(instance_exists(player_id.deathring) && !player_id.deathring.energy_end_flag){
    draw_sprite_ext(energyball_bot_spr[player_id.deathring.store_level], player_id.deathring.energy_anim_time, 
    player_id.deathring.x, player_id.deathring.y, 2, 2, 0, c_white, 1);
}

for(var i = 0; i < player_id.max_motes; ++i){
    if(player_id.mote_list[i] != 0){
        draw_sprite_ext(mote_bot_spr, 1, player_id.mote_list[@i][@1], player_id.mote_list[@i][@2], 
        2, 2, 0, c_white, 1);
    }
}

for(var i = 0; i < player_id.max_motes; ++i){
    if(player_id.mote_list[i] != 0){
        draw_sprite_ext(mote_top_spr, 1, player_id.mote_list[@i][@1], player_id.mote_list[@i][@2], 
        2, 2, 0, c_white, 1);
    }
}

if(instance_exists(player_id.deathring) && !player_id.deathring.energy_end_flag){
    draw_sprite_ext(energyball_top_spr[player_id.deathring.store_level], player_id.deathring.energy_anim_time, 
    player_id.deathring.x, player_id.deathring.y, 2, 2, 0, c_white, 1);
}
