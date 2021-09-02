//other initialization
numChains = 0;
prevNumChains=0;
changing=0;
chains_spr = sprite_get("chains");
change_spr = sprite_get("chainge");

chainedDown = 0;
chainedX = x;
chainedY = y;
yoinked = false;
prevGameTime = get_gameplay_time();
chainTimer = 0;
haveKey=false;

if (url == other_player_id.url){
    if (other_player_id.my_key!=noone/* && my_key==noone*/) {
        my_key=other_player_id.my_key;
        my_key.desiredX = get_stage_data(SD_X_POS) + get_stage_data(SD_WIDTH)/2;
        haveKey=true;
        /*
        my_key.prev_owner_id=-1;
        my_key.current_owner_id=-1;
        */
    }
}
//sprite_change_offset("chains", 0, 0);

/*
if (player == 1){
    other_player_id.my_key.player1_id = id;
} else if (player == 2){
    other_player_id.my_key.player2_id = id;
} else if (player == 3){
    other_player_id.my_key.player3_id = id;
} else {
    other_player_id.my_key.player4_id = id;
}*/
//find_key = 5;//5 frames to tell the key who you are