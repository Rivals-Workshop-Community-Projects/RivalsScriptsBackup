//article1_init
//Article variables
vanda_variable = true;

//asset_get() caching
a_pHitBox = player_id.a_pHitBox;
a_par_block = player_id.a_par_block;
a_par_jumpthrough = player_id.a_par_jumpthrough;
a_obj_article1 = player_id.a_obj_article1;
a_plasma_field_obj = player_id.a_plasma_field_obj;

a_sfx_abyss_hazard_hit = player_id.a_sfx_abyss_hazard_hit;
a_sfx_holy_textbox = player_id.a_sfx_holy_textbox;

s_nspecial_projectile_unarmed = player_id.s_nspecial_projectile_unarmed;
s_nspecial_projectile_armed = player_id.s_nspecial_projectile_armed;
s_nspecial_hazard_mask = player_id.s_nspecial_hazard_mask;
s_nspecial_stuck_mask = player_id.s_nspecial_stuck_mask;
s_nspecial_hazard = player_id.s_nspecial_hazard;
s_nspecial_stuck = player_id.s_nspecial_stuck;
s_shadowflame_explosion = player_id.s_shadowflame_explosion;
s_nspecial_hazard_radius = player_id.s_nspecial_hazard_radius;

s_nspecial_buildup = player_id.s_nspecial_buildup;
s_nspecial_explode = player_id.s_nspecial_explode;

s_shadowflame_explosion_large = player_id.s_shadowflame_explosion_large;
s_shadowflame_explosion_small = player_id.s_shadowflame_explosion_small;



//GML Object Variables
{
	sprite_index = s_nspecial_projectile_unarmed;
	mask_index = s_nspecial_projectile_unarmed;
	image_alpha = 1;
	image_index = 0;
	image_speed = 0; //Does not behave well with pausing in training mode
	depth = -50;
}

//RoA Article variables
{
	uses_shader = true;
	can_be_grounded = true;
	ignores_walls = false;
	hit_wall = false;
	//through_platforms = false; //supposed to be for hitboxes?
}

//Physics and Interacting w/ Hitboxes
{
	use_gravity = true;
	old_x = x;
	old_y = y;
	old_hsp = 0;
	old_vsp = 0;
	
	instance_gravity = player_id.nspecial_gravity;
	gravity_mult = player_id.nspecial_gravity_hit_mult;
}

//State Management
{
	macrostate = MS_UNATTACHED;
	microstate = PS_UNATTACHED_UNARMED;
	old_state = 0;
	state_timer = 0;
	lifetime = player_id.nspecial_lifetime; //destroys itself if state_timer exceeds this
	was_parried = false;
	increment_timer = 1; //Whether to increment timer at end of frame
	lifetime_timer = 0; //Used only for Rune F...
}

//Visual Management
{
	img_spd = 3/4;
	img_store = 0;
	
	var col_R = get_color_profile_slot_r( get_player_color(player_id.player), 1);
	var col_G = get_color_profile_slot_g( get_player_color(player_id.player), 1);
	var col_B = get_color_profile_slot_b( get_player_color(player_id.player), 1);

	hazard_color = make_color_rgb(col_R, col_G, col_B);
}

//Player Management
{
	player_id = player_id;
	my_owner = player_id;
	owner_no_rune_f = !player_id.active_runes[?"F"]; //Used to be "owner_rune_f", inverted because Rune F has been swapped as a baseline for normal behavior
	rune_f_triggered = false;
}

//Behaviors
{
	self_behavior = player_id.nspecial_self_behavior;
	teammate_behavior = player_id.nspecial_teammate_behavior;
	enemy_behavior = player_id.nspecial_enemy_behavior;
	attach_behavior = player_id.nspecial_parry_attach_behavior;
	proximity_behavior = player_id.nspecial_parry_proximity_behavior;
	ori_in_match = player_id.ori_in_match;
	rune_k_bounces_max = player_id.rune_k_bounces;
	rune_k_bounces = player_id.rune_k_bounces;
}

