if (match_over) {
	exit;
}

if (get_gameplay_time() <= 6) {
	if (get_gameplay_time() == 2) {
		post_init();
	}
	exit;
}

with (oPlayer) {
	// Respawn is indefinite.
	// No retries.
	if (state == PS_RESPAWN) {
		set_state(PS_DEAD);
		continue;
	}

	// Be invulnerable to eachother's leftover articles.
	if (other.sandbag != self) {
		for (var i = 1; i <= 5; i++) {
			if (i != player) {
				can_be_hit[i] = 120;
			}
		}
	}
}

if (round_over) {
	update_post_round();
} else {
	update_round();
}


#define post_init
// Don't skip bots if it's an all-bot match.
bot_match = true;
for (var i = 1; i <= 4; i++) {
	if (is_player_on(i) && get_player_hud_color(i) != c_gray) {
		bot_match = false;
	}
}

turn = 1;
while (turn < 5 && skip_turn(turn)) {
	turn++;
}
first_turn = turn;

if (first_turn == 5) {
	// AAAAAAAA.
	// EMERGENCY ABORT.
	// No one is valid and the stage goes first?!
	var results = [];
	for (var i = 1; i <= 4; i++) {
		if (is_player_on(i)) {
			array_push(results, i);
		}
	}
	for (var i = array_length(results); i < 4; i++) {
		results[i] = -1;
	}
	end_match(results[0], results[1], results[2], results[3]);
	match_over = true;
	exit;
}

var player_count = 0;
with (oPlayer) {
	set_player_stocks(player, 1);
	if (get_player_hud_color(player) != c_gray) {
		player_count++;
	}

	if (other.turn != get_player_team(player)) {
		set_state(PS_DEAD);
	} else if (get_match_setting(SET_TEAMS)) {
		team_spawn();
	} else {
		x = get_marker_x(3);
		y = get_marker_y(3);
		spr_dir = 1;
	}
}

if (player_count == 1) {
	best_player = turn;
}

// Destroy character articles for players whose turn it isn't
with (obj_article1) {
	if (other.turn != get_player_team(player)) {
		remove_article();
	}
}
with (obj_article2) {
	if (other.turn != get_player_team(player)) {
		remove_article();
	}
}
with (obj_article3) {
	if (other.turn != get_player_team(player)) {
		remove_article();
	}
}
with (obj_article_solid) {
	if (other.turn != get_player_team(player)) {
		remove_article();
	}
}
with (obj_article_platform) {
	if (other.turn != get_player_team(player)) {
		remove_article();
	}
}

// Use your rival as the sandbag
for (var i = 1; i <= 5; i++) {
	if ((i == 5 || is_player_on(i)) && turn != get_player_team(i)) {
		spawn_sandbag(i);
		break;
	}
}


#define start_round
round_timer = -1;
barrier_broken = false;
camera.hsp = 0;
camera.x = get_marker_x(1);
dust_timer = 0;
recovery_timer = 0;
sandbag_idle = 0;
round_over = false;
new_record = false;
distance_tick = 0;
articles_cleared = false;

// This resets the music so it can play again. music_stop() does not.
music_play_file("");

// Reset damage
for (var i = 1; i <= 5; i++) {
	set_player_damage(i, 0);
}

// Reset the room size
room_width = orig_room_width;
scroll_x = 0;
update_bg_scroll();
set_bg_data(6, BG_LAYER_REPEAT, 0);

// Destroy leftover projectiles
with (pHitBox) {
	if (type == 2) {
		destroyed = true;
	}
}

// Destroy character articles
with (obj_article1) {
	remove_article();
}
with (obj_article2) {
	remove_article();
}
with (obj_article3) {
	remove_article();
}
with (obj_article_solid) {
	remove_article();
}
with (obj_article_platform) {
	remove_article();
}

// Spawn the player whose turn it is.
with (oPlayer) {
	// Okay, you're done being sandbag now.
	if (obj_stage_main.sandbag == self && player != 5) {
		custom_clone = false;
	}

	// Destroy all clones AND the stage sandbag
	if (clone || custom_clone) {
		custom_clone = true;
		set_state(PS_DEAD);
		instance_destroy(id);
		continue;
	}

	// Hide other contestants
	if (other.turn != get_player_team(player)) {
		set_state(PS_DEAD);
		x = 0;
		continue;
	}

	// Reset the player the best we can.
	clear_status();
	initial_invince = true;
	//invince_time = 120;
	visible = true;
	set_state(PS_SPAWN);

	if (get_match_setting(SET_TEAMS)) {
		team_spawn();
	} else {
		// FFA spawn
		x = get_marker_x(3);
		y = get_marker_y(3);
		spr_dir = 1;
	}

	spawn_hacks();
}

