switch(state){
	case PS_SPAWN:
		vsp += 0.5;
		fake_image_angle = lerp(fake_image_angle, 180, 0.03 + 0.005 * fake_image_index);
		var fx = x + hsp * 3;
		var fy = y + vsp * 3;
		if place_meeting(fx, fy, asset_get("par_block")) || place_meeting(fx, fy, asset_get("par_jumpthrough")) && !place_meeting(fx, fy - vsp, asset_get("par_jumpthrough")) && vsp > 0{
			set_article_state(PS_LAND);
			sound_play(player_id.sfx_ssbu_arrow_stuck);
			stuck_angle = fake_image_angle;
			spawn_base_dust(x + hsp, y + vsp, "walk");
		}
		// beCollected();
		break;
	case PS_LAND:
		hsp = 0;
		vsp = 0;
		hint_opac = lerp(hint_opac, distance_to_object(player_id) < 128 ? 1 : 0, 0.3);
		var s_t_max = 15;
		fake_image_angle = stuck_angle + sin(state_timer * 2) * min(4, lerp(4, 0, s_t_max / state_timer));
		if state_timer >= s_t_max{
			set_article_state(PS_IDLE);
		}
		beCollected();
		break;
	case PS_IDLE:
		hsp = 0;
		vsp = 0;
		hint_opac = lerp(hint_opac, distance_to_object(player_id) < 128 ? 1 : 0, 0.3);
		
		if random_func(0, 32, true) > 30{
			var h = spawn_hit_fx(x + random_func(1, 32, true) - 16, y - (random_func(2, 64, true)), player_id.vfx_sparkle);
			h.depth = depth;
		}
		
		beCollected();
		
		if state_timer > 360{
			visible = (state_timer % 8 < 4);
			if state_timer > 400{
				// spawn_hit_fx(x + lengthdir_x(32, fake_image_angle + 90) * spr_dir, y + lengthdir_y(32, fake_image_angle + 90), player_id.vfx_spear_break_2);
				var h = spawn_hit_fx(x + lengthdir_x(-16, fake_image_angle + 90), y + lengthdir_y(-16, fake_image_angle + 90), player_id.vfx_spear_break);
				h.draw_angle = fake_image_angle * spr_dir;
				var a = instance_create(x, y, "obj_article3");
				a.message_type = 1;
				instance_destroy();
				exit;
			}
		}
		break;
	case PS_DEAD:
		var amt = 0.25;
		x = lerp(x, player_id.x - 8, amt);
		y = lerp(y, player_id.y - 8, amt);
		if state_timer >= 4{
			instance_destroy();
			exit;
		}
}

prev_hsp = hsp;
prev_vsp = vsp;
was_free = free;

state_timer++;
		
if x < player_id.phone_blastzone_l || x > player_id.phone_blastzone_r || y > player_id.phone_blastzone_b{
	var a = instance_create(x, y, "obj_article3");
	a.message_type = 1;
	instance_destroy();
	exit;
}



#define beCollected

if distance_to_object(player_id) < 32{
	set_article_state(PS_DEAD);
	player_id.spear_durability = spear_durability;
	player_id.cur_spear = fake_image_index;
	sound_play(player_id.sfx_botw_get_item);
	var h = spawn_hit_fx(x, y, player_id.vfx_sparkles_up);
	h.depth = player_id.depth;
	hint_opac = 0;
}



#define set_article_state(n_s)

state = n_s;
state_timer = 0;



#define spawn_base_dust // supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
with player_id{
	var dlen; //dust_length value
	var dfx; //dust_fx value
	var dfg; //fg_sprite value
	var dfa = 0; //draw_angle value
	var dust_color = 0;
	var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
	
	switch (name) {
	    default: 
	    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	    case "doublejump": 
	    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
	}
	var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"),dlen);
	if newdust != noone{
		newdust.dust_fx = dfx; //set the fx id
		if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
		newdust.dust_color = dust_color; //set the dust color
		if dir != 0 newdust.spr_dir = dir; //set the spr_dir
		else newdust.spr_dir = other.spr_dir;
		newdust.draw_angle = dfa;
	}
	return newdust;
}