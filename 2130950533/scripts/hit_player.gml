// If this character lands a hit while in the comedy zone, apply some extra damage.
with (asset_get("obj_article1")){
    if (player_id == other.id) {
        if (state == 2) {
            // Deal bonus damage we overlap the Comedy Zone, or expend a charge if available
            var deal_damage = false;
            if (place_meeting(x, y, other)) {
                deal_damage = true;
            } else if (other.comedy_zone_charges_granted > 0) {
                // This only consumes a charge if Bloppi is not in the Comedy Zone
                deal_damage = true;
                other.comedy_zone_charges_granted--;
            }
            if (deal_damage) {
                if (has_rune("L")) { // Double zone effectiveness
                    take_damage(other.hit_player_obj.player, player, 2);
                } else {
                    take_damage(other.hit_player_obj.player, player, 1);
                }
                // Inflict the "sick burn, bro" status effect
                ds_map_set(burning_counter_map, other.hit_player_obj.player, laughter_burn_duration);
                // Check if this hit did enough damage to increase the damage over time effect
                var calculated_dot = floor(other.my_hitboxID.damage * .75);
                if (calculated_dot > laughter_total_dot) {
                    laughter_total_dot = calculated_dot;
                }
                
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

// Allow jump-cancel of dtilt
if (my_hitboxID.attack == AT_DTILT) {
    dtilt_jump_cancel_allowed = true;
}

// Play pop sound when fspecial projectile dissipates
if (my_hitboxID.attack == AT_FSPECIAL) {
    sound_play( sound_get("pop") );
}