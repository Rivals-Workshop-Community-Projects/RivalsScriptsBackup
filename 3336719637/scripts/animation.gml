//animation.gml
//this script runs every frame, but will also run last in line after all the other update scripts
//we use this script to mess more graphical things

//fix weird jittering that can happen when hud_offset tries to return to 0 - from the munophone
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state){
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding (not neccesary to use but it looks nicer)
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
	case PS_WALL_JUMP: //easy clinging (only works if you set can_wall_cling to true in init.gml)
		if (can_wall_cling)
		{
			//makes sure the cling_timer is consistent with the state_timer
			if (state_timer == 0) cling_timer = 0;
			if (clinging) cling_timer = state_timer;
			
			//sets image to the proper index
			if (clinging && image_index >= cling_frame) image_index = cling_frame; //when clinging and the image_index goes over the cling frame, force it back
			else //when not clinging, simply do the animation
			{
				image_index = lerp(
					image_index < cling_frame ? 0 : cling_frame, //depending on if we clinged for enough time to reach the cling frame, the lerp adapts
					image_number, //this is the maximum frame number in the strip
					(state_timer-cling_timer)/walljump_time //checks when the animation starts [state_timer - cling_timer] and for how long with [walljump_time]
				);
			}
		}
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
}

//rune F - auto turnaround - walk backwards sprites set
//NOTE: when creating/exporting the sprite, the character should face right unlike the rest of the animations
if (has_rune("F"))
{
	//here we check if we are in the walk state and if we are not facing the same way as the spr_dir
	//if this occurence happens, force a different walk animation
	//also should set the image_index to keep playing - the state_timer forces the animation to keep going
	if (state == PS_WALK && spr_dir != runeF_face_dir)
	{
		sprite_index = sprite_get("walkback_runeF");
		image_index = floor(walk_anim_speed*state_timer);
	}
}

switch state{
    case PS_FROZEN:
        spr_dir = prev_spr_dir;
        sprite_index = prev_sprite;
        image_index = prev_frame;
    break;
}

prev_spr_dir = spr_dir;
prev_sprite = sprite_index;
prev_frame = image_index;

if (get_player_color(player) == 11){
	set_victory_theme(sound_get("music_win_stink"));
}

if (get_player_color(player) == 17){
	set_victory_theme(sound_get("music_win_NMH"));
}

if (get_player_color(player) == 15){
	set_victory_theme(sound_get("music_win_TWEWY"));
}

if (get_player_color(player) == 16){
	set_victory_bg(sprite_get("winscreenrisk"));
}

if (get_player_color(player) == 7){
	set_victory_bg(sprite_get("winscreenEA"));
}

if (get_player_color(player) == 14){
	set_victory_theme(sound_get("music_win_yapyap"));
	set_victory_bg(sprite_get("winscreenYap"));
}

init_shader();