// got_parried.gml
if my_hitboxID.effect == 228 {
    var closest_ring = noone;
    var closest_ring_distance = 1000000000;
    
    with obj_article2 {
        if player_id.url == other.url {
            var current_ring_distance = point_distance(x,y,other.my_hitboxID.x,other.my_hitboxID.y);
            
            if  current_ring_distance < closest_ring_distance && state == 1 {
                closest_ring_distance = current_ring_distance;
                closest_ring = id;
            }
        }
    }
    if instance_exists(closest_ring) {
        closest_ring.max_lifetime = 0;
        closest_ring.player_id.move_cooldown[AT_NSPECIAL] = 300;
    }
}//*/

if (my_hitboxID.attack >= AT_FSTRONG && my_hitboxID.attack <= AT_USTRONG) || (my_hitboxID.attack - 13 >= AT_FSTRONG && my_hitboxID.attack <= AT_USTRONG) {
    hsp = 0;
    vsp = 0;
    set_window_value(attack, 3, AG_WINDOW_HSPEED_TYPE, 0);
    set_window_value(attack, 3, AG_WINDOW_VSPEED_TYPE, 0);
}