//Sticking
{
	
	player_can_hit = [];
	//can_restick = player_id.nspecial_can_restick;

	stuck_player = noone;
	//stuck_surface = false;

	stuck_detonation_timer = player_id.nspecial_detonate_delay;
}

//Misc
{
	parry_cooldown = 0; //Must be 0 by default in case hitbox 1 is parried
	parry_sprite = sprite_get("dspecial_pentagram");
	hit_fstrong1 = false;
	
	//Used only if player_id.nspecial_use_official_hit_detection == false
	colliding_hitbox = noone;
	
	time_until_despawn = player_id.nspecial_time_until_despawn;
	index = 0; //Mostly used for runes, keeps track of which nspecial index it is for hit detection
}




//Munophone
{
	array_push(player_id.phone_offscreen, self);
	phone_offscr_sprite = sprite_get("_pho_offscreen_portal"); // icon to display
	phone_offscr_index = 0; // image_index of the icon
	phone_offscr_x_offset = 0; // x offset to draw the arrow at; uses spr_dir
	phone_offscr_y_offset = 0; // y offset to draw the arrow at
	phone_offscr_leeway = 16; // approximate width/height of obj
}

//Hit script variables
{
	damage = player_id.nspecial_initial_damage;
	knockback_adj = 1;
	lockout = 0;
	desired_hitstop = 0;
	base_hit_lockout = player_id.nspecial_base_hit_lockout;
	has_clairen = false;
	who_hit_dair = noone;
}

//Hitbox
{
	my_hitbox = noone;
	colliding_field = noone; //Clairen field

	nearby_enemy = noone;
}

//Supersonic's Hit Detection Code
{
	dont_do_hit_detection = 0;
	/*hbox_group = array_create(4, 0);
	hbox_group_template = array_create(4, 0);
	for(var i_player = 0; i_player < 4; i_player++)
	{
		hbox_group[@i_player] = array_create(50, 0);
		hbox_group_template[@i_player] = array_create(50, 0);
		for(var i_attack = 0; i_attack < 50; i_attack++)
		{
			hbox_group[@i_player][@i_attack] = array_create(11,0);
			hbox_group_template[@i_player][@i_attack] = array_create(11,0);
		}
	}
	//Disable NSpecial blob
	for(var i_group = 0; i_group <= 11; i_group++)
	{
		hbox_group[player_id.player - 1][AT_NSPECIAL][@i_group] = 1;
		hbox_group_template[player_id.player - 1][AT_NSPECIAL][@i_group] = 1;
	}*/
	
	hitstun = 0;
	hitstun_full = 0;
	 
	kb_adj = 1;
	kb_dir = 0;
	orig_knock = 0;
	 
	hit_lockout = 0;
	 
	article_should_lockout = true; //set to false if you don't want hit lockout.

}


has_clairen = player_id.has_clairen;

in_plasma = instance_exists(a_plasma_field_obj) != noone;
born_plasma = (in_plasma && instance_place(x, y, a_plasma_field_obj) != noone);




#macro PS_UNATTACHED_UNARMED 10
#macro PS_UNATTACHED_ARMED 11
#macro PS_VANDA_UPLIFTED 12
#macro PS_VANDA_KICKED 13

#macro PS_ATTACHED_GROUND_ARMING 20
#macro PS_ATTACHED_GROUND_ARMED 21
#macro PS_ATTACHED_GROUND_FUSING 22
#macro PS_ATTACHED_GROUND_TIMED_OUT 23

#macro PS_ATTACHED_PLAYER 30

#macro PS_EXPLODING_UNATTACHED 71
#macro PS_EXPLODING_GROUND 72
#macro PS_EXPLODING_PLAYER 73

#macro PS_BASHED 80
#macro PS_PLASMA_FIELD_REFLECTED 81
#macro PS_PLASMA_FIELD_DESTROYED 82

#macro PS_CLEANUP 90

#macro MS_UNATTACHED 1
#macro MS_ATTACHED_GROUND 2
#macro MS_ATTACHED_PLAYER 3
#macro MS_EXPLODING 7
#macro MS_MISC 8
#macro MS_CLEANUP 9