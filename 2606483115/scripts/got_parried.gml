
if(my_hitboxID.type == 1){
    steam -= 25
    red_indicator_timer = 50
}

if(my_hitboxID.attack == AT_DSPECIAL){
    var current_geyser = my_hitboxID.geyser_id
    current_geyser.state = 4
    current_geyser.state_timer = 0
    current_geyser.image_index = 3
}

if(my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 2)){
    steam_wall_dismiss = true
    steam -= 50
}

hit_player_obj.overheat = 0

//Runes

if(has_rune("O") || all_runes){
    with(oPlayer){
		if(self != other){
			if(chained && chained_player == other){
				with(other){
					other.chained = false
				}
			}
		}
	}
}