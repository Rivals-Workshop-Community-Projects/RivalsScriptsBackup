//Debug draw

var total_segments = 30;
// draw_radial_bar(x, y - 300, 10, 20, total_segments, round((sin(get_gameplay_time() / 20) + 1) * (total_segments / 2)), 0, 300, -1, c_red)

if(get_gameplay_time() < 120) {
	draw_sprite_ext(sprite_get(pride_weekend_poggies?"hud_level_start_pride":"hud_level_start"), neo_char.start_image, x, y - 200, 2, 2, 0, c_white, 1.0);
}

if(!debug_hud) exit;
var crosshair_sprite = sprite_get("decal_crosshair");
var ice_mask = sprite_get("pmask_ice");

if(debug_mario_hud) {
	draw_line_width_colour(x, y - char_height / 2, x + spr_dir * 32, y - char_height / 2, 3, c_white, c_black);
	
	if(debug_multihud) {
		debug_hud_x = view_get_xview() + 6 + (360 * (player - 1));
		debug_hud_y = view_get_yview() + 16;
	}
	else {
		debug_hud_x = x + 8;
		debug_hud_y = y + 4;
	}
	handedness = 0;
	
	// hud_text(mario_number, neo_power.display_prefix + neo_char.name);
		hud_text("MPrime:", neo_mario_prime);
		hud_text(count_my_objects(obj_article1), count_my_objects(obj_article2), count_my_objects(obj_article3), count_my_objects(obj_article_solid), count_my_objects(pHitBox));
	
	hud_text("pos:", x, "/", y);
		hud_text("vel:", hsp, "/", vsp, "face:", spr_dir, hitpause_spr_dir);
	
	hud_text(neo_state, neo_statetimer);
		hud_text(neo_substate, neo_substatetimer, skid_timer);
	
	hud_text(neo_animstate, neo_sprite_name);
		hud_text(neo_sprite);
	
	hud_text(neo_animstate + ":" + string(neo_image) + `:${image_index}`, neo_animtimer, "/", override_anim_animstate, override_anim_timer);
		hud_text(neo_power.name, (reserve_slot.variant == "power-up")?reserve_slot.power_object.name:"NULL");
	
	hud_text(hitpause?"true":"false", hitstop, hitstop_full, found_hitpause?"true":"false", cancel_state_processing?"true":"false");
		hud_text(aggressive_hitstop, transition_to_frames, transition_to_power.item_name);
	
	hud_text((carry_obj == noone)?"noone":carry_obj, "/", (neo_data.carried_by_id == noone)?"noone":neo_data.carried_by_id);
		hud_text();
	
	hud_text(get_state_name(state), "/", state_cat, attack);
		hud_text();
	
	hud_text(last_stomp_data.type.name, "/", last_stomp_data.new_neostate, last_stomp_data.new_substate, last_stomp_data.new_animstate, "@", last_stomp_data.age);
	hud_text();
	
	//CARRY DATA
	if(carry_obj != noone && carry_obj.object_index != oPlayer) {
		hud_text("Carry: ", carry_obj.grab_width * carry_obj.spr_dir * carry_obj.image_xscale, "/", carry_obj.grab_height * carry_obj.image_yscale);
	}
	
	// hud_text()
}

if(debug_items_hud) {
	with(obj_article2) if(player_id == other) {
		draw_items_hud();
		draw_sprite_ext(crosshair_sprite, 0, x, y, 2, 2, get_gameplay_time() * 3, c_purple, 1.0);
	}
	with(obj_article_solid) if(player_id == other) {
		draw_items_hud();
		draw_sprite_ext(crosshair_sprite, 0, x, y, 2, 2, get_gameplay_time() * 3, c_purple, 1.0);
	}
}

if(debug_enemies_hud) with(oPlayer) {
	if(url != other.url) {
		handedness = 0;
		debug_hud_x = x + 8; debug_hud_y = y + 4;
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_set_colour(c_dkgray); draw_set_font(asset_get("medFont"));
		
		hud_text(get_state_name(state));
			hud_text(neo_data.hit_by_shell?"true":"false");
		
		hud_text(hitpause?"true":"false", hitstop, hitstop_full);
	}
}

if(debug_projectiles_hud) with(pHitBox) if(type == 2) {
	handedness = 0;
	debug_hud_x = x + 8; debug_hud_y = y + 4;
	
	hud_text(variable_instance_get(id, "identity", {name: "Unknown?!"}).name);
		hud_text();
	hud_text(image_xscale);
		hud_text();
	hud_text(image_yscale);
		hud_text();
	
	draw_sprite_ext(sprite_index, 0, x + 60, y - 100, 1, 1, 0, c_white, 0.4);
	
	// if(mask_index != -1) {
	// 	draw_sprite_ext(mask_index, 0, x + 60, y - 100, 1, 1, 0, c_white, 0.4);
	// 	hud_text(abs(0.5 * 1 * (1 + sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index))));
	// 		hud_text(abs(0.5 * 1 * (1 + sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index))));
		
	// 	hud_text(abs(0.5 * image_xscale * (1 + sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index))));
	// 		hud_text(abs(0.5 * image_yscale * (1 + sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index))));
	// }
		
	
	// if(false && player_id == other && my_name == "power-4") {
		
		
		// draw_line_width_colour(x + 100 * image_xscale, y + 100 * image_yscale, x - 100 * image_xscale, y + 100 * image_xscale, 12, c_white, c_white);
	// }
}


