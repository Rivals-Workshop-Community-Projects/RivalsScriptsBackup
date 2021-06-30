if(!free && !ai_recovering && (state == PS_IDLE || state == PS_DASH || state == PS_WALK)){
    if(ai_target.x > x){
	   right_hard_pressed = true;        
    }else{
	   left_hard_pressed  = true;        
    }
}

if (free && ai_target.y < y && !ai_recovering) {
	down_hard_pressed = true;
}
if (free && ai_target.y < y && can_attack) {
	attack = AT_DAIR
}
if (free && ai_target.y < y && can_special) {
	attack = AT_DSPECIAL
}
if (free && ai_target.y - 60 > y && can_attack) {
	attack = AT_UAIR
}
if (!free && ai_target.y - 20 > y && point_distance(ai_target.x, ai_target.y, x, y) < 150 && can_ustrong){
    attack = AT_USTRONG;
}
if(attack == AT_USTRONG){
    if(ai_target.y - 40 < y && point_distance(ai_target.x, ai_target.y, x, y) < 150 && strong_charge <= 15) {
        strong_down = true;    
    }else{
        strong_down = false;        
    }
}
if(instance_exists(pHitBox)){
if(point_distance(pHitBox.x, pHitBox.y, x, y) < 80){
    if(pHitBox.player_id != self){
        shield_pressed = true;
    }
}
}
if(instance_exists(pHitBox)){
	with (pHitBox){
		if(pHitBox.player_id != self){	
			if place_meeting(x + hsp, y + vsp, other){
				shield_pressed = true;
			}
		}	
	}
}
if(attack == AT_FSPECIAL){
    if(point_distance(ai_target.x, ai_target.y, x, y) > 60 && (ai_target.state != PS_RESPAWN || ai_target.state != PS_DEAD)){
        special_down = true;
    }
    if(ai_target.y - 20 > y ){
        jump_pressed = true;
    }
}

if(ai_target.voice == true){
    voice = true;
}