
//Hurtbox position
switch(player_id.state){
	default://For stuff that aligns with Idle
		x_offset = 0;
		y_offset = 0;
	break;
	case (PS_CROUCH): case (PS_JUMPSQUAT):
		x_offset = 8;
		y_offset = 36;
	break;
	case (PS_DASH): case (PS_DASH_START): case (PS_DASH_STOP): 
		x_offset = 14;
		y_offset = 0;
	break;
	case (PS_ATTACK_GROUND):
		switch(player_id.attack){
			default://Catch in case anything weird happens
				x_offset = 0;
				y_offset = 0;
			break;
			
			case (AT_JAB):
				switch(player_id.image_index){
					case 0:
						x_offset = 0;
						y_offset = 0;
					break;
					case 1: case 6:
						x_offset = 8;
						y_offset = 4;
					break;
					case 2:
						x_offset = 16;
						y_offset = 8;
					break;
					case 7:
						x_offset = 8;
						y_offset = 0;
					break;
				}
			break;
			case (AT_DATTACK):
				switch(player_id.image_index){
					case 0:
						x_offset = 0;
						y_offset = 0;
					break;
					case 8:
						x_offset = 4;
						y_offset = 0;
					break;
				}
			break;
			
			case (AT_NSPECIAL):
				switch(player_id.image_index){
					case 0:
						x_offset = 4;
						y_offset = 0;
					break;
					case 1: case 3:
						x_offset = -4;
						y_offset = 4;
					break;
					case 2:
						x_offset = -10;
						y_offset = 8;
					break;
					case 4: case 11:
						x_offset = 0;
						y_offset = 0;
					break;
					case 8:
						x_offset = 6;
						y_offset = 2;
					break;
					case 9:
						x_offset = 14;
						y_offset = 6;
					break;
				}
			break;
			case (AT_NSPECIAL_2):
				switch(player_id.image_index){
					case 0:
						x_offset = 0;
						y_offset = 0;
					break;
					case 2:
						x_offset = 12;
						y_offset = 4;
					break;
					case 4:
						x_offset = 6;
						y_offset = 0;
					break;
					case 5:
						x_offset = 2;
						y_offset = 0;
					break;
					case 10:
						x_offset = 0;
						y_offset = 0;
					break;
				}
			break;
			case (AT_FSPECIAL): case (AT_FSPECIAL_2):
				switch(player_id.image_index){
					case 0: 
						x_offset = 6;
						y_offset = 6;
					break;
					case 1:
						x_offset = 0;
						y_offset = 10;
					break;
					case 3: case 9:
						x_offset = 8;
						y_offset = 14;
					break;
					case 4:
						x_offset = 20;
						y_offset = 16;
					break;
					case 6:
						x_offset = 14;
						y_offset = 26;
					break;
					case 10: case 14:
						x_offset = 0;
						y_offset = 0;
					break;
					case 12:
						x_offset = 4;
						y_offset = 4;
					break;
					case 13:
						x_offset = 0;
						y_offset = 2;
					break;
				}
			break;
			case (AT_USPECIAL): case (AT_USPECIAL_2): case (AT_DSPECIAL):
				x_offset = 0;
				y_offset = 0;
			break;
			
			case (AT_FSTRONG):
				switch(player_id.image_index){
					case 0:
						x_offset = 10;
						y_offset = 20;
					break;
					case 4:
						x_offset = 4;
						y_offset = 0;
					break;
					case 5:
						x_offset = 0;
						y_offset = 0;
					break;
				}
			break;
			case (AT_USTRONG):
				switch(player_id.image_index){
					case 0: case 11:
						x_offset = 0;
						y_offset = 0;
					break;
					case 1: case 6:
						x_offset = 6;
						y_offset = 0;
					break;
					case 3:
						x_offset = 8;
						y_offset = 4;
					break;
				}
			break;
			/*case (AT_DSTRONG):
				switch(player_id.image_index){
					case 0: case 11:
						x_offset = 0;
						y_offset = 0;
					break;
					case 6: case 10:
						x_offset = 2;
						y_offset = 10;
					break;
					case 7:
						x_offset = 2;
						y_offset = 12;
					break;
				}
			break;*/
			
			case (AT_FTILT):
				switch(player_id.image_index){
					case 0:
						x_offset = 10;
						y_offset = 2;
					break;
					case 1:
						x_offset = 14;
						y_offset = 4;
					break;
					case 3:
						x_offset = 20;
						y_offset = 6;
					break;
					case 5:
						x_offset = 6;
						y_offset = 0;
					break;
					case 6:
						x_offset = -4;
						y_offset = 0;
					break;
					case 8:
						x_offset = 0;
						y_offset = 0;
					break;
				}
			break;
			case (AT_UTILT):
				switch(player_id.image_index){
					case 0:
						x_offset = 10;
						y_offset = 0;
					break;
					case 1:
						x_offset = 12;
						y_offset = 8;
					break;
					case 2:
						x_offset = -4;
						y_offset = 0;
					break;
					case 5:
						x_offset = -20;
						y_offset = 4;
					break;
					case 7:
						x_offset = -4;
						y_offset = 0;
					break;
				}
			break;
			case (AT_DTILT):
				switch(player_id.image_index){
					case 0:
						x_offset = 8;
						y_offset = 30;
					break;
					case 1: case 6:
						x_offset = 10;
						y_offset = 40;
					break;
					case 2:
						x_offset = 8;
						y_offset = 44;
					break;
					case 3:
						x_offset = 4;
						y_offset = 38;
					break;
				}
			break;
			
			case (AT_DAIR):
				switch(player_id.image_index){
					case 3:
						x_offset = 10;
						y_offset = 30;
					break;
					case 4:
						x_offset = 20;
						y_offset = 40;
					break;
					case 9:
						x_offset = 6;
						y_offset = 26;
					break;
					case 10:
						x_offset = 4;
						y_offset = 18;
					break;
				}
			break;
			
			case (AT_TAUNT):
				x_offset = 0;
				y_offset = 0;
			break;
		}
	break;
}

x = player_id.x + x_offset*spr_dir;
y = player_id.y + y_offset;
spr_dir = player_id.spr_dir;



//Make time progress
state_timer++;

//Dying
if (shoulddie == true){
	player_id.killarticles = false;
    instance_destroy();
    exit;
}

if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_DSTRONG){
	shoulddie = true;
}

if(player_id.free = false or player_id.attack_invince == false){
	is_hittable = true;
} else {
	is_hittable = false;
}

//Custom hit code
with (pHitBox){
	if(player != other.player){
		if place_meeting(x,y,other) {
			with(other){
				player_id.head_hit = 10; 
				print("being hit (update)")
			}
		}
	}
}