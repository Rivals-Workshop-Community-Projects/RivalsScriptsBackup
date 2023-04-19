//article1_update

fs_twinkle_sprite = fs_twinkle_sprite_s;
fs_explosion_sprite = fs_explosion_sprite_s;
fs_size_indicator_sprite = fs_size_indicator_sprite_s;
fs_hitbox = 1;
fs_pullbox = 4;
if (charge_fraction == 1) { // Largest explosion
    fs_twinkle_sprite = fs_twinkle_sprite_l;
    fs_explosion_sprite = fs_explosion_sprite_l;
    fs_size_indicator_sprite = fs_size_indicator_sprite_l;
    fs_hitbox = 3;
    fs_pullbox = 6;
} else if (charge_fraction > 0.5) { // Medium explosion
    fs_twinkle_sprite = fs_twinkle_sprite_m;
    fs_explosion_sprite = fs_explosion_sprite_m;
    fs_size_indicator_sprite = fs_size_indicator_sprite_m;
    fs_hitbox = 2;
    fs_pullbox = 5;
}

// Rotate between sprites while nspecial is deployed
if (frame_timer == 0) {
    if (fs_deployed) {
        if (fs_countdown > 0) {
            fs_looping_twinkle_index++;
            fs_looping_twinkle_index %= fs_looping_twinkle_index_max;
        } else {
            fs_deployed = false;
            fs_exploding = true;
        }
    } else {
        fs_looping_twinkle_index = 0;
    }
    if (fs_exploding) {
        if (fs_explosion_index >= fs_explosion_index_max) {
            fs_exploding = false;
            instance_destroy();
            exit;
        } else {
            if ((fs_explosion_index == 0) && (fs_explosion_index_prev == -1)) {
                sound_play(asset_get("sfx_birdclap"), false, noone, 0.6, 1.2);
            }
            // Create the pulling hitbox on the very first cycle of the 6th frame of the explosion
            if ((fs_explosion_index == 1) && (fs_explosion_index_prev == 0)) {
                create_hitbox(AT_NSPECIAL_2, fs_pullbox, x, y);
            }
            // Create the real hitbox on the very first cycle of the 6th frame of the explosion
            if ((fs_explosion_index == 5) && (fs_explosion_index_prev == 4)) {
                sound_play(asset_get("sfx_ell_uspecial_explode"));
                create_hitbox(AT_NSPECIAL_2, fs_hitbox, x, y);
            }
            fs_explosion_index_prev = fs_explosion_index;
            fs_explosion_index++;
        }
    } else {
        fs_explosion_index = 0;
        fs_explosion_index_prev = -1;
    }
}

if(fs_explosion_index > 1 && fs_explosion_index < 5)
{
    // For each player, pull towards the gravity's center
    with (asset_get("oPlayer")) 
    {
        if (other.player_id != id && hitpause) 
        {
            if(collision_circle(other.x, other.y, 135, id, true, false)) 
            {
                y = lerp(y,other.y+char_height/2,0.2);
                x = lerp(x,other.x,0.2);
            }
        }
    }
}

if (fs_countdown > 0) {
    fs_countdown--;
}
frame_timer++;
if (fs_exploding) {
    frame_timer %= explosion_frame_duration;
} else {
    frame_timer %= twinkle_frame_duration;
}

with (oPlayer) 
{
    if (other.player_id == id && state == PS_RESPAWN)
    {
        with(other)
        {
            instance_destroy();
            break;
        }
    }
}