var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch(alt_cur){
    case 0:
        if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
        set_character_color_slot(6, 239, 24, 17 );
        set_article_color_slot(6, 239, 24, 17 );
    break;
    case 8:
    for(var i = 0; i < 8; i++)set_character_color_shading(i,0);
    break;
    case 24:
        set_character_color_shading(4,-1);
        set_character_color_shading(3,0.25);
        set_character_color_shading(5,-1);
    break;
    case 25:
        set_character_color_shading(5,-1);
        set_character_color_shading(3,0);
    break;
}


if(object_index == asset_get("draw_result_screen")){
	if ("didthething" not in self){
	    victory_characters_present = {};teammate = {};
	    
	    //magic happens in there
	    get_victory_screen_data();
	    
		if(teammate.luigi)winner_name = "The Brothers WIN!";
		if(teammate.hotelluigi)winner_name = "The Hotel Brothers WIN!";

		didthething = true;
	}
}

#define get_victory_screen_data()
{
    var data_array = noone;
    with(asset_get("pHitBox"))if("hotelMario_victory_screen_array" in self){
        data_array = hotelMario_victory_screen_array;
        break;
    }if(data_array == noone)return;

    with(asset_get("result_screen_box"))data_array[player].order = y;
    
    var charNameArray = variable_instance_get_names(data_array[1]);
    for(var i = 3, len = array_length_1d(charNameArray); i < len; i++){variable_instance_set(victory_characters_present,charNameArray[i],false);variable_instance_set(teammate,charNameArray[i],false);}
    
    var best_player = winner;
    var winning_team = data_array[winner].team;
    var best_is_on_team = true;
    
    for (var p = 1; p <= 4; p++)if(is_player_on(p)){
        var best = data_array[best_player];
        var curr = data_array[p];
        
        var not_on_team = (curr.team != winning_team);
        var higher_ranking = (curr.order < best.order);
        var higher_priority = (curr.priority > best.priority);
        var same_priority = (curr.priority == best.priority);
        
        if(best_is_on_team && not_on_team) || (not_on_team && higher_priority) || (not_on_team && same_priority && higher_ranking){
            best_player = p;
            best_is_on_team = (best.team == winning_team);
        }
        var nameArray = variable_instance_get_names(data_array[p]);
        for(var n = 3, len = array_length_1d(nameArray); n < len; n++){
    		if(!variable_instance_get(data_array[p],nameArray[n]))continue;
    		variable_instance_set(victory_characters_present,nameArray[n],variable_instance_get(data_array[p],nameArray[n]));
    		if(data_array[p].team == winning_team)variable_instance_set(teammate,nameArray[n],true);
    		break;        	
        }
    }
}