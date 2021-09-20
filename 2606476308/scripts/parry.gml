//parry - called when you parry any hitbox

if (enemy_hitboxID.type == 1 && hit_player_obj.bambood && hit_player_obj.bambood_id == id){
    //HEAL 5 DAMAGE ALL AT ONCE
    take_damage(player, -1, -5);
    sound_play(sound_get("heal"));
}