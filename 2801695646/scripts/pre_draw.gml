// pre-draw

// C4 Stick
//draw_rectangle_color(x, y, x + 50 * spr_dir, y - 80, c_green, c_green, c_green, c_green, false);
// Cover Collision
/*switch (state) {
	case PS_WALK:
	case PS_DASH_START:
	case PS_DASH:
	case PS_DASH_START:
		
		var _offset_x = x + (22 * spr_dir);
		draw_rectangle_color(_offset_x - 1, y - 20, _offset_x + 1, y - 30, c_green, c_green, c_green, c_green, false); // Wall Cover
	break;
}*/

var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
var spr_scale = 1 + small_sprites;

//=========================================
// DRAW RESPAWN PLATFORM
//=========================================
if (state == PS_RESPAWN) {
	draw_sprite_ext(sprite_get("plat_behind"), floor((get_gameplay_time() / 2 ) % 6), x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1);
}


//=========================================
// DRAW LAYERED SPRITES
//=========================================
/* This is for drawing things like firearms, or rotating limbs. */

//var sna_arms_angle = sna_aim_dir_visual;
var sna_arms_angle = (spr_dir == 1) ? sna_aim_dir : sna_aim_dir - 180;			// Set the visual aim direction, for sprites. Has rotation offset for spr_dir.;


//--------------------------------------
// Draw weapon aiming sprites
//--------------------------------------
shader_start();	

switch (state){
    
    case PS_ATTACK_GROUND:                                                      // if in the attack state...
    case PS_ATTACK_AIR:
        
        switch (attack){
            
            case AT_FSPECIAL:                                                   // if using a firearm...
                
                if (instance_exists(sna_grabbed_playerid)) break;				// If a player is grabbed, do NOT run this.
                
                if (sna_is_in_cover && (window == 1 || window == 8)) break;		// Don't draw sprite layers when transitioning to/from cover.
                
                var _spr_arms_b = dict_equipment[inv_firearm].spr_arms_b;                                                                                                           // Get arm sprite index
                
                // Draw the limbs
                if (_spr_arms_b != noone) {                                                                                                                                         // If arm sprites are specified...
                    draw_sprite_ext(sprite_get(_spr_arms_b), image_index_arms, x + sna_arms_x * spr_dir, y + sna_arms_y, spr_scale * spr_dir, spr_scale, sna_arms_angle, c_white, 1 );    // Draw the arms sprites.
                }
                
            break;
            
        }
    
    break;
}


//--------------------------------------
// Draw the Legs
//--------------------------------------
if (!is_crouching) {                                                            // If the player is NOT crouching...
    
    if (is_attacking) {                                                         // If the player is attacking...
        switch (attack){
            
            case AT_FSPECIAL:
            	if (sna_is_in_cover && (window == 1 || window == 8)) break;		// Don't draw sprite layers when transitioning to/from cover.
            case AT_NSPECIAL:
                
                draw_sprite_ext(sna_legs_window_sprite, sna_legs_anim_frame + ((sprite_get_number(sna_legs_window_sprite) / num_sprite_sets) * current_sprite_set), x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
                
            break;
            
            case AT_DSPECIAL:
                switch(window){
					case 1:
					case 2:
					case 5:
					case 6:
					case 7:
					case 8:
						
						draw_sprite_ext(sna_legs_window_sprite, sna_legs_anim_frame + ((sprite_get_number(sna_legs_window_sprite) / num_sprite_sets) * current_sprite_set), x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );
						
					break;
					
				}
            break;
            
        }
    }
}

shader_end();	




//=========================================================
// FUNCTIONS
//=========================================================



