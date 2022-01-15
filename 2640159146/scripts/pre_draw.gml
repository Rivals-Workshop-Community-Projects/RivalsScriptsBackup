if(burst==1 and state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_TECH_GROUND and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD and state != PS_WALL_TECH and state != PS_AIR_DODGE and state != PS_PARRY and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)){
    switch (attack){
    	case AT_FSTRONG_2:
    	case AT_DSTRONG:
    	case AT_DSPECIAL:
    	case AT_DSPECIAL_AIR:
    	case AT_NSPECIAL:
    	case AT_FSPECIAL:
    	case AT_USTRONG:
	   	case AT_USPECIAL:
	   	
    	    gpu_set_fog(true, trail_color, 1, 1);
			for(var t = 0; t < demon_trail_size; t++){
	        	var i = demon_trail[t];
	        	if(i.life > 0){
	            	draw_sprite_ext(i.sprite_index, i.image_index, i.x, i.y, (1+small_sprites)*i.spr_dir, 1+small_sprites, 0, i.color, (i.life/20)/1.5);
	        	}
	        }
	        draw_sprite_ext(sprite_index, image_index, x + 2 - random_func(4,8,true) , y - 2 + random_func(2,6,true)  , spr_dir*1+small_sprites, 1+small_sprites, 0 , c_black , 1);
            draw_sprite_ext(sprite_index, image_index, x - 2 + random_func(4,8,true) , y + 2 - random_func(2,6,true)  , spr_dir*1+small_sprites, 1+small_sprites, 0 , c_black , 1);
	        gpu_set_fog(false, c_white, 1, 1);
	        break;
    }
}
if get_player_color( player ) == 12 {
    FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
    FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
    FlagPart(c_white, 1/5, 2/5);
    gpu_set_fog(0, c_white, 0, 0);
}
if get_player_color( player ) == 13 {
    FlagPart(c_black, 1/3, 0);
	FlagPart(c_white, 1/3, 1/3);
    FlagPart(make_colour_rgb(251, 238, 31), 1/3, 2/3); // yellow
    gpu_set_fog(0, c_white, 0, 0);
}

if get_player_color( player ) == 19{
    shader_end();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, spr_angle, c_white, 1);
    maskMidder();
    if burst == 1 {
    draw_sprite_tiled_ext(sprite_get("gradient2"), get_gameplay_time()/4, draw_x, draw_y, 1, 1, c_white, 1)
    } else {
    draw_sprite_tiled_ext(sprite_get("gradient"), get_gameplay_time()/4, draw_x, draw_y, 1, 1, c_white, 1)  
    }
    maskFooter();
}
//================================================================================
#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}