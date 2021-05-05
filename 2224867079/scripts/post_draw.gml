//post-draw
user_event(12);

gpu_set_blendmode(bm_normal);

var alpha_screen = clamp(black_screen_timer/5-1,0,1);
draw_set_alpha(alpha_screen);
draw_rectangle_color(0,0,room_width,room_height,logRed,logRed,logRed,logRed,false);
draw_set_alpha(1);

//Galaxy stuff is stolen from monarch lol
// Fstrong screen
if (black_screen == true)
{
	if(black_screen_timer < 10) black_screen_timer+=2;
	if(hit_player_obj != noone) draw_sprite_ext(hit_player_obj.sprite_index,0,hit_player_obj.x,hit_player_obj.y,hit_player_obj.spr_dir * (hit_player_obj.small_sprites+1),(hit_player_obj.small_sprites+1),0,c_white,1);
}
else
{
	if(black_screen_timer > 0) black_screen_timer--;
}


// Fstrong fx
if (black_screen == true) 
{
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*1,1,0,c_black,1)
    with(oPlayer) if(player != other.player) draw_sprite_ext(sprite_index,image_index,x,y,spr_dir* 1,1,0,c_black,1)
}

