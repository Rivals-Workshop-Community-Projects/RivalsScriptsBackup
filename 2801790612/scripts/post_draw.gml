// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

//draw_debug_text(x, y, string(12 % 25))

// Shamelessly ripped from Bat Bat for your Pepsi Pleasure.
if move_cooldown[AT_FSPECIAL_2] > 80 {
	shader_start();    
    draw_set_alpha((move_cooldown[AT_FSPECIAL_2] - 80)/20);
    draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false)
    draw_set_alpha(1);
    	
    draw_sprite_ext(sprite_get("galaxy"),
	0,room_width/2 - 20 + random_func(1,40,true),
	room_height/2 - 20 + random_func(2,40,true),
    1,
    1,
	0,
	-1, 
	(move_cooldown[AT_FSPECIAL_2] - 80)/20 - 0.5 )

         
    draw_sprite_ext(sprite_get("galaxy"),
	0,
	room_width/2 - 20 + random_func(3,40,true),
	room_height/2 - 20 + random_func(4,40,true),
    (move_cooldown[AT_FSPECIAL_2] - 80)/10,
    (move_cooldown[AT_FSPECIAL_2] - 80)/10,
	move_cooldown[AT_FSPECIAL_2]*4 ,
	-1, 
	(move_cooldown[AT_FSPECIAL_2] - 80)/10 - 0.4)	
    	
    draw_sprite_ext(sprite_get("galaxy"),
	0,
	room_width/2 - 20 + random_func(3,40,true),
	room_height/2 - 20 + random_func(4,40,true),
    (move_cooldown[AT_FSPECIAL_2] - 80)/16,
    (move_cooldown[AT_FSPECIAL_2] - 80)/16,
	move_cooldown[AT_FSPECIAL_2]*-8,
	-1, 
	(move_cooldown[AT_FSPECIAL_2] - 80)/10 - 0.4)
    
        
    draw_sprite_ext(sprite_get("galaxy"),
	0,
	room_width/2 - 20 + random_func(3,40,true),
	room_height/2 - 20 + random_func(4,40,true),
    (move_cooldown[AT_FSPECIAL_2] - 80)/30,
    (move_cooldown[AT_FSPECIAL_2] - 80)/30,
	0,
	-1, 
	(move_cooldown[AT_FSPECIAL_2] - 80)/10 - 0.6)	
    	
    draw_sprite_ext(sprite_get("galaxy"),
	0,
	room_width/2 - 20 + random_func(3,40,true),
	room_height/2 - 20 + random_func(4,40,true),
    (move_cooldown[AT_FSPECIAL_2] - 80)/20,
    (move_cooldown[AT_FSPECIAL_2] - 80)/20,
	0,
	-1, 
	(move_cooldown[AT_FSPECIAL_2] - 80)/10 - 0.6)    
        	    
    draw_sprite_ext(sprite_get("galaxy"),
	0,
	room_width/2 - 20 + random_func(1,40,true),
	room_height/2 - 20 + random_func(2,40,true),
    1,
    1,
	0,
	-1,
	0.1 )
	shader_end();

	shader_start();      
    	draw_sprite_ext(sprite_index, image_index, 
    	x - (x - room_width/2)/4 - 10 + random_func(3,20,true), 
    	y - (room_height/2 - y)/4 - 10 + random_func(4,20,true), 
    	spr_dir*2, 2, 0, -1, (move_cooldown[AT_FSPECIAL_2] - 80)/20 )
	shader_end();

	with hit_player_obj shader_start();    
    	draw_sprite_ext(hit_player_obj.sprite_index, hit_player_obj.image_index,  
    	x - (x - room_width/2)/3 - farx*2 - 10 + random_func(1,20,true)
    	,y - (room_height/2 - y)/4 - fary*2 - 10 + random_func(2,20,true)
    	, (hit_player_obj.small_sprites+1) * 2 * hit_player_obj.spr_dir, hit_player_obj.small_sprites+1 * 2, 0 , -1 , (move_cooldown[AT_FSPECIAL_2] - 80)/40);
	with hit_player_obj shader_end();
}



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;