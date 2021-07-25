//hitbox_update
if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 2
{
    pitch_random = 0.7 + (random_func(6, 45, true) / 100)
    sound_play(sound_get("snd_oh"), false, noone, 1, pitch_random);
    with asset_get("obj_article2")
    {
        if (player_id == other.id)
        {
            alreadyhit = 1;
            hitpause = true
            hitstop = other.my_hitboxID.hitpause
        }
    }
}

if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 3
{
    with asset_get("obj_article1")
    {
        if (player_id == other.id)
        {
            state = 5;
            state_timer = 0;
        }
    }
}

if my_hitboxID.attack == AT_FSPECIAL
{   
    if (tp_death_cd == 0){
        sound_play(sound_get("snd_save"));
        if hit_player != id
        {
            if free
            {
                hsp = 0;
                vsp = 0;
                vsp -= 8;   
                x = hit_player_obj.x;
                y = hit_player_obj.y;
            }
            else
            {
                x = hit_player_obj.x;
                y = hit_player_obj.y;
            }
        }
    }
    else{
        sound_play(sound_get("snd_save_erase"));
    }
    
}

if my_hitboxID.attack == AT_FSPECIAL && hit_player_obj.free == false
{
    set_attack(AT_FSPECIAL_2);
}


if buff_active == true
{
    take_damage(hit_player_obj.player, player, extra_damage)
}

if my_hitboxID.attack == AT_USTRONG && window < 3
{
    ustrong_char = hit_player_obj
}
