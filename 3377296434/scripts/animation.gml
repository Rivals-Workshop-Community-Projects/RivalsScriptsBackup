if (state == PS_ATTACK_AIR || PS_ATTACK_GROUND){
    if (attack == AT_UTILT && window >= 2){
        hud_offset = round(lerp(hud_offset, 80, 0.5));
    }
    if (attack == AT_BAIR && window >= 1){
        hud_offset = round(lerp(hud_offset, 70, 0.5));
    }
    if (attack == AT_UAIR && window >= 2){
        hud_offset = round(lerp(hud_offset, 90, 0.5));
    }
}

if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_AIR_DODGE || state == PS_PARRY){
	hud_offset = round(lerp(hud_offset, 0, 1));
}

if (!on_brick){
    if (state == PS_IDLE){
	changeAnim(sprite_get("idle_gus"), sprite_get("idle"));
	var frames = 8;
    var frame_dur = 7;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }
    if (state == PS_WALK){
	changeAnim(sprite_get("walk_gus"), sprite_get("walk"));
	var frames = 8;
    var frame_dur = 6;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }
    if (state == PS_WALK_TURN){
	changeAnim(sprite_get("walkturn_gus"), sprite_get("walkturn"));
    }
    if (state == PS_DASH_START){
    	sprite_index = sprite_get("dashstart_gus");
	/*changeAnim(sprite_get("dashstart_gus"), sprite_get("dashstart"));
	var frames = 3;
    var frame_dur = 4;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);*/
    }
    if (state == PS_DASH){
	changeAnim(sprite_get("dash_gus"), sprite_get("dash"));
	var frames = 6;
    var frame_dur = 6;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }
    if (state == PS_DASH_STOP){
	changeAnim(sprite_get("dashstop_gus"), sprite_get("dashstop"));
	var frames = 3;
    var frame_dur = 2;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }
    if (state == PS_DASH_TURN){
	changeAnim(sprite_get("dashturn_gus"), sprite_get("dashturn"));
	var frames = 4;
    var frame_dur = 3;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
    }
    if (state == PS_JUMPSQUAT){
	changeAnim(sprite_get("jumpstart_gus"), sprite_get("jumpstart"));
    }
    if (state == PS_LAND){
	changeAnim(sprite_get("jumpstart_gus"), sprite_get("land"));
    }
    if (state == PS_PRATLAND){
	sprite_index = sprite_get("jumpstart_gus");
    }
    if (state == PS_LANDING_LAG){
	changeAnim(sprite_get("jumpstart_gus"), sprite_get("landinglag"));
    }
    if (state == PS_WAVELAND){
	changeAnim(sprite_get("jumpstart_gus"), sprite_get("waveland"));
    }
    if (state == PS_FIRST_JUMP){
	sprite_index = sprite_get("jump_gus");
	var frames = 4;
    var frame_dur = 8;
	    if (state_timer < 20){
	    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
		} else image_index = 3;
    }
    if (state == PS_IDLE_AIR){
	changeAnim(sprite_get("jump_gus"), sprite_get("jump"));
	image_index = 3;
    }
    if (state == PS_AIR_DODGE){
	changeAnim(sprite_get("airdodge_gus"), sprite_get("airdodge"));
    }
    if (state == PS_DOUBLE_JUMP){
	changeAnim(sprite_get("jump_gus"), sprite_get("doublejump"));
	var frames = 4;
    var frame_dur = 8;
	    if (image_index < 3){
	    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	    } else image_index = 3;
	}
	if (state == PS_WALL_JUMP){
		changeAnim(sprite_get("walljump_gus"), sprite_get("walljump"));
	}
	if (state == PS_ROLL_BACKWARD){
		changeAnim(sprite_get("roll_gus"), sprite_get("roll_backward"));
	}
	if (state == PS_ROLL_FORWARD){
		changeAnim(sprite_get("roll_gus"), sprite_get("roll_forward"));
	}
	if (state == PS_TECH_FORWARD){
		changeAnim(sprite_get("roll_gus"), sprite_get("roll_forward"));
	}
	if (state == PS_TECH_BACKWARD){
		changeAnim(sprite_get("roll_gus"), sprite_get("roll_backward"));
	}
	if (state == PS_PARRY_START || state == PS_PARRY){
		sprite_index = sprite_get("parry_gus");
	}
	if (state_cat == SC_HITSTUN || state == PS_PRATFALL || state == PS_TUMBLE){
		sprite_index = sprite_get("hurt_gus");
	}
	if (state == PS_TECH_GROUND){
		changeAnim(sprite_get("parry_gus"), sprite_get("tech"));
	}
} else if (state == PS_FIRST_JUMP){
	sprite_index = sprite_get("jump");
}

#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}