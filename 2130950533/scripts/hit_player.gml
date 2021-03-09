// If this character lands a hit while in the comedy zone, apply some extra damage.

/*
// This works for detecting "I'm in the zone"
if (place_meeting(x, y, asset_get("obj_article1"))) {
    take_damage(hit_player_obj.player, player, 3);
}
*/
with (asset_get("obj_article1")){
    if (player_id == other.id) {
        if (state == 2) {
            if (place_meeting(x, y, other)) {
                // Deal bonus damage
                take_damage(other.hit_player_obj.player, player, 2);
                // Inflict the "sick burn, bro" status effect
                ds_map_set(burning_counter_map, other.hit_player_obj.player, laughter_burn_duration);
                // Refresh Comedy Zone laughter if needed
                if (laughter_audio_countdown == 0) {
                    laughter_audio_countdown = laughter_audio_duration;
                    laughter_video_countdown = laughter_video_duration;
                }
                
                // Draw attention with a hit effect
                if (other.spr_dir) {
                    spawn_hit_fx(other.hit_player_obj.x, other.hit_player_obj.y - other.hit_player_obj.char_height, other.laugh_splat);
                } else {
                    spawn_hit_fx(other.hit_player_obj.x, other.hit_player_obj.y - other.hit_player_obj.char_height, other.reverse_laugh_splat);
                }
                
                // TODO - consider playing a special sound
            }
        }
    }
}

/*
// Trying to detect "The target is in the zone"
if (hit_player_obj.place_meeting(hit_player_obj.x, hit_player_obj.y, asset_get("obj_article1"))) {
    take_damage(hit_player_obj.player, player, 100);
}
*/