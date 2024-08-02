//hi
if (other_player_id.healTarget != noone && other_player_id.healTarget == id && other_player_id.healTimer <= 65) {
    if (other_player_id.healTimer > 60) {
        with (other_player_id) {
            draw_sprite(sprite_get("taunt2_healnum"), 0, other.x + (20 * other.spr_dir), (other.y - 6));
        }
    } else if (other_player_id.healTimer > 50) {
        with (other_player_id) {
            draw_sprite(sprite_get("taunt2_healnum"), 0, other.x + (20 * other.spr_dir), (other.y - 6) - ((60 - healTimer) * 3));
        }
    } else if (other_player_id.healTimer > 40) {
        with (other_player_id) {
            draw_sprite(sprite_get("taunt2_healnum"), 0, other.x + (20 * other.spr_dir), (other.y - 36) + ((50 - healTimer) * 3));
        }        
    } else if (other_player_id.healTimer > 34) {
        with (other_player_id) {
            draw_sprite(sprite_get("taunt2_healnum"), 0, other.x + (20 * other.spr_dir), (other.y - 6) - ((40 - healTimer) * 3));
        }
    } else if (other_player_id.healTimer > 28) {
        with (other_player_id) {
            draw_sprite(sprite_get("taunt2_healnum"), 0, other.x + (20 * other.spr_dir), (other.y - 27) + ((34 - healTimer) * 3));
        }        
    } else {
        with (other_player_id) {
            draw_sprite(sprite_get("taunt2_healnum"), 0, other.x + (20 * other.spr_dir), (other.y - 6));
        }        
    }
}