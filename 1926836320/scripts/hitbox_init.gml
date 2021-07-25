if (attack == AT_USPECIAL) {

    player_id.boulder_alive = true;
	vspold = vsp;
	hspold = hsp;
	is_being_hit = 0;
	bounce_sound = asset_get("sfx_land_heavy");
	break_sound = asset_get("sfx_blow_heavy2");
	
	
	ap_hit_enabled = true; //
	ap_hit_kb_scale_percent = 1.5; //How much the hitbox's kb scaling affects the rock's distance when hit.
	ap_hit_power_mult = 1.25; //how much the current defeatist state affects the rock's distance when hit.
	ap_hit_total_mult = .75; //The total multiplier for the rock's hit distance.
	ap_hit_breakout_mult = 2.5; //How much speed is added when knocked out of AP.
	
	stand_time = 0; //How long it has to be AP'd before sinking when stood on.
	stand_sink_speed = .125; //How fast it sinks when stood on.
	
	hit_by_fspecial = 0;
	
	hitby = AT_TAUNT;
	should_crack = 0;
	if player_id.nspecial_current == id should_crack = 2;
	
	bounce_fx = 0;
	
	
	trailtimer = 3;
	
	//bounce_fx = hit_fx_create(sprite_get("boulder_bounce"), 30));
	
	//If you want to use a custom effect, delete the "//" on the line above this one.

//     // Aim the boulder
//     hsp = 0;
//     vsp = 0;

//     switch (player_id.boulder_dir) {
//         case 1:  // UP
//             vsp = -13;
//             hsp = 3 * player_id.spr_dir;
//             break;
//         case 2:  // LEFT
//             hsp = -11;
//             vsp = -2;
//             break;
//         case 3:  // UP-LEFT
//             hsp = -8;
//             vsp = -10;
//             break;
//         case 4:  // RIGHT
//             hsp = 11;
//             vsp = -2;
//             break;
//         case 5:  // UP-RIGHT
//             hsp = 8;
//             vsp = -10;
//             break;
//         case 6:  // BACK
//             vsp = -13;
//             break;
//     }

//     hsp *= 1.25;
//     vsp *= 1.25;
}
