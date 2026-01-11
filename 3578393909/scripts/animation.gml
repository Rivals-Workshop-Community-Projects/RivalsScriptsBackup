//animation.gml
//this script runs every frame, but will also run last in line after all the other update scripts
//we use this script to mess more graphical things

//fix weird jittering that can happen when hud_offset tries to return to 0 - from the munophone
if abs(hud_offset) < 1 hud_offset = 0;

switch state{
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding (not neccesary to use but it looks nicer)
		if !free && image_index == 0{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
	break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		//switch attack{
			//case AT_NSPECIAL:
				
			//break;
		//}
	break;
	case PS_WALL_JUMP:
		if state_timer < 4 image_index = (wall_frames / 4);
	break;
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland

		var timer_to_index_math = state_timer / clamp(parry_distance * 8.8, 60, 110);
		//how did i get to this math?
		//	  parry_distance returns the distance which the player was parried from
		//	  if the parry distance is 150 and under, the parried state will be 60 frames long
		//	  if the parry distance is 590 and over, the parried state will be 110 frames long
		//	  590 - 150 = 440 (gap between the min and max affected distances)
		//	  110 - 60 = 50 (gap between the min and max parry stun time)
		//	  440 : 50 = 8.8 (the mulitplier in which parry_distance knows how many frames to add to the parry stun)
		//	  clamp will limit the math to any number in between 60 and 110, the frame limits (otherwise the player may have loop the animation which we don't want)
		//	  state_timer is divided by the complex math above so it dynamically changes the image below

		if (extended_parry_lag) image_index = lerp(0, image_number, timer_to_index_math);
	break;
	case PS_FLASHED: case PS_FROZEN: case PS_CRYSTALIZED:
		hurt_img = 1;
	break;
	case PS_BURIED:
		hurt_img = 2;
	break;
}