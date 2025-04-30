//parry.gml

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

if(state == PS_PRATFALL && "PARRY_DUMMY" in self){
    hit_player_obj.spider_plant_parried_proj = (enemy_hitboxID.type == 2);

    if(hit_player_obj.state == PS_ATTACK_AIR || hit_player_obj.state == PS_ATTACK_GROUND){
        hit_player_obj.spider_plant_not_parried = true;
    }
    
    if(hit_player_obj.clone){
        hit_player_obj.clones_player_id.spider_plant_not_parried = true;
    }
    
    hit_player_obj.parry_distance = 0;
    
    with(enemy_hitboxID){
        if(projectile_parry_stun){
            projectile_parry_stun = false;
            spider_plant_revert_parry_proj = true;
        }
    }
    
    if ("player_id" in self && enemy_hitboxID.type == 1 && player_id.ptooie_explode_rune && instance_exists(player_id.ptooie_obj)) player_id.ptooie_obj.destroyed = true;
}