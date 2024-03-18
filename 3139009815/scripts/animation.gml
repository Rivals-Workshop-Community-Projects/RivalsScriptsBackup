// make the nametag go higher while ustrong's fist is raised
if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2){
	hud_offset = lerp(hud_offset, 180, 0.5);
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

//lantern variables
var targetx = x + 48*spr_dir;
var targety = y-48+sin(lantern_anim_timer*.05)*10;
lantern_anim_timer += 1; 

//smooth animation
lantern_x = lerp(lantern_x, targetx, 0.2); 
lantern_y = lerp(lantern_y, targety, 0.2); 

	if attack != AT_FSPECIAL {
    spr_angle = 0
}

switch (state){
case PS_WALL_JUMP:// wall cling animation

        if clinging {image_index = 0; clingtime = state_timer} else {

        image_index = ((state_timer-clingtime)/walljump_time)*image_number
        }
    break;
}

/*
switch (state){
	case PS_IDLE_AIR:
		if (state_timer >=10){
			sprite_index = sprite_get("idle_air");
			image_index = (state_timer -3)*idle_anim_speed
		}
	break;
	case PS_FIRST_JUMP:
		if (state_timer >=40){
			sprite_index = sprite_get("idle_air");
			image_index = (state_timer -3)*idle_anim_speed
		}
	break;
}
*/