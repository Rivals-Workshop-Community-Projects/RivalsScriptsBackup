if (hit_player_obj.amaya_venom && hit_player_obj.amaya_venom_id = id && enemy_hitboxID.type != 2){
		hit_player_obj.amaya_venom_count--;
                if (hit_player_obj.amaya_venom_count <= 0) hit_player_obj.amaya_venom = false;
}

if (attack = AT_FSPECIAL && prev_state = PS_ATTACK_GROUND || attack = AT_FSPECIAL && prev_state = PS_ATTACK_AIR)
{
    hadoken_charge = 0;
}