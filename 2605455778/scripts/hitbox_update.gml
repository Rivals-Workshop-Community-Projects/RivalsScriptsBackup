if(attack == AT_NSPECIAL && hbox_num == 1){
    player_id.nspHboxX = self;
    y = player_id.y-30;
    x += player_id.x - prev_pos;
}

if(attack == AT_USPECIAL && hbox_num == 1 && (!free || hitbox_timer >= length)){
    if(player_id.swallowups){
        var rockPow = create_hitbox(AT_USPECIAL, 4, x, y);
        spawn_hit_fx(rockPow.x, rockPow.y, player_id.rockeggpowfx);
        player_id.swallowups = false;
    }else{
        var rockPow = create_hitbox(AT_USPECIAL, 2, x, y);
        spawn_hit_fx(rockPow.x, rockPow.y, player_id.rockeggpowfx);
    }
    sound_play(asset_get("sfx_kragg_rock_shatter"));
    destroyed = true;
}

uspecialRockTimer++;
if(attack == AT_USPECIAL && hbox_num == 1){
    if(uspecialRockTimer % 4 == 0){
        image_index += 1;
    }
}
if(attack == AT_DSPECIAL && hbox_num == 3){
    if(image_index < 1){
        if(uspecialRockTimer % 4 == 0){
            image_index += 1;
        }
    }
    with(player_id){
        if(other.uspecialRockTimer < 10){
            other.vsp = 0;
        }else{
            other.vsp = 7;
        }
    }
    if(grounds == 0 && !free){
        destroyed = true;
    }
}

if(attack == AT_UTILT && hbox_num == 4 && hitbox_timer == 9){
    spawn_hit_fx(x, y, 19);
}
prev_pos = player_id.x;