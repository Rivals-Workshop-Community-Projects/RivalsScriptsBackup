if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
	fspecialcharge = 0;
	
	if(attack == AT_DSPECIAL && soft_armor > 0){
	    if(enemy_hitboxID.damage > 0 && enemy_hitboxID.kb_value > 0){
	        with(enemy_hitboxID){
	            //print_debug(string(cos(degtorad(kb_angle))*(kb_value+(kb_scale*2))*spr_dir));
	            other.dspecialkbhsp = cos(degtorad(kb_angle))*(kb_value+(kb_scale*2))*spr_dir;
				if(!other.free && (kb_angle > 180 && kb_angle < 360)){
	                other.dspecialkbvsp = -sin(degtorad(-kb_angle))*(kb_value+(kb_scale*2));
				}else{
	                other.dspecialkbvsp = -sin(degtorad(kb_angle))*(kb_value+(kb_scale*2));
			    }
			    if(!other.free){
			        other.dspecialtimer = -20;
	            }else{
			        //other.dspecialtimer = 30;
	            }
	        }
	    }
	}
}