if(debug_freeze_projectiles_hud) with(pHitBox) if(type == 2 && (!transcendent || hsp != 0 || vsp != 0)) {
	draw_sprite_ext(crosshair_sprite, 0, x, y, 2, 2, get_gameplay_time() * 3, c_purple, 1.0);
	
	// draw_sprite_ext(crosshair_sprite, 0, x - sprite_get_xoffset(sprite_index), y - sprite_get_yoffset(sprite_index), 2, 2, get_gameplay_time() * 3, c_red, 1.0);
	// draw_sprite_ext(crosshair_sprite, 0, x + sprite_get_xoffset(sprite_index), y + sprite_get_yoffset(sprite_index), 2, 2, get_gameplay_time() * 3, c_blue, 1.0);
	
	var use_sprite = (mask_index == -1)?sprite_index:mask_index;
	var sprite_center_x = 0.5 * sprite_get_width(use_sprite), sprite_center_y = 0.5 * sprite_get_height(use_sprite);
	var ice_xoffset = spr_dir * (sprite_get_xoffset(use_sprite) - sprite_center_x);
	var ice_yoffset = sprite_get_yoffset(use_sprite) - sprite_center_y;
	var ice_xscale = 0.5 * sprite_get_width(use_sprite) * abs(image_xscale) + (0.5 * (8 + 0));
	var ice_yscale = 0.5 * sprite_get_height(use_sprite) * abs(image_yscale) + (0.5 * (8 + 0));
	draw_sprite_ext(ice_mask, 0, x - ice_xoffset, y - ice_yoffset, ice_xscale, ice_yscale, 0, c_white, 0.5);
	
	ice_xscale = (sprite_get_bbox_right(use_sprite) - sprite_get_bbox_left(use_sprite)) * image_xscale;
	ice_yscale = (sprite_get_bbox_bottom(use_sprite) - sprite_get_bbox_top(use_sprite)) * image_yscale;
	draw_sprite_ext(ice_mask, 0, x - ice_xoffset, y - ice_yoffset, ice_xscale / 2, ice_yscale / 2, 0, c_black, 0.5);
	
	draw_debug_text(x, y, string(x_pos) + ", " + string(y_pos));
	
	// draw_sprite_ext(mask_index, 0, view_get_xview() + view_get_wview() / 2, view_get_yview() + view_get_hview() / 2, image_xscale, image_yscale, 0, c_white, 1.0);
}


#define draw_items_hud
	handedness = 0;
	debug_hud_x = x + 8; debug_hud_y = y + 4;
	draw_set_halign(fa_left); draw_set_valign(fa_top);
	draw_set_colour(c_dkgray); draw_set_font(asset_get("medFont"));
	
	var mask_sprite = mask_index;
	if(mask_index == -1) mask_sprite = sprite_index;
	draw_sprite_ext(mask_sprite, 0, x, y, image_xscale, image_yscale, image_angle, c_lime, 0.4);
	
	hud_text(id);
		hud_text(variant, state);
	
	hud_text("pos:", x, "/", y);
		hud_text("vel:", hsp, "/", vsp);
	
	hud_text(hitpause?"true":"false", hitstop, hitstop_full, old_hsp, old_vsp);
		hud_text();

#define count_my_objects(object_type)
	var counteroo = 0;
	with(object_type) if(player_id == other) counteroo++;
	return(counteroo);

#define hud_text
	var stringeroo = "", counteroo = 0;
	while(counteroo < argument_count) {
		stringeroo += string(argument[counteroo]);
		counteroo++;
		if(counteroo < argument_count) stringeroo += " ";
	}
	
	var stringeroo_at_x = debug_hud_x;
	if(handedness == 0) handedness = -1;
	else if(handedness == 1) stringeroo_at_x += 150;
	else debug_hud_y += 18;
	handedness *= -1;
	
	draw_debug_text(round(stringeroo_at_x), round(debug_hud_y), stringeroo);

#define draw_radial_bar(ringx, ringy, radius, thickness, maxsegments, segments, rotation, angle, direction, colour)
//Function written by @theupgradezone (Twitter)
//Tweaked by me
var anglechange = (angle / maxsegments) * (pi / 180), i = rotation * (pi / 180);

var ax = ringx+(cos(i)*radius), ay = ringy-(sin(i)*radius);

var bx = ringx+(cos(i)*(radius+thickness)), by = ringy-(sin(i)*(radius+thickness));

repeat(segments) {
	i += direction * anglechange;
	
	var cx = ringx + (cos(i) * radius), cy = ringy - (sin(i) * radius);
	
	var dx = ringx + (cos(i) * (radius + thickness)), dy = ringy - (sin(i) * (radius + thickness));
	
	draw_triangle_colour(ax, ay, bx, by, dx, dy, colour, colour, colour, 0);
	draw_triangle_colour(ax, ay, cx, cy, dx, dy, colour, colour, colour, 0);
	
	ax = cx;
	ay = cy;
	
	bx = dx;
	by = dy;
}