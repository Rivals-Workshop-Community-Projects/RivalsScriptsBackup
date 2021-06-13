

if (Delete == true){//Delete
instance_destroy()
}else{//Delete
			var tou = instance_place(x, y, obj_stage_article_solid);
			if tou != noone {
			hsp = 0;
			vsp = 0;
			}else{
			vsp += 0.1;
			}
	if hitplayer == 0 with (pHitBox) {
		if place_meeting(x,y,other) {
			
			
			
				other.hitplayer = player;

		}
	}

	if hitplayer > 0 && hitplayer < 5{
			end_match( hitplayer.player );
			if (damage == false){
			
				if(Physicalstrength <= 0){
				Delete = true;
				}
			}
		print_debug("target hit by ")
	

	}
	if(hitplayer >=5){
	hitplayer =0
	}
			if (damage == true){
								var xe =-40 
								var ye =-60
								xe += random_func( 0, 70, false ); 
								ye += random_func( 0, 70, false );
								xe += random_func( 20, 70, false ); 
								var efx =create_hitbox(AT_NSPECIAL,14,x, y);
								with(efx){
								x +=other.xe
								y += other.ye
								}
			}
}