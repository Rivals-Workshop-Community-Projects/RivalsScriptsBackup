






if ((obj_stage_main.character_strip_name) = "gfrapper") {
    
    sprite_index = sprite_get("gfrapper");
    spr_dir = -1
}else  {
    
    
    sprite_index = sprite_get(obj_stage_main.boyfriend_strip_name);
 spr_dir = 1
}


image_index = 1/2*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number

image_blend = make_colour_hsv(255,0,150);
