//death.gml

steam = 100

//torga stuff
waterLevel = 0
waterCharges = 1
lifetime = 0

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