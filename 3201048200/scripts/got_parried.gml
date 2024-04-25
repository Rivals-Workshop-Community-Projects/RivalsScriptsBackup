
var atk = my_hitboxID.attack
var hbox = my_hitboxID.hbox_num

// Insert obvious pun

// Disable parachute
if (parachute_active) {
    parachute_active = false;
    var despawn_parachute = instance_create(x+(1*spr_dir), y-15, "obj_article3");
    despawn_parachute.state = 00;
}

// FSpecial: emulate melee parry
if (atk == AT_FSPECIAL && hbox == 1 && my_hitboxID.orig_player == player) {
    was_parried = 1;
    my_hitboxID.destroyed = true;
    gh_hitbox = noone;
}

// DStrong: cancel parrystun if enemy didn't parry
if (atk == AT_DSTRONG && my_hitboxID.orig_player == player) {
    if (hit_player_obj == self) {
        dstrong_cancel_parry_stun = (get_gameplay_time() != dstrong_parried_time);
    }
    else {
        dstrong_parried_time = get_gameplay_time(); // resolves potential script order conflict
        dstrong_cancel_parry_stun = false;
    }
}

// NSpecial: create reflected drone article
if (atk == AT_NSPECIAL && hbox == 1 && my_hitboxID.hit_priority == 5 && my_hitboxID.orig_player == player) {
    
    var drone = my_hitboxID.owner_drone
    drone.state = 5;
    drone.state_timer = 0;
    drone.reflected_player_id = hit_player_obj;
    drone.reflect_dir = point_direction(drone.x, drone.y, x, y - (char_height / 2));
    drone.ignores_walls = true;
    drone.can_be_grounded = false;
    
}

// Falling DSpecial: create reflected button article
if (atk == AT_DSPECIAL_AIR && hbox == 1 && my_hitboxID.orig_player == player) {
    
    var button = my_hitboxID.owner_button
    button.state = 6;
    button.state_timer = 0;
    button.reflected_player_id = hit_player_obj;
    button.reflect_dir = 90;
    button.ignores_walls = true;
    button.can_be_grounded = false;
    button.was_parried = true;
    
}

// DSpecial: generate cooldown manager
if (atk == AT_DSPECIAL && my_hitboxID.orig_player == player) {
    
    // Rune K: exploding cooldown indicator
    if (hit_player_obj == self && has_rune("K")) {
        var cd_manager = instance_create(floor(my_hitboxID.x), floor(my_hitboxID.y), "obj_article3");
        cd_manager.state = 22;
        cd_manager.vis_frame = 7;
        cd_manager.vis_y_offset = 0;
    }
    
    else {
        var cd_manager = instance_create(floor(my_hitboxID.x), floor(my_hitboxID.y), "obj_article3");
        cd_manager.state = 20;
        cd_manager.vis_frame = 7;
        cd_manager.vis_y_offset = 0;
    }
    
}