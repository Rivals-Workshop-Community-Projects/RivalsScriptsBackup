//article1_hit.gml

if (enemy_hitboxID.hit_priority > 0)
{
    if (get_player_team(enemy_hitboxID.player) != get_player_team(trick_ring_player))
    {
        //owner set
        if (enemy_hitboxID.player < 5)
        {
            trick_ring_player = enemy_hitboxID.player;
            trick_ring_player_id = enemy_hitboxID.player_id; //i have no idea if this will work with parried projectiles
            hud_owner_col = (trick_ring_player_id.temp_level == 0 || get_match_setting(SET_TEAMS)) ? get_player_hud_color(trick_ring_player) : hud_col_sel[trick_ring_player];
        }

        //set state and timing
        state = (trick_ring_player == player) ? 2 : 4;
        state_timer = 0;
        visible = true;
        state_timer -= player_id.hitstop;
        ring_stun_start_time = state_timer;

        //hitbox interraction
        with (enemy_hitboxID)
        {
            //set hitpause time
            if (type == 1) player_id.hitstop = get_hitstop_formula(0, 0, hitpause, hitpause_growth, extra_hitpause);

            sound_play(sound_effect); //plays the hitbox's hit sound... on hit
            if (effect == 1 && sound_effect == 0) sound_play(asset_get("sfx_burnapplied"));
            spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - 16, hit_effect); //puts up the hit fx of the hitbox

            if (type == 2 && enemies == 0) instance_destroy(self);
        }

        //spawn vfx
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), 18);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = 9;
        newdust.player = trick_ring_player;
        sound_play(asset_get("sfx_coin_capture"));
        sound_play(sound_get("sfx_rainbowring_swap"));
    }
}