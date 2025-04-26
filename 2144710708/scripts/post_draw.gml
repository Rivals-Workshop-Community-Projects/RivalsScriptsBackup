// post draw

var arrow_sprite = spr_kb_arrow;
var spr_isplayer_sprite = spr_isplayer;
var zone_sprite = spr_zone_init;
var spr_bootwarning = spr_bootwarning_init;

//This code draws a custom sprite tinted to the exact color of the player's first color slot.
var col_R = get_color_profile_slot_r( get_player_color(player), 1);
var col_G = get_color_profile_slot_g( get_player_color(player), 1);
var col_B = get_color_profile_slot_b( get_player_color(player), 1);

var col_final = make_color_rgb(col_R, col_G, col_B);

var show_boot_data = boot_data;

// ammo character element
// only visible under character during attacks that use ammo
if (nspecial_active == true) {
	if (attack == AT_NSPECIAL) || (attack == AT_TAUNT_2) || (attack == AT_DSTRONG_2) {

	// meter
	draw_sprite_ext(sprite_get("spmeter_small"), 0, x-20, y+10, 1, 1, 0, c_white, 1);

	// bar
	draw_sprite_ext(sprite_get("spmeter_small"), 1, x-18, y+10, ammo/45, 1, 0, c_white, 1);
	}

}

if (nothanks == true) {

	if (get_gameplay_time() < 127) {
		draw_sprite_ext(sprite_get("undo"), 1, x-2-(get_gameplay_time()), y+10, 1, 1, 0, c_white, (bababooey/120));
	}
}

