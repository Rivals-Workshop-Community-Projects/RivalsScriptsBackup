ae = 0;
best = noone;
for(ae = 0; ae < 5; ae++){
    with oPlayer if self != other.player_id && player = other.ae{
        if other.best == noone other.best = self
        else if other.best != self && point_distance(x, y - char_height/2, other.x, other.y) < point_distance(other.best.x, other.best.y - char_height/2, other.x, other.y){
            other.best = self;
        }
    }
}
angle_dif = angle_difference(point_direction(x, y, best.x, best.y - best.char_height/2 - 10), 0);
hsp = 8 * cos(degtorad(angle_dif));
vsp = -8 * sin(degtorad(angle_dif));

enemy_dir = 0;

orb_lv_hb = player_id.orb_lv;
player_id.orb_lv = 0;