if phone_attacking && attack == AT_DATTACK && window == 4 && window_timer == 0{
	image_index--;
	spawn_hit_fx(x, y, vfx_dattack_cart);
}



if hitpause && sprite_index == sprite_get("dair") image_index = 9;



if phone_attacking && attack == AT_USPECIAL && window == 2 image_index += (right_down - left_down) * spr_dir * -3;



//HUD arrow offset

switch(state){
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
            case AT_USTRONG:
                if (window == clamp(window, 3, 4) || (window == 5 && window_timer < 10)) hud_offset = round(lerp(hud_offset, 140, 0.25));
                break;
            case AT_DSPECIAL:
            	if (image_index == clamp(image_index, 2, 4)) hud_offset = round(lerp(hud_offset, 100, 0.25));
        }
        break;
}



if luma_pop_timer && hud_offset < 140 hud_offset = round(lerp(hud_offset, 140, 0.25));



//fix stupid jittering thing, thank u daniel fornaniel.

if (abs(hud_offset) < 1) hud_offset = 0;



if sprite_index == sprite_get("jump") && (instance_exists(luma) && luma.state == PS_ATTACK_AIR && luma.attack == AT_NSPECIAL_AIR && luma.window > 1){
	image_index = image_number - 1;
}



if sprite_index == sprite_get("dstrong") && image_index < 5 && spr_dir == -1 image_index += 9;

if (sprite_index == sprite_get("dspecial") || sprite_index == sprite_get("dspecial_air")) && image_index == 4 && dspecial_jump_sprite image_index++;



if state == PS_SPAWN{
	
    var frame_dur = 6;
    var amt_frames = 17;
    var dur = frame_dur * amt_frames;
    var delay = 0;
    var s_t = state_timer - delay + player * 5;
    
    if (s_t < dur){
        sprite_index = sprite_get("intro");
        image_index = max(lerp(-1, amt_frames, s_t / dur), 0);
        image_index = s_t / frame_dur * (s_t >= 0);
        draw_indicator = 0;
        
        if image_index < 9 && (taunt_pressed || taunt_down) toadette = 1;
    
	    switch(image_index){
	        case 2:
	            sound_play(sfx_mario_warp_box_enter);
	            break;
	        case 9:
	            sound_play(sfx_mario_warp_box_exit);
	            sound_play(sfx_mario_poof_1);
	            break;
	        case 15:
	            sound_play(land_sound);
	            break;
	    }
    }
	
}



if toadette{

	var found = 0;
	
	for (var i = 0; i < array_length(swapped_sprite_names) && !found; i++){
		if (sprite_index == sprite_get(swapped_sprite_names[i])){
			sprite_index = sprite_get("toadette_" + swapped_sprite_names[i]);
			found = 1;
		}
	}
	
	if (sprite_index == sprite_get("toadette_idle")) image_index = state_timer / 5;
	if (sprite_index == sprite_get("toadette_walk")) image_index = state_timer / 5;
	if (sprite_index == sprite_get("toadette_dash")) image_index = state_timer / 5;
	
}