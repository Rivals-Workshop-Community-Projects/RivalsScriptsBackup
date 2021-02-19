//hitplayer

if my_hitboxID.effect == 228 {
    if hit_player_obj.state_cat == SC_HITSTUN && hit_player_obj.state != PS_TUMBLE && !hit_player_obj.grabbed_by_zeph_ring {
        var closest_ring = noone;
        var closest_ring_distance = 1000000000;
        
        var hitid = hit_player_obj;
        
        with obj_article2 {
            if player_id.url == other.url {
                var current_ring_distance = point_distance(x,y,other.my_hitboxID.x,other.my_hitboxID.y);
                
                if  current_ring_distance < closest_ring_distance && state == 1 && point_distance(x, y, hitid.x, hitid.y-24) < 80 {
                    closest_ring_distance = current_ring_distance;
                    closest_ring = id;
                }
            }
        }
        if instance_exists(closest_ring) {
            hit_player_obj.grabbed_by_zeph_ring = true;
            hit_player_obj.grabbed_by_zeph_ring_id = closest_ring;
            closest_ring.state = 3;
            closest_ring.state_timer = 0;
            sound_play(asset_get("sfx_ori_ustrong_charge"));
        }
        //print_debug(string(hit_player_obj.grabbed_by_zeph_ring));
        //print_debug(string(hit_player_obj.grabbed_by_zeph_ring_id));
    }
}

if my_hitboxID.effect == 229 {
    sound_play(asset_get("sfx_blow_heavy2"));
}

if my_hitboxID.effect == 230 {
    hit_player_obj.grabbed_by_zeph = true;
    hit_player_obj.grabbed_by_zeph_id = id;
}