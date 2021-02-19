//article1_update

x = player_id.x;
y = player_id.y-30;

with (asset_get("plasma_field_obj")){ //destroys in clairen's plasma field
    with (other.id){
        if (get_player_team(get_instance_player(other)) != get_player_team(player)){
            if (point_distance(x+10*spr_dir, y-46, get_instance_x(other), get_instance_y(other)) < 180){
                state_timer = (7*60);
            }
        }
    }
}

image_angle += 3;

if (state_timer <= 10) {
	image_xscale += 0.1;
	image_yscale += 0.1;
}

chaos_hit_timer++;

if (chaos_hit_timer >= chaos_hit) {
    create_hitbox(AT_FSPECIAL, 11, x, y);
    chaos_hit_timer = 0;
}

if (player_id.orbit_hit >= 8) {
    player_id.orbit_hit = 0;
    player_id.orbit_active = false;
    instance_destroy();
}

image_index = player_id.orbit_hit;

state_timer++;

if (state_timer >= (2*second)) and ((get_gameplay_time() mod 8) > 4) {
	image_alpha = 0;
} else {
    image_alpha = 1;
}

if (state_timer >= (4*second)) {
    player_id.orbit_hit = 0;
    player_id.orbit_active = false;
    instance_destroy();
}