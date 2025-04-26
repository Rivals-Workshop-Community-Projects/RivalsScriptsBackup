var temp_self = player;
var temp_opponent; //Only does one opponent
with(asset_get("oPlayer")){
    // Force close if character known to crash
    //if(player == 0){print("Brook Detected, exiting"); exit;}
    // Check player
	if(player != temp_self){
        //print("Opponent: " + get_char_info(player, INFO_STR_NAME));
        temp_opponent = get_char_info(player, INFO_STR_NAME);
	}
	
}

// Copying Homework from Frtoud
var results_smuggler = instance_create(0, 0, "pHitBox");
results_smuggler.type = 2; //projectile
results_smuggler.persistent = true; //survive room end
results_smuggler.length = 60; //this message will self-destruct in one second.
//results_smuggler.results_data = { a:temp_opponent, b:55 };// Originalattach payload
results_smuggler.results_data_roekoko = { opponent_name:temp_opponent, num_of_players:countPlayers };//attach payload
