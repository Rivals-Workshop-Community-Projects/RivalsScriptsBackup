// other post-draw
//chains_spr = sprite_get("chains");
if(state==PS_RESPAWN || state==PS_DEAD){
    numChains=0;
    chainedDown=0;
}
if (numChains<10){
    if (changing==0){
        draw_sprite(other_player_id.chains_spr, numChains, x,y);
    } else if (changing>0){
        draw_sprite(other_player_id.change_spr, numChains + (changing/10), x,y);
    } else {
        draw_sprite(other_player_id.change_spr, numChains - (changing/10)+1, x,y);
    }
}
else {
    draw_sprite(other_player_id.chains_spr, 10, x,y);
}
//draw_debug_text(x,y-20,string(sprite_get("chains")));

/*
if (other_player_id.find_key>0){
    if (player == 1){
        other_player_id.my_key.player1_id = id;
    } else if (player == 2){
        other_player_id.my_key.player2_id = id;
    } else if (player == 3){
        other_player_id.my_key.player3_id = id;
    } else {
        other_player_id.my_key.player4_id = id;
    }
    //find_key--;
}*/

if (url == other_player_id.url){
    if (other_player_id.my_key!=noone/* && my_key==noone*/) {
        my_key=other_player_id.my_key;
        if (!haveKey) my_key.desiredX = get_stage_data(SD_X_POS) + get_stage_data(SD_WIDTH)/2;
        haveKey=true;
    }
}
/*
if (checkKey){
    if (other_player_id.my_key!=noone) {
        my_key=other_player_id.my_key;
        checkKey=false;
    }
    else checkKey=true;
}
draw_debug_text(x,y,string(other_player_id.my_key!=noone));
draw_debug_text(x,y,string(my_key));
*/

var their_key = other_player_id.my_key;
if (point_distance(x,y,their_key.x, their_key.y)<their_key.collection_dist){
    their_key.current_owner_id = id;
}

//----------------------------------------------------------------------            
//other_update function/script because IT DOESNT EXIST FOR SOME REASON
//---------------------------------------------------------------------
if (get_gameplay_time()!=prevGameTime){
    if(prevNumChains!=numChains){
        changing+=10*(numChains-prevNumChains);
    }
    prevNumChains=numChains;
    if (changing>0) changing--;
    else if (changing<0) changing++;
    //draw_debug_text(x,y,"running");
    //check if in jail to apply chains
    if (other_player_id.my_jail!=noone && 
            (x>other_player_id.my_jail.x && x<other_player_id.my_jail.x+180 && y<other_player_id.my_jail.y+1)){
        if (chainTimer%60 == 0) {
            numChains++;
        }
        chainTimer++;
    }
    //make sure no chains if key owner
    if(other_player_id.my_key.current_owner_id==id && other_player_id.my_jail==noone){
        numChains=0;
    }
    
    //check if chained down
    if (chainedDown>0){
        chainedDown-=1;
        numChains = 0;
        //yoink if needed
        if (point_distance(x,y, chainedX, chainedY)>160){
            /*
            if (x>chainedX){
                spr_dir = -1;
            } else{
                spr_dir = 1;
            }
            */
            //this is cursed lol
            hsp += 0.1 * ease_expoIn((chainedX - x), 0, 160, floor(point_distance(x,y, chainedX, chainedY)));
            vsp += 0.1 * ease_expoIn((chainedY - y), 0, 160, floor(point_distance(x,y, chainedX, chainedY)));
            //vsp+= ease_cubeIn(0, 10, (chainedY - y) * (point_distance(x,y, chainedX, chainedY)-160), 1000);
            //hsp += 0.1 * (chainedX - x) * (point_distance(x,y, chainedX, chainedY)-160)/160;
            //vsp += 0.1 * (chainedY - y) * (point_distance(x,y, chainedX, chainedY)-160)/160;
            yoinked = true;
        } else if (yoinked){
            hsp = 0;
            vsp = 0;
            yoinked = false;
            djumps = 0;
            has_walljump = true;
            has_airdodge = true;
        }
        //check if ball is in jail
        if (other_player_id.my_jail!=noone && 
                (chainedX>other_player_id.my_jail.x && chainedX<other_player_id.my_jail.x+180) && //x pos
                (chainedY<other_player_id.my_jail.y+1 && chainedY>other_player_id.my_jail.y-24)){//near platform
            chainedY = other_player_id.my_jail.y - 24;
        }
    }
    
    //if the first frame of an attack, lose chains
    if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer==0){
        reset_num_hitboxes(attack);
        var numHits = get_num_hitboxes(attack);
        var damageTotal = 0;
        for (var j=0; j<numHits; j++){
            reset_hitbox_value(attack, j+1, HG_DAMAGE);
            damageTotal+=get_hitbox_value(attack, j+1, HG_DAMAGE);
        }
        if (numHits!=0){
            numChains -= floor(damageTotal/(numHits*2));
        }
        if (numChains<=0){
            //broken free
            for (var j=0; j<numHits; j++){
                set_hitbox_value(attack, j+1, HG_DAMAGE, 
                    (get_hitbox_value(attack, j+1, HG_DAMAGE)) - floor(damageTotal/numHits) - numChains*2);
            }
            numChains = 0;
        } else {
            set_num_hitboxes(attack, 0);
        } 
    }
}
prevGameTime = get_gameplay_time();
//draw_debug_text(x,y,string(chainTimer));
