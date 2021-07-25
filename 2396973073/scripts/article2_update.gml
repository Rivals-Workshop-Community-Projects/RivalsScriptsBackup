
//girlfriend

image_index = 1/2*((get_gameplay_time() - obj_stage_main.time_for_music_to_start ))*(obj_stage_main.bpm/3600) * image_number




if ((obj_stage_main.boyfriend_strip_name) = "bf_gfrapper" || obj_stage_main.stageskin = "corrupted") {

sprite_index = sprite_get("empty_sprite")
} else  sprite_index = sprite_get(obj_stage_main.girlfriend_strip_name)


image_blend = make_colour_hsv(255,0,150);
