// Knuckles DE Animation
if (state == PS_IDLE_AIR) {
	if (has_uppercutted && image_index == 3) {
		image_index = 4;
	}
}

if (state == PS_WALL_JUMP && wall_jump_timer == 0) {
	if (!ledge_getup) {
		if (wall_climbing != 0) {
			var percentage = ((wall_climb_timer%wall_climb_frames)/wall_climb_frames);
			if (wall_climbing == -1) {
				image_index = wall_climb_anim_frames * percentage;
			} else {
				image_index = wall_climb_anim_frames - (wall_climb_anim_frames * percentage);
			}
		} else {
			image_index = wall_climb_idle_frame;
		}
	} else {
		var percentage = ((ledge_getup_timer%ledge_getup_frames)/ledge_getup_frames);
		image_index = ledge_getup_frame_start + ledge_getup_anim_frames * percentage;
	}
}

if (state == PS_WALL_JUMP && wall_jump_timer != 0) {
	image_index = wall_climb_idle_frame + 1 + wall_jump_anim_frames * (wall_jump_timer/walljump_time);
}

if (abs(hud_offset) < 1) hud_offset = 0;

switch(state){
    case PS_FIRST_JUMP:
        if(state_timer < 30)image_index = floor(state_timer / 6);
    break;
    case PS_ATTACK_AIR:case PS_ATTACK_GROUND:
        if(attack == AT_UTILT){
            if(window == 1)hud_offset = lerp(hud_offset, -80, 0.1);
            if(window >= 2)hud_offset = lerp(hud_offset, 160, 0.1);
        }
        if(attack == AT_USTRONG){
            if(window == 1)hud_offset = lerp(hud_offset, -80, 0.1);
            if(window == 3 || window == 4 && window_timer < 12)hud_offset = lerp(hud_offset, 160, 0.1);
        } 
        if(attack == AT_UAIR){
            if(window == 2 || window == 3 && window_timer < 2)hud_offset = lerp(hud_offset, 140, 0.1);
        } 
        if(attack == AT_USPECIAL){
            if(window == 1)hud_offset = lerp(hud_offset, -80, 0.1);
            if(window == 3 || window == 4 && window_timer < 12)hud_offset = lerp(hud_offset, 160, 0.1);
        }         
    break;
}