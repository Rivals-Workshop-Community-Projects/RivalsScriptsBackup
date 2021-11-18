//Prepare Neo Data variables

neo_data = {
	is_robot: (get_player_hud_color(player) == c_gray),
	robot_level: undefined,
	is_abyss_robot: (player % 10 > 4),
	add_to_instance_array: (!clone && !custom_clone),
	
	hud_colour: get_player_hud_color(player),
	hud_flash_colour: (colour_get_saturation(get_player_hud_color(player)) == 0)?c_white:make_colour_hsv(
		(colour_get_hue(get_player_hud_color(player)) + 128) % 255,
		255,
		255
	),
	hud_intense_colour: (colour_get_saturation(get_player_hud_color(player)) == 0)?c_dkgray:make_colour_hsv(
		colour_get_hue(get_player_hud_color(player)),
		clamp(colour_get_saturation(get_player_hud_color(player)) + 42, 0, 255),
		colour_get_value(get_player_hud_color(player))
	),
	
	frozen_by_id: noone,
	frozen_frames: 0,
	frozen_ice_instance: noone,
	frozen_data: {
		sprite: sprite_index,
		image: image_index,
		mask: mask_index,
		state: PS_IDLE,
		state_timer: 0,
		window: 1,
		window_timer: 1
	},
	frozen_prev_free: false,
	frozen_prev_hsp: 0,
	frozen_prev_vsp: 0,
	force_grounded: false,
	
	launched_by_id: noone,
	
	healed_by_id: noone,
	healed_time: 0,
	
	carried_by_id: noone,
	last_escapable_time: -100,
	thrown_by_id: noone,
	
	starman_from_id: noone,
	starman_time: 0,
	starman_stats_on: 0,
	starman_stats_obj: {},
	prestarman_stats_obj: {},
	starman_hitbox_id: noone,
	starman_hits: 0,
	
	tracked_by_floor: noone,
	
	etalus_window_freezer: noone,
	etalus_window_frames: 0,
	
	hit_by_shell: false,
	hit_by_star: false,
	
	moving_plat_subpixel: 0
};

//Neo Compat Data
if("neo_data_compat" not in self) neo_data_compat = {};
neo_data_compat.mario_is_present = true;
var data_with_tail = {has_tail: true};
if("url" in self) switch(url) {
	//Base cast tail support
	/* Notes:
	- Forsburn and Absa both have very small stubby tails. Forsburn's is visible wigglin' around in his idle.
	- Clairen doesn't have a tail??? Or if she does she keeps it tucked into her bodysuit. Maybe she lost it somehow?
		Endless Emperor Loxodont cutting off people's tails confirmed?
	- Looked it up and scientifically snakes DO indeed have tails. Elliana matchup now unwinnable
	- Ayala shares Elliana's ID but it's fine because both she and Elliana have tails
	- Maypul gets bonus points for having the right shape and pattern
	- Etalus's tail isn't visible due to the angle of his sprites, but polar bears do have tails and they're VERY cute
		Clairen doesn't get this same benefit of the doubt. It makes sense that we can't see Etalus's tail at any of the angles
		we get in-game since polar bear tails are small. But panthers have very large tails so we'd expect to be able to see it
		if Clairen had one.
	- If Ranno had joined Rivals as a tadpole he'd be on this list, but he's a grown man and has absorbed his tail.
	- i'm pretty sure shovel knight doesn't have a tail
	*/
	case CH_ZETTERBURN: case CH_FORSBURN: //where's clairen's tail
	case CH_WRASTOR: case CH_ABSA: case CH_ELLIANA:
	case CH_MAYPUL: case CH_SYLVANOS: //kragg doesn't have a tail
	case CH_ORCANE: case CH_ETALUS:
	case CH_ORI:
	
	case 1866016173: /*Guadua*/ case 1943759600: /*Olympia*/ case 1913517643: /*Pomme*/
		neo_data_compat = data_with_tail;
	break;
}

//Cosmetic stuff
if("has_tail" not in neo_data_compat) neo_data_compat.has_tail = false;

if("carry_escape_attack" not in neo_data_compat) neo_data_compat.carry_escape_attack = AT_USPECIAL;
if("carry_x_offset" not in neo_data_compat) neo_data_compat.carry_x_offset = 0;
if("carry_y_offset" not in neo_data_compat) neo_data_compat.carry_y_offset = 0;
if("carry_hud_offset" not in neo_data_compat) neo_data_compat.carry_hud_offset = 0;

if("custom_starman_stat_handling" not in neo_data_compat) neo_data_compat.custom_starman_stat_handling = false;

if("unfreezable" not in neo_data_compat) neo_data_compat.unfreezable = false;
if("can_uspecial_out_of_ice" not in neo_data_compat) neo_data_compat.can_uspecial_out_of_ice = true;
if("ice_escape_attack" not in neo_data_compat) neo_data_compat.ice_escape_attack = neo_data_compat.carry_escape_attack;

//This is set as an empty array rather than checking if it already exists because compatible characters are supposed to have it as undefined or noone
neo_data_compat.carryable_objects = [];
neo_data_compat.freezable_objects = [];

phone_playtest = object_index == oTestPlayer;

if("url" in self && is_number(url) && real(url) < 20) {
	//Base cast stuff
	visible = true;
}