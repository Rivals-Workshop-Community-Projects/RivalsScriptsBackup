/*if "phone" not in player_id{
	// this code turns the "solid article" into a "phone article", so that, for
	// all intents and purposes, it won't interact with any solid article code.
	// instead, it can now draw the phone's big screen while the phone is in
	// sleep mode.
	sprite_index = asset_get("empty_sprite");
	mask_index = asset_get("empty_sprite");
	uses_shader = false;
	orig_player_id = player_id;
	player_id = noone;
	num = "phone";
	depth = 7;
	x = 0;
	y = 10000;
	exit;
}*/

// your solid article code can go here!


// Cardboard Box - Init
sprite_index = sprite_get("ent_box_idle");
mask_index = sprite_get("ent_box_mask");
depth = 1;

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;

dmg = 0;
dmg_threshold = player_id.sna_box_dmg_threshold; 


//------------------------------------------------------
// Physics Settings
//------------------------------------------------------
hsp_float = 0;                                                                  // Hspeed before it's rounded.
vsp_float = 0;                                                                  // Vspeed before it's rounded.

gravity_speed = 0.2;                                                        	// Gravity acceleration
max_fall = 12;                                                                  // Maximum fall speed
air_friction = 0.03;                                                            // How fast the entity slows down horizontally, while in the air.


//------------------------------------------------------
// Hitbox Settings
//------------------------------------------------------
hbox_last = noone;                                                              // The last hitbox that this entity was hit with.
hbox_player_id_last = noone;
hbox_attack_last = noone;
hbox_num_last = noone;
hbox_group_last = noone;


//------------------------------------------------------
// Optimization Settings
//------------------------------------------------------
cleanup_distance = 1920;														// Max distance the entity can be away from the player, before it despawns.


