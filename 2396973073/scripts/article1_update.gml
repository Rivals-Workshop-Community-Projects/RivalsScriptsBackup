
//boombox

//image_number is the number of images



if obj_stage_main.stageskin = "normal" {
sprite_index = sprite_get("speaker");
    depth = 12
parallax_x = 0
    parallax_y = 0
        image_blend = make_colour_hsv(255,0,150);

    image_index = ((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number

} else if obj_stage_main.stageskin = "corrupted" {
sprite_index = sprite_get("bg_corruption");
depth = 33
parallax_x = -1.1
    parallax_y = -1.1
    
    image_index = 1/10*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number

image_blend = make_colour_hsv(255,0,255);

} else if obj_stage_main.stageskin = "bad" {
    
   sprite_index = sprite_get("speakerbad");
depth = 12
parallax_x = 0
    parallax_y = 0
        image_index = 1/2*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number

    image_blend = make_colour_hsv(255,0,150);

} else if obj_stage_main.stageskin = "starcatcher" {
    
   sprite_index = sprite_get("speaker_star");
depth = 12
parallax_x = 0
    parallax_y = 0
        image_index = ((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number

    image_blend = make_colour_hsv(255,0,150);

}







