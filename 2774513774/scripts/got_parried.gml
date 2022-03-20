//got_parried

if(attack == AT_DSPECIAL){
    if(window = 4){
    hit_player_obj.state = PS_PRATLAND;
    hit_player_obj.attack_invince = false;
    hit_player_obj.invincible = false;
    sound_play(sound_get("tried_something"));
    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, 157)
    }
}
