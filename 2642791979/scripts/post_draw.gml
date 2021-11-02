//
if get_gameplay_time() >= 60 {
	draw_sprite_ext(sprite_index,image_index,x + draw_x,y,spr_dir,1,0,-1,1)
}


if !free && state_timer > 120 && state == PS_PRATLAND {
	
	draw_sprite_ext(sprite_get("anypercent"),20 + ((state_timer - 120)/5.4),x,y - 100,1,1,0,-1,1)
	
}