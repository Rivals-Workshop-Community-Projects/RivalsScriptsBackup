//spr_dir = 1;
var s = sound_get("sizzle")
var _s = sound_get("sizzlehit")
var ind = oPlayer;
for (var i = 0; i < 2; i++) {
	if i == 0 ind = oPlayer;
	if i == 1 ind = oTestPlayer;
	with (ind) {
		if amarelle_player != other.player_id && amarelle_player != other.copy_player_id continue;	
		if state == PS_DEAD or state == PS_RESPAWN {
			amarelle_effect[0] = 0;
			amarelle_effect[1] = 0;
			amarelle_timer = 0;
			amarelle_hfx = 0;
			amarelle_hfx_time = 0;
			
		}
		
		
		if amarelle_should_submit {
			amarelle_should_submit = false;
			if !activated_kill_effect {
				amarelle_timer = 30;
				sound_play(_s)
			}
			else {
				amarelle_timer = 50;
				sound_play(_s)
			}
		}

		if hitpause continue;
		amarelle_timer--;
		if amarelle_timer == 0 {
			other.spr_dir = spr_dir
			sound_play(s)
			
			var sff = (amarelle_player == other.copy_player_id)
			with (other) {
			var hb = create_hitbox(AT_EXTRA_2, other.amarelle_effect[0], floor(other.x), floor(other.y-other.char_height/2));
			if sff hb.player = copy_player_id.player;
			}
			amarelle_effect[0] = amarelle_effect[1];
			amarelle_effect[1] = 0;
			if amarelle_effect[0] > 0 amarelle_timer = 30;
			amarelle_current_effect = 0;
		}
		amarelle_timer = max(amarelle_timer, 0)

		
		if state_cat == SC_HITSTUN && amarelle_hfx > 0 {
		amarelle_hfx_time--;
		if amarelle_hfx_time <= 0 {
			with (other) {
				var hh = orig_player_id.hfx[8+other.amarelle_hfx];
				var h = spawn_hit_fx(floor(other.x), floor(other.y - (other.char_height/2)), hh);
			}
			
			amarelle_hfx_time = 8;

			h.depth = depth - 3;
		}
		
		} else {
			amarelle_hfx = 0;
			amarelle_hfx_time = 0;
		}
	}
}