
if(is_aether_stage() == true) {//aether

}else{//aether

set_player_stocks( 1, 10);
set_player_stocks( 2, 15);
set_player_stocks( 3, 100);
set_player_stocks( 4, 105);
if(stop ==  0){
//
	if(Damage_stop ==  0){
		with(oPlayer){
			if(state == PS_HITSTUN){
				with (pHitBox) {//pHitBox
					if place_meeting(x,y,other) {//other
					var Dama = damage;
					}//other
				}//pHitBox
				other.Damage_taken_so_far += Dama
				print_debug("Damage_taken_so_far "+string(Dama))
				other.Damage_stop = 1
			}
		}
	}else{
		with(oPlayer){
			if(state == PS_IDLE || state == PS_IDLE_AIR || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_LAND || state == PS_WALK || state == PS_DASH_START || state == PS_WAVELAND || state == PS_AIR_DODGE || state == PS_PARRY){
			other.Damage_stop = 0
			}
		}

	}
//
if(Sgemetime ==  99){
//
	if(Mgemetime ==  50){
		if(Lgemetime ==  50){
		Ngemetime += 1
		Lgemetime = 0
		}else{
		Lgemetime += 1
		}
	Mgemetime = 0
	}else{
	Mgemetime += 1
	}
Sgemetime = 0
}else{
Sgemetime += 1
}

//
}else{
	with ( obj_stage_article ) {
		if ( get_article_script( id ) == 96 ) {
			if(xq == 2021){
				if(yq == 2021){
					with ( obj_stage_article ) {
						if ( get_article_script( id ) == 596 ) {
							if(stop2 ==  0){
							Deductiontime = Ngemetime
							Deductiondamege = Damage_taken_so_far
							Deductiondeath = Numberofdeaths

							DeductionScore += Deductiontime
							
								if(Deductiondeath >=  1){
								DeductionScore += Deductiondeath+30
								}
								if(Deductiondamege ==  0){
								DeductionScore -= 5
								}
								if(Deductiondamege >= 1 && Deductiondamege <= 30 ){
								DeductionScore += 10
								}
								if(Deductiondamege >= 31 && Deductiondamege <= 60 ){
								DeductionScore += 20
								}
								if(Deductiondamege >= 61 && Deductiondamege <= 90 ){
								DeductionScore += 30
								}
								if(Deductiondamege >= 91 && Deductiondamege <= 120 ){
								DeductionScore += 40
								}
								if(Deductiondamege >= 121 && Deductiondamege <= 150 ){
								DeductionScore += 50
								}
								if(Deductiondamege >= 151 && Deductiondamege <= 180 ){
								DeductionScore += 60
								}
								if(Deductiondamege >= 181 && Deductiondamege <= 210 ){
								DeductionScore += 70
								}
								if(Deductiondamege >= 211){
								DeductionScore += 80
								}
							DeductionScore -= eatpoint



							Score -= DeductionScore
							stop2 =1
							}
						}
					}
				}
			}
		}
	}
	with(oPlayer){

	//take_damage( player, -1, -999 );
	}




}



}//aether