// festive hat p1 of 3 post draw
if wearing_hat {
	//colors.gml OR init_shader.gml:
	switch (get_match_setting(SET_SEASON)) {
	  case 1: // valentines
		//set your valentines holiday alt
		draw_sprite_ext(sprite_get("festivehat_va_idle"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
		break;
	  case 2: // summer
		//set your summer holiday alt
		draw_sprite_ext(sprite_get("festivehat_su_idle"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
		break;
	  case 3: // halloween
		//set your halloween holiday alt
		draw_sprite_ext(sprite_get("festivehat_ha_idle"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
		break;
	  case 4: // christmas
		//set your christmas holiday alt
		draw_sprite_ext(sprite_get("festivehat_ch_idle"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
		break;
	}
}

if wearing_hat_blu {
	draw_sprite_ext(sprite_get("festivehat_blu_idle"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

// fspecial outer circle code
if (attack == AT_FSPECIAL) {
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
		if (window == 3) {
			if (window_timer >= 0 && window_timer <= 20) {
				if (runeJ == true) {
					if (spr_dir == -1) {
						draw_sprite_ext(sprite_get("fspecial_circle_super"), 0, x-83, y-73, 1, 1, 0, fspecial_color, 1);
					}
					else if (spr_dir == 1) {
						draw_sprite_ext(sprite_get("fspecial_circle_super"), 0, x-17, y-73, 1, 1, 0, fspecial_color, 1);
					}
				}
				else if (runeJ == false) {
					if (spr_dir == -1) {
						draw_sprite_ext(sprite_get("fspecial_circle"), 0, x-83, y-73, 1, 1, 0, fspecial_color, 1);
					}
					else if (spr_dir == 1) {
						draw_sprite_ext(sprite_get("fspecial_circle"), 0, x-17, y-73, 1, 1, 0, fspecial_color, 1);
					}
				}
				
			}
		}
		else if (window == 4) {
			if (window_timer >= 0 && window_timer < 3) {
				if (runeJ == true) {
					if (spr_dir == -1) {
						draw_sprite_ext(sprite_get("fspecial_circle_super_fading"), 0, x-83, y-73, 1, 1, 0, fspecial_color, 1);
					}
					else if (spr_dir == 1) {
						draw_sprite_ext(sprite_get("fspecial_circle_super_fading"), 0, x-17, y-73, 1, 1, 0, fspecial_color, 1);
					}
				}
				else if (runeJ == false) {
					if (spr_dir == -1) {
						draw_sprite_ext(sprite_get("fspecial_circle_fading"), 0, x-83, y-73, 1, 1, 0, fspecial_color, 1);
					}
					else if (spr_dir == 1) {
						draw_sprite_ext(sprite_get("fspecial_circle_fading"), 0, x-17, y-73, 1, 1, 0, fspecial_color, 1);
					}
				}
			}
		}
		else if (window == 2) {
			if (window_timer >= 9 && window_timer <= 12) {
				if (runeJ == true) {
					if (spr_dir == -1) {
						draw_sprite_ext(sprite_get("fspecial_circle_super_fading"), 0, x-83, y-73, 1, 1, 0, fspecial_color, 1);
					}
					else if (spr_dir == 1) {
						draw_sprite_ext(sprite_get("fspecial_circle_super_fading"), 0, x-17, y-73, 1, 1, 0, fspecial_color, 1);
					}
				}
				else if (runeJ == false) {
					if (spr_dir == -1) {
						draw_sprite_ext(sprite_get("fspecial_circle_fading"), 0, x-83, y-73, 1, 1, 0, fspecial_color, 1);
					}
					else if (spr_dir == 1) {
						draw_sprite_ext(sprite_get("fspecial_circle_fading"), 0, x-17, y-73, 1, 1, 0, fspecial_color, 1);
					}
				}
			}
		}
	}
}

// up special tracer before it actually fires
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_USPECIAL) {
		if (window == 2) {
			if (spr_dir == -1) {
				draw_sprite_ext(sprite_get("uspecial_proj_tracer"), 0, x+2, y+256, 1, 1, 0, col_final, custom_window_timer);
				draw_sprite_ext(sprite_get("uspecial_proj_tracer_ball"), 0, x+2, y+256, 1, 1, 0, c_white, custom_window_timer);
			}
			else if (spr_dir == 1) {
				draw_sprite_ext(sprite_get("uspecial_proj_tracer"), 0, x+16, y+256, 1, 1, 0, col_final, custom_window_timer);
				draw_sprite_ext(sprite_get("uspecial_proj_tracer_ball"), 0, x+16, y+256, 1, 1, 0, c_white, custom_window_timer);
			}
		}
	}
}

var is_shoe = false;

with (asset_get("pHitBox"))
{
    if (player_id == other)
    {
		if (attack == AT_DSPECIAL) {
			var is_shoe = true;
			var inst = self;
			
			/*
			if (hsp != 0) && (vsp != 0) {
				shoe_moving = true;
			}
			else {
				shoe_moving = false;
			}
			*/
			
			
			// circle that appears around boot when it isn't moving
			if (image_yscale == 64/200) {
				
				draw_sprite_ext(zone_sprite, image_index, x, y, spr_dir, 1, 0, get_player_hud_color(player), 1);
				
			}
			
			// shows up when player galaxy or whiteline
			if (player_id.boot_save_from_galaxy_prevention > 0) {
				draw_sprite_ext(spr_bootwarning, image_index, x+(4*spr_dir), y-24, spr_dir*2, 2, 0, c_white, 1);
			}
			
			// dspecial arrow stuff
			
			// small boot
			var arrow_offsetX = 2;
			var arrow_offsetX_mirror = 2;
			// big boot
			//var arrow_offsetX = -20;
			//var arrow_offsetX_mirror = 24;
			
			var arrow_offsetY = -70;
			var arrow_angle = -kb_angle + 180;
			var arrow_angle_mirror = kb_angle + 180;
			var arrow_color = c_white;
			var arrow_yscale = 1;
			var arrow_xscale = (spr_dir * (1+(kb_scale*2)))
			
			
			//var arrow_alpha = 1 - hitbox_timer/length;
			var arrow_alpha = 1;
			var arrow_visual = 0;
			
			if (effect >= 0 && effect <= 13) {
				if (kb_value != 5.1) {
					arrow_visual = effect;
				}
				else {
					arrow_visual = 13;
				}
			}
			else if (effect == 420) { // special case for amarelle
				arrow_visual = 14;
			}
			else {
				// some workshop characters have crazy event numbers so i have given up doing this
				arrow_visual = 7;
			}
			

			if (kb_value >= 0 && kb_value < 2) {
				arrow_color = c_white;
			}
			if (kb_value >= 2 && kb_value < 4) {
				arrow_color = c_yellow;
			}
			else if (kb_value >= 4 && kb_value < 6) {
				arrow_color = c_orange;
			}
			else if (kb_value >= 6 && kb_value < 8) {
				arrow_color = c_red;
			}
			else if (kb_value >= 8 && kb_value < 10) {
				arrow_color = c_purple;
			}
			else if (kb_value >= 10 && kb_value < 100) {
				arrow_color = $474747; // custom dark gray
			}
			else if (kb_value >= 100) {
				arrow_color = c_black; // void
			}
			
			// lazy way to display the sakurai angle
			
			if (kb_angle == 361) {
				if (!free) {
					arrow_angle = -40 + 180;
					arrow_angle_mirror = 40 + 180;
				}
				else if (free) {
					arrow_angle = -45 + 180;
					arrow_angle_mirror = 45 + 180;
				}
			}

			if (spr_dir == -1) {
				draw_sprite_ext(arrow_sprite, arrow_visual, x+arrow_offsetX, y+arrow_offsetY, arrow_xscale, arrow_yscale, arrow_angle, arrow_color, arrow_alpha);
				if (kb_value != 5.1) {
					draw_debug_text(x+arrow_offsetX-11,y+arrow_offsetY+10, string(damage)+"%");
				}
			}
			if (spr_dir == 1) {
				draw_sprite_ext(arrow_sprite, arrow_visual, x+arrow_offsetX_mirror, y+arrow_offsetY, arrow_xscale, arrow_yscale, arrow_angle_mirror, arrow_color, arrow_alpha);
				if (kb_value != 5.1) {
					draw_debug_text(x+arrow_offsetX_mirror-11,y+arrow_offsetY+10, string(damage)+"%");
				}
			}
			
			// display boot data
			if (show_boot_data != 0) {
				draw_debug_text(x+arrow_offsetX+0,y+arrow_offsetY-100, "Angle: " + string(kb_angle));
				draw_debug_text(x+arrow_offsetX+0,y+arrow_offsetY-85, "Base Knockback: " + string(kb_value));
				draw_debug_text(x+arrow_offsetX+0,y+arrow_offsetY-70, "Knockback Scaling: " + string(kb_scale));
				draw_debug_text(x+arrow_offsetX+0,y+arrow_offsetY-55, "Effect: " + string(effect));
				draw_debug_text(x+arrow_offsetX+0,y+arrow_offsetY-40, "Base Hitpause: " + string(hitpause));
				draw_debug_text(x+arrow_offsetX+0,y+arrow_offsetY-25, "Hitpause Scaling: " + string(hitpause_growth));
				draw_debug_text(x+arrow_offsetX+0,y+arrow_offsetY-10, "Hitstun Multiplier: " + string(hitstun_factor));
				//draw_debug_text(x+arrow_offsetX+80,y+arrow_offsetY-10, "Angle Flipper: " + string(hit_flipper));
				
			}

			// dspecial marker
			if (spr_dir == -1) {
				//boot
				draw_sprite_ext(spr_isplayer_sprite, 0, inst.x + 11 , inst.y - 46, 1, 1, 0, get_player_hud_color(player), 1);
			}
			
			if (spr_dir == 1) {
				//boot
				draw_sprite_ext(spr_isplayer_sprite, 0, inst.x + 11, inst.y - 46, 1, 1, 0, get_player_hud_color(player), 1);	
			}

				
		}
    }
}

// dspecial offscreen indicator
if (!temple_stage) {
if (is_shoe) {
	
	// OFFSCREEN
	var offset = 38;
	need_draw = false;
	
	var xv = view_get_xview();
	var wv = view_get_wview();
	var yv = view_get_yview();
	var hv = view_get_hview();
	var image = 0;
	
	x_draw = inst.x;
	y_draw = inst.y;
	
	// right
	if (x_draw > xv + wv)
	{
		while(x_draw > xv + wv - offset)
		{
			x_draw -= 1;
			
			need_draw = true;
		}
		
		image = 2;
	}
	
	// left
	if (x_draw < xv)
	{
		while(x_draw < xv + offset)
		{
			x_draw += 1;
			
			need_draw = true;
		}
		
		image = 6;
	}
	
	// bottom
	if (y_draw > yv + hv - offset * (image != 0)) // this weird thing means, if already offscreen, then bubble do not wait for the object to cross 0, but offset.
	{
		while(y_draw > yv + hv - offset)
		{
			y_draw -= 1;
			
			need_draw = true;
		}
		
		if (image > 0)
		{
			image += 4;
			image *= 0.5;
		}
		else
		{
			image = 4;
		}
	}
	
	// top
	if (y_draw + bootoffset < yv + offset * (image != 0))
	{
		while(y_draw < yv + offset)
		{
			y_draw += 1;
			
			need_draw = true;
		}
		if (image == 2)
		{
			image = 1;
		}
		if (image == 6)
		{
			image = 7;
		}
	}
	
	var sprite = sprite_get("offscreen");
	

	if (need_draw)
	{
		if (!playtest) {
			//draw_sprite(sprite,image,x_draw,y_draw);
			draw_sprite_ext(sprite, image, x_draw, y_draw, 1, 1, 0, get_player_hud_color(player), 1);
			draw_sprite(dspec_posticon,0,x_draw,y_draw-4);
		}
	}	
}
}