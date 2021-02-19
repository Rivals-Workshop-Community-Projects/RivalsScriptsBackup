// article2_update

if(state == 0){
    if(state_timer == 1){
        sprite_index = sprite_get("mine");
    }
    if(fuse < 180 && fuse > 60){
        image_index += 0.1;
    }
    if(fuse < 60){
        image_index += 0.2
    }
    with(oPlayer){
        if(id != other.player_id && (state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD)){
            if(get_player_team(player) != get_player_team(other.player)){
                if(place_meeting(x,y,other) && other.fuse > 8){
                    if(!free){
                        other.fuse = 5;
                    }
                    if(free && (state == PS_HITSTUN || state == PS_HITSTUN_LAND) ){
                        other.fuse = 0;
                    }
                }
            }
        }
    }
}


if(!position_meeting(x,y+10, asset_get("par_block")) && !position_meeting(x,y+10, asset_get("par_jumpthrough"))){
    if(state != 100){
        state = 100;
        state_timer = 0;
    }
    
}

//#region ramp jump
with(obj_article1){
    if(player_id == other.player_id){
        if(position_meeting(x,y,other)){
            if(vsp > 0){
                vsp *= -0.5
            }
            vsp -= hsp*0.6*dir
            hsp *= 0.4
        }
    }
}
//#endregion

with(oPlayer){
    if(id == other.player_id){
        if((state == PS_JUMPSQUAT || (attack == AT_USTRONG && window == 2))&& Ustrong_mine && other.state != 100){
            other.state = 100
            other.state_timer = 0;
        }
    }
}


//#region boom
if(state == 100){
    if(state_timer == 1){
        sound_play(sound_get("ph_explode"))
        sound_play(sound_get("ph_explode"))
        //sound_play(sound_get("ph_explode"))
        //sound_play(sound_get("ph_explode"))
        var boom = create_hitbox(AT_EXTRA_1,1, x, y)
    }
    sprite_index = sprite_get("kaboom");
    image_index += 0.3;
    hsp = 0;
    vsp = 0;
    
    if(state_timer == 20){
        instance_destroy();
        exit;
    }
}

//#endregion


if(fuse <= 0 && state != 100){
    state = 100;
    state_timer = 0;
    image_index = 0;
    
}


state_timer++;
fuse--;