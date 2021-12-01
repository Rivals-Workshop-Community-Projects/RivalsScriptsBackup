
if(get_gameplay_time() < 63){
	sprite_index = sprite_get("intro");
	image_index = floor(get_gameplay_time()/3);
}