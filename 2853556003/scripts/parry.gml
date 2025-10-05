//parry - called when you parry any hitbox

if(enemy_hitboxID.type == 2 && enemy_hitboxID.player_id == self){
    invince_time = 0
    invincible = false
    can_be_hit[hit_player] = 0
    
}