

if (Delete == true){//Delete
instance_destroy()
}else{//Delete
			depth =-5100
	if(eat == 0){
	sprite_index = sprite_get("eat");
				var tou = instance_place(x, y, obj_stage_article_solid);
				if tou != noone {
				hsp = 0;
				vsp = 0;
				}else{
				vsp += 0.1;
				}
			var touf = instance_place(x, y, oPlayer);
			if touf != noone {
				with(oPlayer){
				burnt_id=1
				burned=true
				burn_timer=10
				take_damage( player, -1, -20 );
				set_state(PS_IDLE_AIR)
				}
				sound_play(sound_get("sfx_Mabo tofu"))
				with ( obj_stage_article ) {//with
					if ( get_article_script( id ) == 96 ) {//95


						if(xq == -7){//-7-5
							if(yq == -5){
							eat1=true
							}
						}
						if(xq == -10){//-10-5
							if(yq == -5){
							eat2=true
							}
						}
						if(xq == -8){//-8-3
							if(yq == -3){
							eat3=true
							}
						}
						if(xq == -7){//-7-6
							if(yq == -6){
							eat4=true
							}
						}
						if(xq == -15){//-15-4
							if(yq == -4){
							eat5=true
							}
						}


					}
				}


				with ( obj_stage_article ) {//with
					if ( get_article_script( id ) == 596 ) {//95
					eatpoint+=5


					}
	
				}

			Delete = true
			}



	}else{
		if(eat == 1){
	
				var tou = instance_place(x, y, obj_stage_article_solid);
				if tou != noone {
				hsp = 0;
				vsp = 0;
				}else{
				vsp += 0.1;
				}

			var touf = instance_place(x, y, oPlayer);
			if touf != noone {
			}
	
	
	
	
		}else{
	
		}

	}


}