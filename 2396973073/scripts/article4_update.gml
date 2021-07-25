
if ((obj_stage_main.character_strip_name) = "gfrapper") {
    
    sprite_index = sprite_get(obj_stage_main.boyfriend_strip_name);
    spr_dir = -1
}else { sprite_index = sprite_get(obj_stage_main.character_strip_name);
    spr_dir = 1

}


//Sets exceptions for character to play at half speed
if (obj_stage_main.character_strip_name == "valk" || obj_stage_main.character_strip_name == "roo" || obj_stage_main.character_strip_name == "tenru" ) {
    
    image_index = 1/4*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number
//exception to play at third speed
} else if (obj_stage_main.character_strip_name == "rhythmo" || obj_stage_main.character_strip_name == "yellowblob" || obj_stage_main.character_strip_name == "smiley") {
    
    image_index = 1/6*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number
//exception to play at QUARTER SPEED WHAT (LOL sans and tricky just joined you!!!!)
}else if (obj_stage_main.character_strip_name == "cheick" || obj_stage_main.character_strip_name == "sans"   || obj_stage_main.character_strip_name == "trickyrunt" ) {
    
    image_index = 1/8*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number
//FASTER IF TRICKY ZOOOOOOOM
}else if (obj_stage_main.character_strip_name == "tricky2" || obj_stage_main.character_strip_name == "tiky") {
    
    image_index = 3/2*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number
//DIFFERENT IF ITS THE WEIRD TRICKY WITH THE SUPER LONG STRIP FOR SOMMMEEE REASON
}else if (obj_stage_main.character_strip_name == "tricky") {
    
    image_index = 1/4*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number
//otherwise, set anim speed
}else




{
    
    image_index = 1/2*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number
}

image_blend = make_colour_hsv(255,0,150);