// Spawn a new sandbag
for (var i = 1; i <= 5; i++) {
	if ((i == 5 || is_player_on(i)) && turn != get_player_team(i)) {
		spawn_sandbag(i);
		break;
	}
}


#define update_round
round_timer++;

switch (round_timer) {
	case 0:
	case 30:
	case 60:
		if (rounds > 0) {
			sound_play(asset_get("sfx_321"), false, 0);
		}
		break;

	case 90:
		if (rounds > 0) {
			sound_play(asset_get("sfx_go"), false, 0);
		}
		break;

	case 120:
		music_play_file("ssf2");
		break;

	case 360: // 5
	case 420: // 4
	case 480: // 3
		if (!barrier_broken) {
			sound_play(asset_get("mfx_timertick"), false, 0);
		}
		break;

	case 540: // 2
	case 600: // 1
	case 660: // 0
		if (!barrier_broken) {
			sound_play(asset_get("mfx_timertick2"), false, 0);
		}
		break;

	case 720:
		break_barrier();
		break;

	// Failsafe - Stop any players who are looping a taunt forever or whatever.
	case 900:
		if (!round_over) {
			with (oPlayer) {
				if (other.sandbag != self) {
					switch (state) {
						case PS_DEAD:
						case PS_PRATFALL:
						case PS_PRATLAND:
							continue;
						default:
							break;
					}
					set_state(PS_PRATLAND);
				}
			}
		}
		break;
}

stat_time = clamp(10 - ((round_timer - 120) / 60), 0, 10);

// While time is up, force everyone into pratland until the round ends.
// Despawn anyone who scrolls offscreen to get rid of their indicators.
if (barrier_broken) {
	var all_stopped = true;
	with (oPlayer) {
		if (other.sandbag != self) {
			var cx = get_instance_x(asset_get("camera_obj"));
			if (x < cx - 498) {
				// Remove players who are off-camera.
				// Can't use PS_DEAD because it forces a position,
				// which ruins the effect because Sein doesn't despawn.
				// Why doesn't Sein go away?! Go away, Sein!!
				set_state(PS_DEAD);
			} else if (state_cat == SC_GROUND_NEUTRAL || state == PS_DASH) {
				set_state(PS_PRATLAND);
			} else if (state_cat == SC_AIR_NEUTRAL) {
				set_state(PS_PRATFALL);
			} else if (state == PS_PRATLAND) {
				state_timer = -1;
			} else if (state != PS_DEAD) {
				all_stopped = false;
			}
		}
	}

	// Ok, all players have been stopped?
	// Check to see if the sandbag is done too.
	if (!round_over && all_stopped) {
		var sandbag_finished = false;
		if (instance_exists(sandbag) && sandbag.state != PS_DEAD) {
			with (sandbag) {
				if (state == PS_IDLE || taunt_down) {
					other.sandbag_idle++;
				} else {
					other.sandbag_idle = 0;
				}
			}
			if (sandbag_idle > 90) {
				sandbag_finished = true;
			}
		} else {
			sandbag_finished = true;
		}
		if (sandbag_finished) {
			round_over = true;
			round_timer = -1;
		}
	}
} else {
	// Walls still up? Make sure there's someone there to hit the bag!
	var all_gone = true;
	with (oPlayer) {
		if (other.sandbag != self && state != PS_DEAD) {
			all_gone = false;
		}
	}

	// Excuse me, WHAT??
	if (all_gone) {
		round_over = true;
		round_timer = -1;
	}
}

if (instance_exists(sandbag) && sandbag.state != PS_DEAD) {
	if (barrier_broken && sandbag.x > ruler_start) {
		update_camera();
	}

	update_sandbag();
}

if (round_over) {
	// Stop the camera from running away between rounds.
	camera.hsp = 0;
}


#define update_post_round
round_timer++;

// Keep players locked in pratland (if the sandbag didn't go far enough to put them offscreen)
with (oPlayer) {
	if (state == PS_PRATLAND) {
		state_timer = -1;
	}
}

switch (round_timer) {
	case 0:
		sound_play(asset_get("mfx_result_expand"), false, 0);
		break;

	case 60:
		// Check the scores
		if (full_distance > best_distance) {
			if (best_distance > 0) {
				// It's a new record!
				new_record = true;
				sound_play(asset_get("mfx_levelup"), false, 0);
			}
			best_distance = full_distance;
			best_player = sandbag.last_player;
		} else if (full_distance == 0) {
			sound_play(asset_get("mfx_tut_fail"), false, 0);
		}
		break;
}

