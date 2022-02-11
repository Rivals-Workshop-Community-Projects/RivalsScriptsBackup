somevar = 3; //???

sprite_index = sprite_get("lava_platform_create"); // VERY IMPORTANT, CRASHES IF YOU REMOVE IT
mask_index = sprite_get("lava_platform_mask")

anim_speed_creating = 1/4;
anim_speed_destroyed = 1/6;
anim_speed_active = 1/6;
state_timer = 0;

hitbox_created = false;

lifespan = 180; // 960
state = -1;
destroy_timer = 0;

x_pos_offset = 32; // checkfree functions

if (x > player_id.x){
	// print("x > player x")
	if (checkSpecificFree(player_id.x + x_pos_offset, player_id.y+4)
	|| checkRightFree()){
		while (checkRightFree()){
			x -= 4;
			// print("(floating) pillar x corrected to left")
			// print("x = " + string(x));
		}
	}
} else {
	// print("x < player x")
	if (checkSpecificFree(player_id.x - x_pos_offset, player_id.y+4)
	|| checkLeftFree()){
		while (checkLeftFree()){
			x += 4;
			// print("(floating) pillar x corrected to right")
			// print("x = " + string(x));
		}
	}
}

#define checkSpecificFree(xpos, ypos)
with(player_id){
	// print("position of player: " + string(x) + ", " + string(y))
	// print("position to check free: " + string(xpos) + ", " + string(ypos))
	if (!position_meeting(xpos, ypos, asset_get("par_block"))
	&& !position_meeting(xpos, ypos, asset_get("par_jumpthrough"))){
		return true;
	}
}
#define checkLeftFree
if (!position_meeting(x-x_pos_offset, y+4, asset_get("par_block"))
&& !position_meeting(x-x_pos_offset, y+4, asset_get("par_jumpthrough"))){
	return true;
}
#define checkRightFree
if (!position_meeting(x+x_pos_offset, y+4, asset_get("par_block"))
&& !position_meeting(x+x_pos_offset, y+4, asset_get("par_jumpthrough"))){
	return true;
}
#define checkMiddleFree
if (!position_meeting(x, y+4, asset_get("par_block"))
&& !position_meeting(x, y+4, asset_get("par_jumpthrough"))){
	return true;
}