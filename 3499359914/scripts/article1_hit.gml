//Make hit effects happen
cloud_hit = true;

with(enemy_hitboxID){
    
    has_hit = true;
    
    if enemies == 0 && type == 2{
        destroyed = true;
    }
    
}

with(enemy_hitboxID.player_id){
    var enemy_hbox = other.enemy_hitboxID;
    var enemy_hbox_x = (other.x + other.enemy_hitboxID.x)/2;
    var enemy_hbox_y = (other.enemy_hitboxID.y);
    
    spawn_hit_fx(enemy_hbox_x,enemy_hbox_y,enemy_hbox.hit_effect);
    sound_play(other.enemy_hitboxID.sound_effect);
    
    has_hit = true;
}