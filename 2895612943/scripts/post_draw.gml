//crash prevention line
//draw_sprite(currensprite, currentimage, x-100, y-100)

if free && state == PS_ATTACK_AIR {
    if (attack == AT_DTILT || attack == AT_TAUNT_2 || attack == AT_FTILT || attack == AT_UTILT || attack == AT_JAB || attack == AT_DATTACK || attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_TAUNT)
    draw_sprite(sprite_get("gravcancel"), (floor(get_gameplay_time()/4) % 32), x, y + 63)
}

if(move_cooldown[AT_USPECIAL_2] > 0){
    draw_sprite_ext(sprite_get("arrow"), 0, x - 1, y - char_height - hud_offset - 24, 2, 2, 0, c_white, 1);
}

//article flash white when swapping
if(assist != noone && assist.white_flash > 0){
	gpu_set_fog(true,c_white,0,1);
	draw_sprite_ext(assist.sprite_index, assist.image_index, assist.x, assist.y, 
	    assist.image_xscale * assist.spr_dir, assist.image_yscale, 0, c_white, assist.white_flash * 0.1);
	
	gpu_set_fog(false,c_white,0,0);
}


//offscreen indicator code (its from Tester)------------------------------------
if(instance_exists(disk_obj) && !snb_playtest){

	//capture area + sprite offsets
	var view_left = view_get_xview() + 52; //0, y
	var view_right = view_get_wview() + view_get_xview() - 52; //screenborder, y
	var view_up = view_get_yview() + 32; //x, 0
	var view_down = view_get_hview() + view_get_yview() - 80; //x, screenborder
	
	//if the article is inside of the screen [article_offscreen] is false	
	article_offscreen = !(disk_obj.x >= view_left - 64 && disk_obj.x <= view_right + 64 && disk_obj.y >= view_up - 32 && disk_obj.y <= view_down + 85);

    if (article_offscreen)
    {
        //sets article depth to a very large negative number so the indicator appears in front of things
        //we are doing this because article#_post_draw relies on the article's depth too
        var orig_depth = depth;
        depth = -200;
        
        //screen limits x - this decides how far the indicator should follow the article on the X axis
        if (disk_obj.x < view_left - 65) offscreen_x_pos = view_left - 16;
        else if (disk_obj.x > view_right + 65) offscreen_x_pos = view_right + 16;
        else offscreen_x_pos = disk_obj.x;

        //screen limits y - this decides how far the indicator should follow the article on the Y axis
        if (disk_obj.y < view_up + 24) offscreen_y_pos = view_up  + 2;
        else if (disk_obj.y > view_down + 24) offscreen_y_pos = view_down + 42;
        else offscreen_y_pos = disk_obj.y;
        //image angles - decides at which coordinates should the article change the arrow sprite
        if (disk_obj.x < view_left - 63)
        {
            if (disk_obj.y < view_up - 33) disk_obj.offscreen_image = 1;
            else if (disk_obj.y > view_down + 85) disk_obj.offscreen_image = 7;
            else  disk_obj.offscreen_image = 0;
        }
        else if (disk_obj.x > view_right + 63)
        {
            if (disk_obj.y < view_up - 33) disk_obj.offscreen_image = 3;
            else if (disk_obj.y > view_down + 85) disk_obj.offscreen_image = 5;
            else  disk_obj.offscreen_image = 4;
        }
        else
        {
            if (disk_obj.y < view_up - 33) disk_obj.offscreen_image = 2;
            else if (disk_obj.y > view_down + 85) disk_obj.offscreen_image = 6;
        }
		
        draw_sprite_ext(sprite_get("hud_offscreen_arrow"), disk_obj.offscreen_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, get_player_hud_color(player), 1);
        shader_start();
        draw_sprite_ext(sprite_get("disc"), 0 + (is_bite * 7), offscreen_x_pos, offscreen_y_pos, 1, 1, 0, c_white, 1);
        shader_end();
    }
    else depth = orig_depth; //reset depth back to normal when it's on screen
}