if (round_timer < 150) {
	return;
} else if (new_record && round_timer < 210) {
	return;
}

turn++;
while (turn < 5 && skip_turn(turn)) {
	turn++;
}

if (turn > 4) {
	turn = first_turn;
	rounds++;
	// End the match after [stocks] rounds.
	if (!get_match_setting(SET_PRACTICE) && best_player && rounds >= get_match_setting(SET_STOCKS)) {
		match_over = true;
		var results = [best_player];
		for (var i = 1; i <= 4; i++) {
			if (i == best_player || !is_player_on(i)) {
				continue;
			}
			array_push(results, i);
		}
		for (var i = array_length(results); i < 4; i++) {
			results[i] = -1;
		}
		end_match(results[0], results[1], results[2], results[3]);
		exit;
	}
}

// Next round!
start_round();


#define spawn_sandbag(player)
if (player == 5) {
	if (get_match_setting(SET_TEAMS)) {
		set_player_team(5, (turn == 1 ? 2 : 1));
	}

	with (instance_create(0, 0, "oPlayer", player)) {
		initialize_sandbag();
	}
	return;
}

sandbag = noone;
with (oPlayer) {
	if (self.player != player) {
		continue;
	}
	obj_stage_main.sandbag = self;
	break;
}

if (sandbag) {
	with(sandbag) {
		clear_status();
		initial_invince = true;
		visible = true;
		set_state(PS_SPAWN);
		initialize_sandbag();
	}
} else {
	with (instance_create(0, 0, "oPlayer", player)) {
		initialize_sandbag();
	}
}


#define initialize_sandbag
obj_stage_main.sandbag = self;
custom_clone = true; // HACK. Tricks the game into disabling CPU and player control, but we'll have to mitigate other nasty side effects.
ai_disabled = true;
x = get_marker_x(1);
y = get_marker_y(1);
spr_dir = -1;
orig_ground_friction = ground_friction;
clear_buttons();
last_hbox_num = 0;


