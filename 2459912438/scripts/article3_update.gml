//
timer++;

if randomise_rate != 0 && randomise_frames != 0 && !(type == "head" && !change_face) && player_id.button_selected != "Fight" {
    if timer mod randomise_rate == 0 {
    	var randindex = 0;
    	switch type {
    		case "head": randindex = 1 break;
    		case "body": randindex = 2 break;
    		case "arm_left": randindex = 3 break;
    		case "arm_right": randindex = 4 break;
    		case "leg_left": randindex = 5 break;
    		case "leg_right": randindex = 6 break;
    	}
        pose_index = random_func_2(randindex, randomise_frames, true);
    } else if timer mod randomise_rate == 1 {
        image_index = pose_index;
    }
}

if !legs_on {
	max_leg_height = 2;
}
switch max_leg_height {
    case 0: yoffset = 60 break;
    case 1: yoffset = 30 break;
    case 2: yoffset = 0 break;
    case 3: yoffset = -20 break;
    case 4: yoffset = -40 break;
}

if !legs_on {
	if legs_on_timer < 80 {
		legs_on_timer++;
	}
	
	if legs_on_timer > 60 {
		yoffset += (legs_on_timer - 60) * 7;
	}
}

if leg_height != max_leg_height {
	leg_anim_mode = 1;
} else {
	leg_anim_mode = 0;
}

var shakexmod = 0;
if shake {
    shake_timer++;
    if shake_timer == 1 {
        smile = true;
    }
    var shakespd = 4;
    var shakesign = sign((shake_timer mod (shakespd*2)) - shakespd);
    if shakesign == 0 {
        shakesign = 1;
    }
    shakexmod = clamp(40 - floor(shake_timer/shakespd)*3, 0, 100) * shakesign;
    if shake_timer > 60 && shakexmod == 0 {
        shake = false;
        shake_timer = 0;
    }
}

switch type {
    case "head":
    sprite_index = sprite_get("head");
    if legs_on {
        var ymod = dsin(360*timer/40) * 4;
    }
    x = room_width/2 + shakexmod;
    y = 300 + ymod + yoffset;
    randomise_frames = 9;
    
    if shocked_face {
        image_index = 11;
    }
    var smile_arr = [9,10];
    var hurt_face = 15;
    if !arms_on && !legs_on && !shocked_face {
    	image_index = 14;
    } else if smile {
    	smile = false;
    	old_image_index = image_index;
    	if arms_on && player_id.hp_current > player_id.hp_total/3 {
	        image_index = smile_arr[player_id.attack_index mod 2];
    	} else {
    		image_index = hurt_face;
    	}
    }
    break;
    
    case "body":
    sprite_index = sprite_get("body");
    if legs_on {
        var xmod = -dcos(360*timer/40) * 1;
        var ymod = dsin(360*timer/40) * 2;
    }
    x = room_width/2 + xmod + shakexmod;
    y = 400 + ymod + yoffset;
    
    if heart2heart {
        if image_index < 5 && timer mod 10 == 0 {
            image_index++;
        }
        yoffset = 0;
    } else {
        if image_index > 0 && timer mod 10 == 0 {
            image_index--;
        }
    }
    if !arms_on {
        if timer mod 20 == 0 {
            create_body_smoke(floor(x + 60), floor(y - 40));
            create_body_smoke(floor(x - 60), floor(y - 40));
        }
    }
    break;
    
    case "arm_left":
    sprite_index = sprite_get("arms");
    if image_index == 1 {
    	depth = 6;
    } else {
    	depth = 7;
    }
    if arms_on {
        var xmod = -dcos(360*timer/40) * 1;
        var ymod = dsin(360*timer/40) * 2;
        x = room_width/2 - 64 + xmod + shakexmod;
        y = 376 + ymod + yoffset;
        randomise_frames = 6;
    } else {
        vsp += 0.1;
        hsp = -1;
        image_angle += 1;
        if y > room_height {
            sound_play(sound_get("impact"));
            instance_destroy(id);
            exit;
        }
    }
    break;
    
    case "arm_right":
    image_xscale = -3;
    sprite_index = sprite_get("arms");
    if image_index == 1 {
    	depth = 6;
    } else {
    	depth = 7;
    }
    if arms_on {
        var xmod = -dcos(360*timer/40) * 1;
        var ymod = dsin(360*timer/40) * 2;
        x = room_width/2 + 64 + xmod + shakexmod;
        y = 376 + ymod + yoffset;
        randomise_frames = 6;
    } else {
        vsp += 0.1;
        hsp = 1;
        image_angle -= 1;
        if y > room_height {
            sound_play(sound_get("impact"));
            instance_destroy(id);
            exit;
        }
    }
    break;
    
    case "leg_left":
    sprite_index = sprite_get("legs");
    if legs_on {
        x = room_width/2 - 16 + shakexmod;
        y = 452 + yoffset;
        image_yscale = 3 * (1 + dsin(360*timer/40)*0.03);
        image_angle = 0;
        if leg_anim_mode == 0 {
            image_yscale = 3 * (1 + dsin(360*timer/40)*0.03);
            image_angle = 0;
        } else {
            image_angle = 4 * (1 + dsin(360*timer/60));
            image_yscale = 3;
        }
        randomise_frames = 5;
    } else {
        vsp += 0.1;
        hsp = -1;
        image_angle += 1;
        if y > room_height {
            sound_play(sound_get("impact"));
            instance_destroy(id);
            exit;
        }
    }
    break;
    
    case "leg_right":
    if legs_on {
        image_xscale = -3;
        sprite_index = sprite_get("legs");
        x = room_width/2 + 16 + shakexmod;
        y = 452 + yoffset;
        if leg_anim_mode == 0 {
            image_yscale = 3 * (1 + dsin(360*timer/40)*0.03);
            image_angle = 0;
        } else {
            image_angle = 4 * (1 + dsin(360*timer/60));
            image_yscale = 3;
        }
        randomise_frames = 5;
    } else {
        vsp += 0.1;
        hsp = 1;
        image_angle -= 1;
        if y > room_height {
            sound_play(sound_get("impact"));
            instance_destroy(id);
            exit;
        }
    }
    break;
}

var was_hit = false;
var hitbox = instance_place(x, y, pHitBox);
if hitbox != noone && hitbox != last_hitbox {
    was_hit = true;
    last_hitbox = hitbox;
}

if was_hit {
    with obj_stage_article {
        if get_article_script(id) == 19 {
            mtt_hit = true;
        }
    }
}

#define create_body_smoke(smokex, smokey)
var smoke = instance_create(smokex, smokey, "obj_stage_article", 2);
    smoke.type = "body_smoke"
    smoke.spr_dir = sign(smokex - x);