

image_angle -= 6;

if (Delete == true){//Delete
instance_destroy()
}else{//Delete



	var touch = instance_place(x, y, oPlayer);//touch
	if touch != noone && touch.state != PS_DEAD {//touch
	
	
		if(e2 == true){//e2
		
		}else{//e2
		image_yscale +=1
		image_xscale +=1
		sound_play( asset_get( "sfx_abyss_explosion_start" ) );
		var h = instance_create(x,y, "obj_stage_article" , 600);
		with(h){
		l= 2
		}
		e2 = true
		}//e2
	
	}




	if(e2 == true){//e22


		if(time2 >= 100){//time2
			with ( obj_stage_article ) {

				if ( get_article_script( id ) == 96 ) {
					with oPlayer {//oPlayer
						with ( obj_stage_article_platform ) {
						Delete = true
						}
		
						with ( obj_stage_article_solid ) {
						Delete = true
						}
						with ( obj_stage_article ) {
							xq =-26;
							yq =0;
							initialization = false
						Delete = true
						}
	
					}
						with ( obj_stage_article ) {
							if ( get_article_script( id ) == 96 ) {
							effect = 1
							}
						}

				}
			}

		}else{
		time2 += 1
		}
	}

}//Delete