#define update_sandbag
var scroll_dirty = false;
var scroll_diff = 0;
with (sandbag) {
	// Don't tech off the floor, silly sandbag.
	// Play dead.
	can_tech = false;
	can_wall_tech = false;

	// Stay out of the top blast zone, no matter how hard you've been hit.
	var blastzone = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
	if (y < blastzone) {
		y = blastzone;
	}

	// No clipping through the floor to your death, either!!
	if (y > room_height - 80) {
		y = room_height - 80;
		free = false;
	}

	// Find a kill-smash and amplify it.
	if (last_hbox_num) {
		if (orig_knock >= 15 && get_hitbox_angle(enemy_hitboxID) < 70) {
			orig_knock *= 3;
			ground_friction = orig_ground_friction * 0.3333;
			sound_play(asset_get("sfx_ring_crowd"), false, 0);
			if (!hitpause) {
				old_vsp = vsp;
				old_hsp = hsp;
				hitpause = true;
			}
			hitstop += 20;
			hitstop_full += 20;
			with (enemy_hitboxID.player_id) {
				if (!hitpause) {
					old_vsp = vsp;
					old_hsp = hsp;
					hitpause = true;
				}
				hitstop += 20;
				hitstop_full += 20;
			}
		}
		last_hbox_num = 0;
	}

	// Check the side blast zones.
	// If they're somehow out here before the barrier's even broken, tough luck.
	if (x < -other.blast_side || x > room_width + other.blast_side) {
		if (player != 5) {
			custom_clone = false;
		}
		return;
	}

	if (!other.barrier_broken) {
		var bounce_fx = false;

		// Break barrier
		if ((x < other.stage_left || x > other.stage_right) && abs(hsp) > 10) {
			break_barrier();
			music_fade();
			if (!hitpause) {
				old_vsp = vsp;
				old_hsp = hsp;
				hitpause = true;
			}
			hitstop += 30;
			hitstop_full += 30;
			sound_play(asset_get("sfx_ice_shatter_big"));
			with (hit_player_obj) {
				var hfx = spawn_hit_fx(other.x, other.y - floor(other.char_height / 2), 304);
				hfx.spr_dir = other.spr_dir;
				hfx.pause_timer = true;
				hfx.pause = 15;
			}
		}

		// Enforce barrier
		else if (!hitpause && x < other.stage_left) {
			x = other.stage_left;
			hsp = -hsp;
			bounce_fx = true;
		} else if (!hitpause && x > other.stage_right) {
			x = other.stage_right;
			hsp = -hsp;
			bounce_fx = true;
		}
		if (bounce_fx) {
			sound_play(asset_get("sfx_clairen_tip_weak"));
			with (hit_player_obj) {
				var hfx = spawn_hit_fx(other.x, other.y - floor(other.char_height / 2), 303);
				hfx.spr_dir = other.spr_dir;
				hfx.pause_timer = true;
				hfx.pause = 10;
			}
			break;
		}
		else if (!other.barrier_broken) {
			break;
		}
	}

	if (x > other.ruler_start) {
		// Here's where the infinite hallway magic happens. :3
		var MAX_X = room_width - view_get_wview() / 2;
		if (x > MAX_X) {
			scroll_dirty = true;
			scroll_diff = x - MAX_X;
			other.scroll_x += scroll_diff;
			x = MAX_X;
		}

		// Bounce along the floor.
		if (vsp > 6 && y + vsp > room_height - 80) {
			if (vsp > 12) {
				sound_play(asset_get("sfx_blow_heavy2"));
			} else if (vsp > 9) {
				sound_play(asset_get("sfx_blow_medium1"));
			} else {
				sound_play(asset_get("sfx_blow_weak2"));
			}

			y = room_height - 80;
			free = true;
			vsp = -vsp * 0.65;

			/*with (hit_player_obj) {
				var hfx = spawn_hit_fx(other.x, other.y, 303);
				hfx.spr_dir = other.spr_dir;
				hfx.pause_timer = true;
				hfx.pause = 10;
			}*/
			with (spawn_dust_fx(x, y, asset_get("hfx_direction_bg"), 16)) {
				spr_dir = other.spr_dir * 0.5;
				image_yscale = 0.5;
				dust_depth = false;
			}
			with (spawn_dust_fx(x, y, asset_get("hfx_direction_fg"), 16)) {
				spr_dir = other.spr_dir * 0.5;
				image_yscale = 0.5;
				dust_depth = true;
			}
		}

		// Don't get up until you're fully stopped.
		if (state == PS_HITSTUN_LAND) {
			if (hsp > 0) {
				state_timer = -1;
				if (hsp > 4) {
					if ((obj_stage_main.dust_timer % 4) == 0) {
						with (spawn_dust_fx(x, y, asset_get("dust_dash_spr"), 16)) {
							spr_dir = -other.spr_dir * 0.5;
							image_yscale = 0.5;
							dust_depth = true;
						}
					}
					obj_stage_main.dust_timer++;
				}
			} else if (obj_stage_main.recovery_timer++ < 45) {
				state_timer = -1;
			} else {
				// All done!
				ground_friction = orig_ground_friction;
				if (player == 5) {
					// Our sandbert needs to get up first.
					set_state(PS_TECH_GROUND);
				} else {
					// Everyone else go straight into taunt / idle
					set_state(PS_IDLE);
				}
			}
		} else if (state == PS_IDLE && !taunt_down) {
			set_attack(AT_TAUNT);
			taunt_down = true;
			switch (url) {
				case CH_SHOVEL_KNIGHT:
					shield_down = true;
					special_down = (random_func(0, 1, false) > 0.9);
					break;
			}
		}
	}
}

// Recalculate current distance
full_distance = max((sandbag.x - ruler_start + scroll_x) / 32, 0);
stat_distance = min(full_distance, 9999.9);

if (!articles_cleared && full_distance > 0) {
	articles_cleared = true;
	with (obj_article1) {
		if (remove_while_measuring()) {
			remove_article();
		}
	}
	with (obj_article2) {
		if (remove_while_measuring()) {
			remove_article();
		}
	}
	with (obj_article3) {
		if (remove_while_measuring()) {
			remove_article();
		}
	}
	with (obj_article_solid) {
		if (remove_while_measuring()) {
			remove_article();
		}
	}
	with (obj_article_platform) {
		if (remove_while_measuring()) {
			remove_article();
		}
	}
}

// Play tick sound for distance
if (full_distance - distance_tick >= 1.0) {
	distance_tick = full_distance;
	sound_play(asset_get("mfx_input_key"), false, 0);
}

if (scroll_dirty) {
	camera.x -= scroll_diff;
	with (oPlayer) {
		if (other.sandbag != self) {
			x -= scroll_diff;
			if (x < 0) {
				x = 0;
			}
		}
	}
	/*with (asset_get("hit_fx_white_obj")) {
		x -= scroll_diff;
	}*/
	with (asset_get("new_dust_fx_obj")) {
		x -= scroll_diff;
	}
	with (obj_article1) {
		if (x > other.ruler_start) {
			x -= scroll_diff;
		}
	}
	with (obj_article2) {
		if (x > other.ruler_start) {
			x -= scroll_diff;
		}
	}
	with (obj_article3) {
		if (x > other.ruler_start) {
			x -= scroll_diff;
		}
	}
	with (obj_article_solid) {
		if (x > other.ruler_start) {
			x -= scroll_diff;
		}
	}
	with (obj_article_platform) {
		if (x > other.ruler_start) {
			x -= scroll_diff;
		}
	}
	update_bg_scroll();
}


