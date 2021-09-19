x = myPlayer.x
y = myPlayer.y
if(!myPlayer.inRock){
    sprite_index = player_id.rockPrisonBreak;
    player_id.rockBreakCounter++;
    if(player_id.rockBreakCounter % 4 == 0){
        image_index += 1;
    }
    if(image_index == image_number - 1){
        instance_destroy();
        player_id.rockBreakCounter = 0;
    }
}
if(myPlayer.prison_time_counter % 5 == 0 && myPlayer.inRock){
    image_index += 1;
}
if(sprite_index == player_id.rockPrisonForm && image_index == image_number){
    sprite_index = player_id.rockPrison;
}
if(myPlayer.prison_canAct){
    sprite_index = player_id.rockPrisonCrack;
}
//print_debug(string(sprite_index));
//print_debug(string(player_id.rockBreakCounter));