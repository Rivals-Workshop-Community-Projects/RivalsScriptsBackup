//other_pre_draw

if(!instance_exists(other_player_id)){
    exit;
}

if("grabbed_player_obj" not in other_player_id){
return;
}

// Referenced sprite angle system from Amvira used on Daora
if(other_player_id.grabbed_player_obj == self && 
(other_player_id.attack == AT_EXTRA_3 ||
other_player_id.attack == 48) 
&& (other_player_id.state == PS_ATTACK_GROUND || other_player_id.state == PS_ATTACK_AIR)){
	
spr_angle = other_player_id.grabbed_player_obj_spr_angle;
//draw_x = other_player_id.grabbed_player_obj_draw_x;
//draw_y = other_player_id.grabbed_player_obj_draw_y;
}

if((other_player_id.state == PS_ATTACK_AIR || other_player_id.state == PS_ATTACK_GROUND) &&
(other_player_id.attack == AT_DTHROW && other_player_id.window != 1)) // Fixes sprite render on frame 1
{
	// Sprite Selection
	var behind_sprite_index;
	with(other_player_id){
		switch(attack){
			case AT_DTHROW:
		    	behind_sprite_index = sprite_get("dthrow_behind");
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
	}
}

// Clone Draw logic
if(instance_exists(other_player_id.clone_object_ID)){
	//print("in clone loop");
	if(other_player_id.clone_object_ID.state == 22) // Fixes sprite render on frame 1
	{
		//print("in grab loop");
		// Draw Section
		with(other_player_id){
			//print("in draw loop");
			shader_start();
			draw_sprite_ext(sprite_get("dthrow_behind"),clone_object_ID.image_index,clone_object_ID.x,clone_object_ID.y,spr_dir,1,0,c_white,1);
			shader_end();
		}
	}
}