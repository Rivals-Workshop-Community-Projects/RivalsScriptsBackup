if (Delete == true){
instance_destroy()
}else{
 
	if (attackx == true){
			image_index =1

		with ( obj_stage_article ) {//with
			if ( get_article_script( id ) == 96 ) {//95

				if(xq == -5){//-5-6
					if(yq == -6){
					key = true;
					}
				}

				if(xq == -10){//-10-6
					if(yq == -5){
					key2 = true;
					}
				}

				if(xq == -8){//-8-3
					if(yq == -3){
					key3 = true;
					}
				}

			}//95
		}//with


	}else{
		if hitplayer == 0 with (pHitBox) {//pHitBox
			if place_meeting(x,y,other) {//other
			other.hitplayer = player;
			}//other
		}//pHitBox
		if hitplayer > 0 && hitplayer < 5{//hitplayer
				if (attackx == false){//damage f
				sound_play( asset_get( "sfx_leafy_hit1" ));
				attackx = true;
				}
		}//hitplayer

	}

}