//code by Frtoud and Bar-Kun
if (!hotel_mario_handeled_victory_shit){
   //default values
    var transfer_array = [];
    for (var p = 1; p <= 4; p++){ 
        transfer_array[p] = {
            order: 99999,
            team: get_player_team(p),
            priority: 0,
            luigi:false,
            hotelluigi:false
        }
    }
    
    with(oPlayer)if(player <= 4){
        var data = transfer_array[player];
        if(url == other.url){
            hotel_mario_handeled_victory_shit = true;
            data.priority = 2;
        }else{
        	var nameArray = variable_instance_get_names(data);
        	for(var n = 3, len = array_length_1d(nameArray); n < len; n++){
        		var upperName = string_upper(string_char_at(nameArray[n],1))+string_delete(nameArray[n],1,1);var thing = variableExistsInAndIs(self,"hotelMario_IAm"+upperName,true);
        		if(!thing)continue;
        		variable_instance_set(data,nameArray[n],thing);
        		break;
        	}
        }transfer_array[player] = data;
    }
   
    var smuggler = instance_create(0, 0, "pHitBox");
    smuggler.persistent = true;smuggler.type = 2;smuggler.length = 60;

    smuggler.hotelMario_victory_screen_array = transfer_array;
}

#define variableExistsInAndIs(obj,variable,type)
if(variable not in obj)return false;
return (variable_instance_exists(obj,variable) && variable_instance_get(obj,variable) == type);
