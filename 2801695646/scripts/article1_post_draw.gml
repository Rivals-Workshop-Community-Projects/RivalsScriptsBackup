// Article 1 post draw


// Debug Stuff
//draw_sprite_ext(mask_index, 0, x, y, 1, 1, -0, c_white, 0.5);
/*var _velocity = abs(point_distance(x, y, x + hsp_float, y + vsp_float));
draw_debug_text(x, y + 20, string(_velocity));*/
//draw_debug_text(x, y + 20, string(ent_idx));


var _gameplay_time = get_gameplay_time();
var ent_timer = _gameplay_time - ent_spawn_time - 1;									// Calculate the timer

//======================================================
// GRENADE EXPLOSION WARNING
//======================================================

var _warning_col_idx = floor((ent_timer / 4 ) % 4);                             // Get the current frame index. Loops from 0-2. 0-1 = no colour change; 2 = turn white; 3 = turn black.
var _warning_col = c_white;

if (_warning_col_idx > 1) {                                                     // If not on frame index 0 or 1...
    
    switch (_warning_col_idx) {                                                 // Set the colour to draw.
        case 2: _warning_col = c_white; break;
        case 3: _warning_col = c_black; break;
    }
    
    if (gren_explosionwarning) {                                                // Use the entity's sprite alpha as a transparency mask to draw the colour.
        gpu_push_state();
        maskHeader();
    	draw_self(); // Use the alpha of the entity's current sprite.
    	maskMidder();
    	draw_rectangle_color(0,0, room_width, room_height, _warning_col, _warning_col, _warning_col, _warning_col, false); // Draw the colour of the warning flash.
    	maskFooter();
    	gpu_pop_state();
    }
    
}


//======================================================
// CLAYMORE LASERS
//======================================================
if (ent_idx == player_id.ENT_PLNT_CLAYMORE) {                                                   // If this entity is a claymore...
    
    if (!free && ent_timer > 50) {                                                              // If the sensors are active...
        
        // Draw Trigger Box (test)
        //draw_rectangle_color(x + 8 * spr_dir, y, x + 40 * spr_dir, y - 30, c_green, c_green, c_green, c_green, false);
        
        // Draw Lasers
        gpu_push_state();
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("ent_plantable_claymore_fx"), 0, x, y, 1 * spr_dir, 1, 0, c_white, 1);    // Draw the claymore lasers.
        gpu_set_blendmode(bm_normal);
        gpu_pop_state();
    }
    
}

/*
//======================================================
// DRAW TRANSPARENT SMOKE LAYER.
//======================================================
if (ent_idx == player_id.ENT_ELMT_SMOKE) {
    
    // TODO: Un-hard-code this!
    
    // Get sprite index
    var _spr_idx = sprite_get("ent_smoke");                                     // Get smoke sprite
    // Get image index
    var _anim_length = anim_length;                                             // Get smoke animation length.
    var _t = (get_gameplay_time() % anim_length) / anim_length;                 // Set the image index loop duration.
    var _img_idx = lerp(0, 4, _t);                                              // Loop the image index from frames 1 to 4.
    
    // Check if this is the latest smoke entity spawned.
    var _highest_num = 0;
    with (obj_article1) {                                                       // Get the other articles.
        if player_id == other.player_id {                                       // If the owner of this article is the owner of the other articles...
            
            if (ent_idx == player_id.ENT_ELMT_SMOKE) {
                
                if ( ent_num > _highest_num ) _highest_num = ent_num;           // Increase the highest number variable if we detect a smoke entity.
               
            }
        }
    }
    
    
    
    // Draw the front smoke layers.
    if (ent_num == _highest_num) {                                              // If this is the latest smoke entity spawned...
        
        
        //---------------------------------
        // Shader Code by Frtoud
        //---------------------------------
        
        gpu_push_state();
        
            //"antimask" Header
            gpu_set_blendenable(false);
            gpu_set_colorwriteenable(false,false,false,true);
            
            draw_set_alpha(0.5); //set draw allowed everywhere
            draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
            
            gpu_set_blendenable(true);
            gpu_set_colorwriteenable(true,true,true,true);
            
            with (obj_article1) {                                                       // Get the other articles.
                if player_id == other.player_id {                                       // If the owner of this article is the owner of the other articles...
                    if (ent_idx == player_id.ENT_ELMT_SMOKE) {
                        
                        //for each smoke do
                        gpu_set_colorwriteenable(true,true,true,false);
                        gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
                        gpu_set_alphatestenable(true);
                        draw_sprite_ext(_spr_idx, _img_idx, x, y, 1, 1, 0, c_white, 1);
                        
                        gpu_set_colorwriteenable(false,false,false,true);
                        gpu_set_blendmode_ext(bm_inv_src_alpha,bm_inv_src_alpha);
                        draw_sprite_ext(_spr_idx, _img_idx, x, y, 1, 1, 0, c_white, 1);
                        
                    }
                }
            }
            
            //Footer
            gpu_set_colorwriteenable(true,true,true,true);
            gpu_set_alphatestenable(false);
            gpu_set_blendmode(bm_normal);
            draw_set_alpha(1);
        
        gpu_pop_state();
        
    }
    
}
*/

