//attack_update.gml

//B-reverse - it allows the character to turn in while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();



switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_DAIR:
		switch (window)
		{
			case 1: //var reset
				dair_bounce = false;
				break;
			case 3: //bounce
				if (attack_down || down_stick_down)
				{
					//the detection is actually from the hitbox unlike orcane
					if (!dair_bounce && !hitpause && free) 
					with (pHitBox)
					{
						if (orig_player == other.player)
						{
							if (place_meeting(x, y, asset_get("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough")))
							{
								other.vsp = -10; //(hitbox_timer - length) * 2 - 2; // <- this will make her bounce higher depending on how soon she lands with the hitbox
								other.dair_bounce = true;
								spawn_hit_fx(x, y, 301);
								sound_play(asset_get("sfx_absa_jump"));
							}
						}
					}
				}
				break;
		}
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL: //spawn item
		if (window == 1 && window_timer == window_end)
		{
			if (!holding_item) fake_item_id ++;

			if (holding_item && pocket_item.type == spit_item_id) //the item being held is spit
			{
				//changes trajectory based on input
				var player_input = 0;
				
				if (left_down && -spr_dir || right_down && spr_dir) player_input = 1;
				else if (left_down && spr_dir || right_down && -spr_dir) player_input = -1;
				else if (!left_down && !right_down) player_input = 0;
				
				var spit_hb = create_hitbox(AT_FSPECIAL, 2, x - 16 * spr_dir, y - char_height / 2);
				spit_hb.hsp = (3 + player_input * 1.5) * spr_dir;

				sound_play(asset_get("sfx_orcane_dsmash"));
			}
			else instance_create(x-8*spr_dir, y-32, "obj_article1"); //there is no held item / the item is any other regular item

			pocket_item.id = noone;
			pocket_item.type = -1;
			pocket_item.hp = -1;
			pocket_item.car_type = -1;
			holding_item = false;

			move_cooldown[AT_NSPECIAL] = 60;
		}
		break;
	case AT_FSPECIAL: //pocket
		switch (window)
		{
			case 1: //spawn pocket article
				if (holding_item) set_window(4);
				else
				{
					//pocket detection position relative to azi
					var pos_x = x - 40 + 64 * spr_dir;
					var pos_y = y - 60;
					if (!instance_exists(artc_pocket)) artc_pocket = instance_create(pos_x, pos_y, "obj_article2");
					else
					{
						artc_pocket.x = pos_x;
						artc_pocket.y = pos_y;
					}
				}
				break;
			case 3: //redirect to idle
				if (window_timer == window_end) { if(free) set_state(PS_IDLE_AIR) else set_state(PS_IDLE); } 
				break;
			case 4: //spit item/projectile
				if (window_timer == window_end)
				{
					if (pocket_item.type < spit_item_id) instance_create(x-8*spr_dir, y-32, "obj_article1");
					else if (pocket_item.type == spit_item_id) create_hitbox(AT_FSPECIAL, 3, x + 16 * spr_dir, y - char_height / 2);

					pocket_item.id = noone;
					pocket_item.type = -1;
					pocket_item.hp = -1;
					pocket_item.car_type = -1;
					holding_item = false;
				}
				break;
		}
		break;
	case AT_USPECIAL: //funny bear jump
		//azi can airdodge out of uspec
		if (window >= 2 && window <= 4 && shield_pressed && has_airdodge && !was_parried) set_state(PS_AIR_DODGE);

		switch (window)
		{
			case 1: //var reset
				uspec_height = uspec_height_min;
				uspec_used = true;
				break;
			case 2: //charge window
				if (!special_down || window_timer == window_end)
				{
					var fx = spawn_hit_fx(x, y, fx_uspec);
					fx.depth = depth + 1;
					set_window(0);
				}
				else uspec_height += 0.25; //it increases the value by this number every frame of charge (32 frames)

				set_window_value(attack, 4, AG_WINDOW_LENGTH, floor(uspec_height));

				can_move = false;
				can_fast_fall = false;
				break;
			case 3:
				if (window_timer == window_end) vsp = -uspec_height; //min = 12 | max = 20
				else vsp = 0;
				break;
		}
		break;
	case AT_DSPECIAL: //dk smack
		switch (window)
		{
			case 1: case 4:
				if (window_timer == window_end)
				{
					attack_end();
					
					spawn_hit_fx(x, y, fx_dspec);
					create_hitbox(attack, 1, x, y);
					dspec_smackbox = create_hitbox(attack, 2, x, y);
				}
				break;
			//case 7:
			//	if (special_pressed) set_window(1);
			//	break;
		}
		if (window == 1 && window_timer == 9 || window == 4 && window_timer == 2) sound_play(asset_get("sfx_zetter_downb"));
		break;
	case AT_DSPECIAL_AIR: //air dk smack
		if (!free) 
		{
			landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
			set_state(PS_LANDING_LAG);
		}
		can_fast_fall = false;
		switch (window)
		{
			case 1: if (window_timer == window_end) dspec_smackbox = create_hitbox(attack, 1, x, y); break;
			case 4: if (window_timer == window_end) dspec_smackbox = create_hitbox(attack, 2, x, y); break;
		}
		break;
	case AT_TAUNT:
			if (state_timer == 1) taunt_num = random_func(1, 6, true);
			if (window == 2 && window_timer == window_end-1 && pocket_item.type == -1)
			{
				pocket_item.type = spit_item_id;
				pocket_item.hp = 3;
				holding_item = true;
			}
		break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //


		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		break;
}

//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}

