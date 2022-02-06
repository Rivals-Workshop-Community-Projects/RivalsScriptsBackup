visible = !((player_id.state == PS_RESPAWN || player_id.state == PS_DEAD) && !player_id.visible);

// set up vars

var force_x = 0;
var force_y = 0;

var dist_to_prev = point_distance(x, y, prev.x, prev.y);
var dist_to_next = point_distance(x, y, next.x, next.y);

var ang_to_prev = point_direction(x, y, prev.x, prev.y);
var ang_to_next = point_direction(x, y, next.x, next.y);

// shmoove toward your neighbors if you are too far away from them

if (dist_to_prev > player_id.chain_length / 2){
	force_x += lengthdir_x(dist_to_prev - player_id.chain_length, ang_to_prev);
	force_y += lengthdir_y(dist_to_prev - player_id.chain_length, ang_to_prev);
}

if (dist_to_next > player_id.chain_length / 2){
	force_x += lengthdir_x(dist_to_next - player_id.chain_length, ang_to_next);
	force_y += lengthdir_y(dist_to_next - player_id.chain_length, ang_to_next);
}

// make the chain droop if the player and the legion are close together

var droop = lerp(2, 0, player_id.legion.player_dist / player_id.legion.max_dist);

force_y += droop * height_mul * 5;

// add some shaking if the chain is stretched

if player_id.legion.player_dist > player_id.legion.max_dist / 4{
	if (exist_timer + 0) % 8 == 0 force_x += sign(sin(exist_timer / 7));
	if (exist_timer + 4) % 8 == 0 force_y += sign(sin(exist_timer / 7));
}

// apply the final force

x += force_x;
y += force_y;



if player_id.legion.sprite_index == sprite_get("legion_dspecial") && floor(player_id.legion.image_index) == 3 sprite_index = player_id.spr_chain_segment_hitbox;
else sprite_index = player_id.spr_chain_segment;



image_index = exist_timer / 4;
image_alpha = abs(sin(exist_timer / 24)) * 0.25 + 0.5;

exist_timer++;



// this function is unused, oops

#define jitter(seed, amt)

return random_func(seed, amt * 2, 1) - amt;