if ("clone_object_ID" not in self){ // 
    exit;
    }
    
init_shader();
shader_start();
if(!(instance_exists(clone_object_ID) || instance_exists(wisp_object_ID))){
    draw_sprite_ext(sprite_get( "clone_icon"), 1, temp_x + 200, temp_y + 12,-2,2,0,c_white,1);
}
else{
    draw_sprite_ext(sprite_get( "clone_icon"), 1, temp_x + 200, temp_y + 12,-2,2,0,c_dkgray,1);
}
shader_end();