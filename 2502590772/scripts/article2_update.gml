//article2_update.gml

var hb_exists = instance_exists(hitbox_id);

if (!hb_exists && hitbox_respawn_time < 0) {
    trigger_hitbox_destroyed = true;
}

//parry handling
handle_got_parried();
//hitbox handling
handle_hitbox_destroyed();
handle_hitbox_respawn();

//handle hitpause
if (hitpause_timer > 0) {
    hsp = 0;
    vsp = 0;
    hitpause_timer--;
}
//handle hitbox respawn timer
else if (hitbox_respawn_time > 0) {
    hsp = 0;
    vsp = 0;
    hitbox_respawn_time--;
}
else {
    //destroy when bumping into walls
    //if (hb_exists && hsp == 0 && place_meeting(x + spr_dir, y, asset_get("par_block"))) {
    if (hb_exists && hit_wall) {
        hitbox_id.destroyed = true;
        hb_exists = false;
    }
    move_speed += move_accel;
    hsp = spr_dir * move_speed;
    image_index += 0.33;
}


//move the hitbox
if (hb_exists) {
    hitbox_id.hsp = hsp;
    hitbox_id.vsp = vsp;
    hitbox_id.x = x;
    hitbox_id.y = y;
}

//lifetime
exist_timer++;
if (exist_timer >= max_exist_timer) destroy = true;


//destroy
if (destroy) {
    sound_stop(travel_sound);
    
    if (instance_exists(hitbox_id)) {
        hitbox_id.destroyed = true;
    }
    if (should_create_hitbox_upon_destroy) {
        hitbox_id = create_hitbox(AT_FSPECIAL_2, 2, x, y);
        hitbox_id.spawned_by_article_id = id;
        if (was_parried) {
            //change variables so that this hitbox can hit the correct players
            hitbox_id.can_hit_self = true;

            //abyss fix
            hitbox_id.can_hit = array_create(20, 1);
            if (parried_by_player < 20) hitbox_id.can_hit[parried_by_player] = 0;
        }
    }

    instance_destroy();
}

#define handle_got_parried
if (!trigger_got_parried) return;
trigger_got_parried = false;
was_parried = (parried_by_player != player_id.player);
spr_dir *= -1;
exist_timer = 0;


#define handle_hitbox_destroyed
if (trigger_hitbox_destroyed) {
    trigger_hitbox_destroyed = false;
    hitbox_respawn_time = max_hitbox_respawn_time;
    move_speed = max(move_speed - 0.5, 1);
}
return;

#define handle_hitbox_respawn
if (hitbox_respawn_time != 0) return;
hitbox_respawn_time = -1;
hp--;
if (hp > 0) {
    hitbox_id = create_hitbox(AT_FSPECIAL_2, 1, x, y);
    hitbox_id.spawned_by_article_id = id;
}
else {
    //hp = 0, destroy
    destroy = true;
    return;
}

if (was_parried) {
    //change variables so that this hitbox can hit the correct players
    var i = 0;
    
    hitbox_id.owner = parried_by_player;
    hitbox_id.was_parried = was_parried;
    if (was_parried) hitbox_id.can_hit_self = true;
    /*
    var i = 1;
    repeat (4) {
       hitbox_id.can_hit[i] = (i != parried_by_player);
       i++;
    }
    */
    //abyss fix
    hitbox_id.can_hit = array_create(20, 1);
    if (parried_by_player < 20) hitbox_id.can_hit[parried_by_player] = 0;
}

return;


#define create_hitbox_from_clone_player_id
/// create_hitbox_from_clone_player_id(hb_num)
var hb_num = argument0;
var new_hb;
with (clone_player_id) {
    new_hb = create_hitbox(AT_FSPECIAL_2, hb_num, x, y);
}
return new_hb;

