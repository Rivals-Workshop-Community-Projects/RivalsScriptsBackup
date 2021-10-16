//Custom stage interaction code goes here.

switch(num) {
	
	//
	//Here's a few templates to get an idea for how object interactions work.
	//Remove the /* and */ symbols at the top and bottom of a case to un-comment it and make it run.
	//The X in "case X:" should be replaced with whatever the article's type number is.
	
	/*
	case X: //BOOST PAD: Sets the kart to a specific speed.
		if position_meeting(other.x,other.y, id) &&
		(((other.collision_layer == 0 && depth >= 0) or (other.collision_layer == 1 && depth < 0)) or other.change_layer) {
			var dir = point_direction(0,0,other.hsp, other.vsp);
			other.hsp = lengthdir_x(9, dir);
			other.vsp = lengthdir_y(9, dir);
		}
	break;
	*/
	
	
	case 20: //LANDMINE: Explodes the kart that touches it.
		if 
		 kart_id.collision_layer == 1 && !kart_id.invincible && kart_id.z <= 0 && position_meeting(kart_id.x,kart_id.y, id){
			kart_id.state = PS_DEAD;
			kart_id.state_timer = 0;
		}		
	break;
	case 21:
		if position_meeting(kart_id.x,kart_id.y, id) &&
		 kart_id.collision_layer == 1 && kart_id.z <= 0 && point_distance(0,0,kart_id.hsp,kart_id.vsp) > 1{
			kart_id.z += 1;
			kart_id.zsp = min(point_distance(0,0,kart_id.hsp,kart_id.vsp),6)*0.5
			kart_id.hsp *= 0.5;
			kart_id.vsp *= 0.5;
			with (kart_id) sound_play(asset_get("sfx_metal_hit_weak"));
		//	other.zsp = 10;
		}		
	break;	
	case 22: //Force to ground layer
		if 
		 kart_id.collision_layer == 1 && !kart_id.inactionable && kart_id.z <= 0 && position_meeting(kart_id.x,kart_id.y, id){
			kart_id.collision_layer = 0;
		}		
	break;	
	default: break;
}