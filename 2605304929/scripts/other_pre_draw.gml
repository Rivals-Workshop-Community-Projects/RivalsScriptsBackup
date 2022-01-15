//other_pre_draw

if(!instance_exists(other_player_id)){
    return;
}

if("grabbed_player_obj" not in other_player_id){
return;
}

// Referenced sprite angle system from Amvira
if(other_player_id.grabbed_player_obj == self 
&& ((other_player_id.attack == AT_FTHROW || 
other_player_id.attack == AT_FSPECIAL_2 || 
other_player_id.attack == AT_USPECIAL_2 || 
other_player_id.attack == AT_NSPECIAL_2 || 
other_player_id.attack == AT_DSPECIAL_2 ||
other_player_id.attack == AT_EXTRA_2 ||
other_player_id.attack == 48)
&& (other_player_id.state == PS_ATTACK_GROUND || other_player_id.state == PS_ATTACK_AIR))){
	
spr_angle = other_player_id.grabbed_player_obj_spr_angle;
draw_x = other_player_id.grabbed_player_obj_draw_x;
draw_y = other_player_id.grabbed_player_obj_draw_y;
}

if((other_player_id.state == PS_ATTACK_AIR || other_player_id.state == PS_ATTACK_GROUND) &&
((other_player_id.attack == AT_DTHROW && other_player_id.window != 1) || // Fixes sprite render on frame 1
other_player_id.attack == AT_EXTRA_2 || 
other_player_id.attack == AT_EXTRA_3))
{
	// Sprite Selection
	var behind_sprite_index;
	with(other_player_id){
		switch(attack){
			case AT_DTHROW:
		    	behind_sprite_index = sprite_get("dthrow_behind");
				break;
				
			case AT_EXTRA_2:
		    	behind_sprite_index = sprite_get("extra_2_behind")
				break;
				
			case AT_EXTRA_3:
		    	behind_sprite_index = sprite_get("extra_3_behind")
				break;
				
			default:
				break;
		}
	}
	
	// Draw Section
	with(other_player_id){
		shader_start();
		draw_sprite_ext(behind_sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
		shader_end();
		//print("in loop")
	}
}
/*
//Animation Layering for Nspecial boosted
if(other_player_id.attack == AT_EXTRA_3 &&(other_player_id.state == PS_ATTACK_AIR || other_player_id.state == PS_ATTACK_GROUND))
{
    with(other_player_id){
    	if(color_picker_alt_index == 0){ // Non Color Picker
	        shader_start();
	        draw_sprite_ext(sprite_get("extra_3_behind"),image_index,x,y,spr_dir,1,0,c_white,1);
	        shader_end();
    	}
    	if(color_picker_alt_index != 0){ // Color picker
    		shader_start();
	        draw_sprite_ext(sprite_get("extra_3_behind"),image_index,x,y,spr_dir,1,0,c_dkgray,1);
	        shader_end();
    	}
    }
}

//Animation Layering for Dspecial
if(other_player_id.attack == AT_DTHROW && (other_player_id.state == PS_ATTACK_AIR || other_player_id.state == PS_ATTACK_GROUND)){
    switch(other_player_id.window){
		case 2: // Draw in Front
		case 3:
		case 4:
            with(other_player_id){
            	if(color_picker_alt_index == 0){ // Non Color Picker
	                shader_start();
	                draw_sprite_ext(sprite_get("dthrow_back"),image_index,x,y,spr_dir,1,0,c_white,1);
	                shader_end();
            	}
               if(color_picker_alt_index != 0){ // Color picker
	               	shader_start();
	                draw_sprite_ext(sprite_get("dthrow_back"),image_index,x,y,spr_dir,1,0,c_dkgray,1);
	                shader_end();
               }
            }
    	break;
		default:
			break;
	}
}
*/