//======================================================
// DRAW PICKUP ITEM TEXT
//======================================================
if (is_pickup) {
    
    if (pickup_collected) {														// If the item is collected...
	    
	    var _t = get_gameplay_time() - pickup_collected_time;
	    var _t_normalized = _t / pickup_collected_fade_legnth;
	    var _alpha = clamp(lerp(3, 0, _t_normalized), 0, 1);
	    
	    var _str_w_name = player_id.dict_equipment[pickup_item_idx].name;
	    var _str_supp = "";
	    if (!pickup_gives_item && pickup_given_suppressors > 0) _str_supp = "Sp/";  // If the entity ONLY gives suppressors, display the "Sp/" text.
	    var _str_ammo = "";
	    if (!pickup_gives_item && pickup_given_ammo > 0) _str_ammo = " AMMO";		// If the entity ONLY gives ammo, display the " AMMO" text.
	    
	    var _pickup_text = _str_supp + string_upper(_str_w_name) + _str_ammo;		// Set the pickup text.
	    
	    // Draw Fading Pickup Text
	    textDraw(x, y - 20, "fName", c_white, 20, 200, fa_center, 1, false, _alpha, _pickup_text );
	    
	}
	
	else if (pickup_lock_time != -1) {											// If the item is NOT collected, and the item is locked...
    	
    	var _t = get_gameplay_time() - pickup_lock_time;
	    var _t_normalized = _t / pickup_lock_fade_legnth;
	    var _alpha = clamp(lerp(3, 0, _t_normalized), 0, 1);
    	
    	var _str_w_name = player_id.dict_equipment[pickup_item_idx].name;
	    var _str_supp = "";
	    if (!pickup_gives_item && pickup_given_suppressors > 0) _str_supp = "Sp/";  // If the entity ONLY gives suppressors, display the "Sp/" text.
	    var _str_ammo = "";
	    if (!pickup_gives_item && pickup_given_ammo > 0) _str_ammo = " AMMO";		// If the entity ONLY gives ammo, display the " AMMO" text.
    	var _lock_text = _str_supp + string_upper(_str_w_name) + _str_ammo + " FULL";		// Set the locked text.
    	
    	// Draw Fading Lock Text
	    textDraw(x, y - 20, "fName", c_red, 20, 200, fa_center, 1, false, _alpha, _lock_text );
    }
    
}



//======================================================
// FUNCTIONS
//======================================================

//---------------------------------------------------------
// Alpha Mask
//---------------------------------------------------------
// Code by Muno https://discord.com/channels/630147058535235604/722892672347668491/889503052929847337
#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

//---------------
// Code by Muno!
//---------------

/*
	Available Fonts:

		"medFont"
		"fName" 		<-- default font
		"roundFont"
		"roaMBLFont"
		"roaLBLFont"
		"tinyFont"
		
*/

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];