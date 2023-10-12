if old_hsp != 0
{
	hsp = floor(old_hsp);
	old_hsp = 0;
}
if old_vsp != 0
{
	vsp = floor(old_vsp);
	old_vsp = 0;
}

image_xscale = article_xscale;
image_yscale = article_yscale;

var e = place_meeting(x, y, pHitBox);

if (e)
{
	if (pHitBox.player_id != player_id && get_player_team(pHitBox.player_id) != get_player_team(player_id) && !pHitBox.has_hit)
	{
		player_id.fuel--;
		if (player_id.fuel <= 0)
		{
			with (player_id)
			{
				fuel = 0;
				var break_bike = spawn_hit_fx(other.x, other.y, bike_break);
				break_bike.spr_dir = spr_dir;
			}
			instance_destroy();
			exit;
		}
		with(pHitBox)
		{
			other.hitstop = get_hitstop_formula(
			(other.damage_inc * 40) - (other.player_id.fuel) * other.damage_inc,
				damage,
				hitpause,
				hitpause_growth,
				extra_hitpause
			);
			player_id.hitstop = other.hitstop;
			has_hit = true;
			sound_play(sound_effect); //plays the hitbox's hit sound... on hit
			spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - other.article_height/2, hit_effect); //puts up the hit fx of the hitbox
			if (type == 2 && enemies == 0) instance_destroy(self);
		}
	}
	else if (pHitBox.player_id = player_id)
	{
		if(pHitBox.attack = AT_NSPECIAL)
		{
			if (has_rune("A")) player_id.fuel--;
			player_id.fuel--;
			if (player_id.fuel <= 0)
			{
				player_id.fuel = 0;
				with (player_id) 
				{
					create_hitbox(AT_NSPECIAL, 3, other.x, other.y - 22);
					var break_bike = spawn_hit_fx(other.x, other.y, bike_break);
					break_bike.spr_dir = spr_dir;
				}
				instance_destroy();
				exit;
			}
			with(pHitBox)
			{
				other.hitstop = get_hitstop_formula(
				(other.damage_inc * 40) - (player_id.fuel) * other.damage_inc,
					damage,
					hitpause,
					hitpause_growth,
					extra_hitpause
				);
				player_id.hitstop = other.hitstop;
				has_hit = true;
				sound_play(sound_effect);
				spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - other.article_height/2, hit_effect);
				if (type == 2 && enemies == 0) instance_destroy(self);
			}
		}
		if (pHitBox.attack == AT_FSPECIAL && pHitBox.hbox_num == 1)
		{
			instance_destroy()
			exit;
		}
		if (pHitBox.attack == AT_USPECIAL && state == 0 && pHitBox.hbox_num == 1)
		{
			vsp = -8;
			hsp = player_id.spr_dir > 0? 3: -3;
			sound_play(sound_get("motorbike_extra"));
			with (pHitBox)
			{
				sound_play(sound_effect);
				spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - other.article_height/2, hit_effect);
			}
			with (player_id) create_hitbox(AT_USPECIAL, 2, other.x, other.y - 22);
			state = 1;
			state_timer = 0;
		}
	}
}


switch (state)
{
    case 0: //Idle
        sprite_index = sprite_get("bike_charge");
        mask_index = sprite_get("bike_mask");
    break;
    case 1: //uppercut
        sprite_index = sprite_get("bike_spin");
        mask_index = sprite_get("bike_mask_spin");
        image_index = state_timer/2;
        if (floor(state_timer/6) == state_timer/6)
        {
        	vsp++;
        }
        if (!free && vsp > 0)
        {
        	hsp = 0;
        	vsp = 0;
        	state = 0;
        	state_timer = 0;
        }
    break;    
}

if (player_id.state == PS_DEAD)
{
    instance_destroy();
}

if ( y > get_stage_data(SD_BOTTOM_BLASTZONE_Y))
{
	instance_destroy();
}

if (instance_exists(self)) state_timer++;

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
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
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;