
with (pHitBox) {
    if ("follower_owner" in self && follower_owner == other.id && attack == AT_NSPECIAL && hbox_num == 4) {
        if (other.hitstop > 0)
            hitbox_timer = max(hitbox_timer - 1, 0);
        else
        {
            x = other.x + x_pos;
            y = other.y + y_pos;
        }
        if ((was_parried || reflected) && reflect_player_prev != player) {
        	reflect_player_prev = player;
        	
            other.was_parried = true;
            other.reflect_player_prev = other.reflect_player;
            other.reflect_player_id_prev = other.reflect_player_id;
            other.reflect_player = player;
            other.reflect_player_id = last_player_id;
        }
    }
}

if (hitstop > 0) exit;

state_timer++;

switch (state) {
    case 0:
        if (state_timer == 1) {
            trail_direction = spr_dir == 1 ? 0 : 180;
            reflect_player = player_id.player;
            hitscan_start();
        }
        if (state_timer <= 6) {
            if (was_parried) {
                x = trail_x;
                y = trail_y;
                spr_dir = -spr_dir;
                state = 1;
                state_timer = 0;
                destroy_trails();
            }
        }
        
        if (state_timer >= 24) {
            instance_destroy(id);
            exit;
        }
    break;
    case 1:
        if (state_timer == 1) {
            if (trail_icewall_hit) {
                trail_direction = point_direction(x, y, player_id.x, player_id.y);
                spr_dir = dsin(trail_direction) < 0 ? 1 : -1;
            }
            else
                trail_direction = spr_dir == 1 ? 0 : 180;
            hitscan_start();
        }
        
    break;
}

//Trail
var new_array = [];
for (var i = 0; i < array_length(trail_array); ++i)
{
    var obj = trail_array[i];
    if (hitstop <= 0) {
	    obj.image_index = lerp(0, 6, obj.timer/(obj.timer_max))
    	obj.timer++;
    }
    if (obj.timer <= obj.timer_max) new_array[array_length_1d(new_array)] = obj;
}
trail_array = new_array;

#define hitscan_start()
trail_x = x;
trail_y = y;
var _length = 0;
while (_length <= trail_length) {
    var icewall = instance_place(trail_x, trail_y, obj_article_solid);
    if (instance_exists(icewall)) {
        if (icewall.player_id.url == player_id.url) {
            if (icewall.hitstop <= 0) {
                spr_dir = -spr_dir;
                trail_direction = spr_dir == 1 ? 45 : 135;
                trail_icewall_hit = true;
                hitstop = 4;
                shake_camera(10, 6);
                icewall.old_hsp = 0;
                icewall.hitstop = 8;
                icewall.state = 4;
                icewall.state_timer = 0;
                icewall.window = 1;
                icewall.window_timer = 0;
                _length = ceil(_length / 8);
                trail_x += lengthdir_x(32, trail_direction);
                trail_y += lengthdir_y(32, trail_direction);
                _length += 32;
            }
        }
    }
    else {
        if place_meeting(trail_x, trail_y, asset_get("par_block")) {
        	spr_dir = -spr_dir;
            trail_direction = spr_dir == 1 ? 45 : 135;
            trail_icewall_hit = true;
            hitstop = 4;
            shake_camera(10, 6);
            _length = ceil(_length / 8);
            trail_x += lengthdir_x(32, trail_direction);
            trail_y += lengthdir_y(32, trail_direction);
			if (place_meeting(trail_x, trail_y, asset_get("par_block"))) {
				break;
			}
        }
        if place_meeting(trail_x, trail_y, asset_get("plasma_field_obj")) 
            break;
    }
    create_article_hitbox(AT_NSPECIAL, 4, trail_x, trail_y);
    
    var colliding_player = collision_circle(trail_x, trail_y, 24, pHurtBox, 1, 1);
    if (instance_exists(colliding_player)) {
        if (colliding_player.playerID.player != reflect_player && !colliding_player.dodging && !colliding_player.playerID.invincible) {
            trail_x += lengthdir_x(32, trail_direction);
            trail_y += lengthdir_y(32, trail_direction);
    		create_article_hitbox(AT_NSPECIAL, 4, trail_x, trail_y);
            break;
        }
    }
    // SOUP EDIT HERE
    var trail_spr = sprite_get("nspecial_proj2")
    if player_id.alt_invert_ice trail_spr = sprite_get("nspecial_proj2_inverted")
    
    create_trail(trail_spr, trail_x, trail_y, 32, trail_direction);
    // SOUP EDIT OVER
    trail_x += lengthdir_x(32, trail_direction);
    trail_y += lengthdir_y(32, trail_direction);
    _length += 32;
}

#define create_trail(_sprite, _x_start, _y_start, _distance, _dir)
trail_array[array_length(trail_array)] = {
	x:round(_x_start), 
	y:round(_y_start), 
	spr_dir:spr_dir, 
	dist:_distance,
	sprite_index:_sprite, 
	image_index:0, 
	image_xscale:1,
	rot:_dir,
	col:c_white,
	timer:0, 
	timer_max:24
};

#define destroy_trails()
for (var i = 0; i < array_length(trail_array); ++i)
{
    var obj = trail_array[i];
    obj.timer = obj.timer_max;
}

#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.can_hit_self = true;
hbox.player = reflect_player;
for (var i = 0; i < array_length(hbox.can_hit); i++) {
    hbox.can_hit[@ hbox.player] = false;
}
if (trail_icewall_hit) hbox.damage = ceil(hbox.damage * 1.1);
hbox.follower_owner = id;
hbox.spr_dir = spr_dir;
hbox.x_pos = (hbox.x - x);
hbox.y_pos = (hbox.y - y);
return hbox;