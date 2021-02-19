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
    }
}