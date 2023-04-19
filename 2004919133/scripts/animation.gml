if (attack == AT_DSPECIAL_AIR && state == PS_ATTACK_AIR){
    hurtboxID.sprite_index = sprite_get("dspecial_air_hurt");
}

if (attack == AT_DSPECIAL && state == PS_ATTACK_GROUND){
    hurtboxID.sprite_index = sprite_get("dspecial_hurt");
}

if (attack == AT_EXTRA_1 && state == PS_ATTACK_GROUND){
    hurtboxID.sprite_index = sprite_get("dattack_scoot_hurt");
}

if (attack == AT_NSPECIAL_2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    hurtboxID.sprite_index = sprite_get("nspecial_hook_hurt");
    
    if (!hitpause && (window == 2 || window == 3)){
	    if (grabbed != -4){
	        if (grabbed.state == PS_HITSTUN){
   	
	        	if (hookshot_hitbox != -4){
		        	var hookshot_x = hookshot_hitbox.x;
		        	var hookshot_y = hookshot_hitbox.y;
		        	
		            grabbed.hitstop = 4;
		            grabbed.x = lerp(grabbed.x + 10*(hookshot_hitbox.spr_dir), hookshot_x, .5);
		            grabbed.y = lerp(grabbed.y + 40, hookshot_y, .5);
	        	}
	        	
	        }
	    }
	}
}

if ((attack == AT_USPECIAL || attack == AT_USPECIAL_2) && window == 5 && state == PS_ATTACK_AIR){
    if (uspecial_timer mod 32 == 0){
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
    }
    if (uspecial_timer mod 32 == 8){
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
        set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
    }
    if (uspecial_timer mod 32 == 16){
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
        set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
    }
    if (uspecial_timer mod 32 == 24){
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
        set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 10);
    }
}


if (badge_slot_1 == 2 || badge_slot_2 == 2 || badge_slot_3 == 2){
    changeAnim(spr_dash, sprite_get("dash"));
    changeAnim(spr_dashstart, sprite_get("dashstart"));
    changeAnim(spr_dashstop, sprite_get("dashstop"));
    changeAnim(spr_dashturn, sprite_get("dashturn"));
}


if (sprite_index == spr_dash){
    var frames = 8;
    var frame_dur = 4;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}




#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}