#define break_barrier
with (obj_stage_main) {
	// This breaks the invisible barriers around the platform,
	// but also moves the right blast zone!
	barrier_broken = true;
	room_width = orig_room_width * 3;
	// The bg layers need to be adjusted to compensate, to make it seamless.
	update_bg_scroll();
}


#define update_bg_scroll
var offset = 0;
if (barrier_broken) {
	offset = orig_room_width;
}
var parallax_x = 0;
var inv_parallax_x = 0;
for (var i = 1; i < 6; i++) {
	parallax_x = get_bg_data(i, BG_LAYER_PARALLAX_X);
	inv_parallax_x = 1 - parallax_x;
	set_bg_data(i, BG_LAYER_X, (offset * parallax_x) - floor(scroll_x * inv_parallax_x));
}

set_bg_data(6, BG_LAYER_X, 448 * 2 - floor(scroll_x));


#define update_camera
// This isn't in article_camera_update for processing order reasons.
with (camera) {
	hsp = floor((obj_stage_main.sandbag.x - x) / 3);
}
if (get_instance_x(asset_get("camera_obj")) - 480 >= ruler_start) {
	set_bg_data(6, BG_LAYER_REPEAT, 2);
}


#define clear_buttons
left_down = false;
right_down = false;
up_down = false;
down_down = false;
jump_down = false;
attack_down = false;
strong_down = false;
special_down = false;
shield_down = false;
taunt_down = false;
clear_button_buffer(PC_LEFT_STICK_PRESSED);
clear_button_buffer(PC_RIGHT_STICK_PRESSED);
clear_button_buffer(PC_UP_STICK_PRESSED);
clear_button_buffer(PC_DOWN_STICK_PRESSED);
clear_button_buffer(PC_JUMP_PRESSED);
clear_button_buffer(PC_ATTACK_PRESSED);
clear_button_buffer(PC_STRONG_PRESSED);
clear_button_buffer(PC_SPECIAL_PRESSED);
clear_button_buffer(PC_SHIELD_PRESSED);
clear_button_buffer(PC_TAUNT_PRESSED);


#define clear_status
// stat changes
if ("orig_ground_friction" in self) {
	ground_friction = orig_ground_friction;
}
// zetterburn
burned = false;
// maypul
marked = false;
wrapped = false;
// ranno
poison = 0;
bubbled = false;
// elliana
stuck = false;


#define skip_turn(p)
return (!is_player_on(p) || (!bot_match && get_player_hud_color(p) == c_gray) || (get_match_setting(SET_TEAMS) && p > 2));


#define team_spawn
var my_team = get_player_team(player);
var team_p = 1;
for (var i = 1; i < player; i++) {
	if (get_player_team(i) == my_team) {
		team_p++;
	}
}
if (team_p == 1) {
	// Check if you're alone and use the FFA spawn if so.
	for (var i = player + 1; i < 5; i++) {
		if (get_player_team(i) == my_team) {
			break;
		}
	}
	if (i == 5) {
		x = get_marker_x(3);
		y = get_marker_y(3);
		spr_dir = 1;
		return;
	}
}
x = get_marker_x(3 + team_p);
y = get_marker_y(3 + team_p);
spr_dir = (team_p > 2 ? -1 : 1);


#define spawn_hacks
// Character-specific spawning support
switch (url)
{
	case "2142662749": // Ru & Zo
		spawnZo = true;
		break;
}


#define remove_while_measuring
// Character-specific articles that need to be removed while measuring
if (instance_exists(player_id) && player_id.object_index == oPlayer) {
	switch (player_id.url)
	{
		case "2142662749": // Ru & Zo
			if ("isZo" in self) {
				return true;
			}
			break;
	}
}
return false;


#define remove_article
// Character-specific article support
if (instance_exists(player_id) && player_id.object_index == oPlayer) {
	switch (player_id.url)
	{
		case "2142662749": // Ru & Zo
			if ("isZo" in self) {
				player_id.zoID = undefined;
				instance_destroy(id);
				return;
			}
			break;
	}
}

// Remove character articles (as safely as possible)
if (can_be_grounded) {
	y = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) + 1;
} else if ("state" in self && state == 1) {
	state = 2;
}

