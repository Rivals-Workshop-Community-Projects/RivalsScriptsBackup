// end_match();

var offx = lerp(my_hitboxID.x, hit_player_obj.x, 0.5);
var offy = lerp(my_hitboxID.y, hit_player_obj.y - (hit_player_obj.char_height/2), 0.5);


switch my_hitboxID.attack
{
	case AT_USPECIAL:
		if my_hitboxID.hbox_num == 1 /* and ((uspec_held <= 6 and instance_exists(voltorb_obj)) or !instance_exists(voltorb_obj)) */
		{
			window = 4;
			window_timer = 0;
			set_attack_value(attack,AG_NUM_WINDOWS, 6)
			spr_angle = 0;
            hurtboxID.image_angle = spr_angle;
		}
	break;
	case AT_FSPECIAL:
	
		var boost = 2*(window == 6)
		if (window == 6 and !was_parried) take_damage(player,-1,5);
		destroy_hitboxes()
		window = 8;
		window_timer = 0;
		old_vsp = -7-boost;
		old_hsp = sign(old_hsp);
		fspecial_used = false;
		move_cooldown[AT_FSPECIAL] = 30;
	break;
	case AT_UAIR:
		old_vsp -= 0.5;
		if (my_hitboxID.hbox_num == 1)
		{
			hit_player_obj.x = lerp(hit_player_obj.x,my_hitboxID.x+hsp,0.05)
			hit_player_obj.y = lerp(hit_player_obj.y,my_hitboxID.y+vsp,0.05)
		}
		break;
	case AT_FTILT:
		if (my_hitboxID.hbox_num != 4)
		{
			hit_player_obj.x = lerp(hit_player_obj.x,my_hitboxID.x+hsp,0.2)
			hit_player_obj.y = lerp(hit_player_obj.y,my_hitboxID.y+vsp,0.2)
		}
	break;
	case AT_BAIR:
		var extra_boost = (my_hitboxID.hbox_num == 3)*1 //If you are on the finisher, add 2 to final old_vsp
		
		old_vsp -= (1 + extra_boost);
		
		hit_player_obj.x = lerp(hit_player_obj.x,my_hitboxID.x,0.1)
		hit_player_obj.y = lerp(hit_player_obj.y,my_hitboxID.y,0.1)
	break;
	case AT_DAIR:
	if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.8);
     }
     else
     {
         sound_play(asset_get("sfx_ori_spirit_flame_hit_1"),false,noone,0.8);
     }
     
    var t=spawn_hit_fx(offx + (my_hitboxID.hit_effect_x*spr_dir), offy + my_hitboxID.hit_effect_y, hit_sprites[my_hitboxID.hbox_num mod 2 == 1]);
    t.depth = depth - 4  
	break;
	case AT_FSTRONG:
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_absa_kickhit"),false,noone,0.8);
     }
	case AT_DSTRONG:
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8);
     }
}