//other_pre_draw

if(!instance_exists(other_player_id)){
    exit;
}

if("grabbed_player_obj" not in other_player_id){
return;
}
// Clone Draw logic
if(instance_exists(other_player_id.clone_object_ID)){
	//print("in clone loop");
	if(other_player_id.clone_object_ID.state == 22) // Fixes sprite render on frame 1
	{
		//print("in grab loop");
		with(other_player_id){
			//print("in draw loop");
			shader_start();
			draw_sprite_ext(sprite_get("dthrow"),clone_object_ID.image_index,clone_object_ID.x,clone_object_ID.y,spr_dir,1,0,c_white,1);
			shader_end();
		}
	}
}