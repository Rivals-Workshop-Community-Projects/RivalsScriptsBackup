//Cleric Beast
time++;

switch(state){
	case 0://Downtime
		x = get_marker_x(1);
		y = get_marker_y(1);
		sprite_index = sprite_get("cleric_far");
		image_index = 0;
		depth = 32;
		if(time >= downtime){
			sound_play(sound_get("cleric_scream1"));
			state++;
			time = 0;
			hsp = 3;
			vsp = -9;
		}
	break;
	case 1://Jump onto background building
		if(goingup == true){//Leaping up
			vsp += 0.2;
			hsp -= 0.02;
			if(vsp >= 0){
				goingup = false;
				image_index = 1;
			}
		} else {//Falling onto background part
			if(y >= get_marker_y(2)){//Landing
				hsp = 0;
				vsp = 0;
				y = get_marker_y(2);
				x = get_marker_x(2);
				image_index = 2;
				sound_play(sound_get("cleric_stomp2"));
				shake_camera(10,5);
				state++;
			} else {//Still falling
				vsp += 0.2;
				hsp -= 0.1;
			}
		}
	break;
	case 2://Landing lag background
		image_index += 0.125
		if(image_index >= 4){
			state++;
		}
	break;
	case 3://Wait on background building
		if(goingup == true){//Breathing animation
			image_index += 0.12;
		} else {
			image_index -= 0.12;
		}
		if(image_index >= 6.8){
			goingup = false;
		} else if (image_index <= 4.2){
			goingup = true;
		}
		with(oPlayer){//detect player area
			if((x > get_marker_x(3) - 70) and (x < get_marker_x(3) + 70) and (y > get_marker_y(3) - 200)){
				with(other){
					state = 4;
					time = 0;
					image_index = 7
				}
			}
		}
	break;
	case 4://Howl when player touches center of stage, then jump
		if(time == 10){
			image_index = 8;
			sound_play(sound_get("cleric_scream2"));
		}
		if(time >= 10 and time <= 190){
			shake_camera(5,10);
		}
		if(time == 170){
			image_index = 8;
		}
		if(time == 180){
			image_index = 2;
		}
		if(time == 185){
			image_index = 3;
		}
		if(time >= 190){
			image_index = 0;
			vsp = -15
			if(y <= -300){
				state++;
				depth = 0;
				sprite_index = sprite_get("cleric_close");
				image_index = 0;
				vsp = 15;
				sound_play(sound_get("cleric_scream3"));
				drop_hitbox = create_hitbox(AT_JAB, 1, x, y - 40);
				with(obj_stage_article){
					if(variable_instance_exists(id, "shadow_grow")){
						shadow_grow = true;
						//y = get_marker_y(5);
					}
				}
			}
		}
	break;
	case 5://Fall onto stage
		vsp += 0.5;
		drop_hitbox.x = x;
		drop_hitbox.y = y - 40;
		if(y >= get_marker_y(3)){
			state++;
			image_index = 1;
			shake_camera(10,15);
			sound_play(sound_get("cleric_stomp1"));
			vsp = 0;
			time = 0;
			if (instance_exists(drop_hitbox)){
				instance_destroy(drop_hitbox);
			}
			land_hitbox = create_hitbox(AT_JAB, 2, x-30, y - 40);
			spawn_base_dust(x -60,y-4,"dash_start",1)
			spawn_base_dust(x +60,y-4,"dash_start",-1)
		}
	break;
	case 6://Landing lag
		if(time > 15 && time < 30){
			image_index = 4;
			if (instance_exists(land_hitbox)){
				instance_destroy(land_hitbox);
			}
		}
		if(image_index >= 9.5){
			image_index = 9.55;
			vsp = -30;
			with(obj_stage_article){
				if(variable_instance_exists(id, "shadow_grow")){
					shadow_grow = false;
				}
			}
			if(y >= get_marker_y(3)){
				spawn_base_dust(x,y-8,"jump",1)
			}
		} else {
			image_index += 0.2;
		}
		if(y <= -400){
			time = 0;
			state = 0;
			vsp = 0;
			goingup = true;
		}
	break;
}

#define spawn_base_dust
/// @param x
/// @param y
/// @param name
/// @param dir=0
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;