//article1_hit.gml

// Ptooie Parry Rune
if(player_id.ptooie_parry_rune && enemy_hitboxID.player_id != player_id && !player_id.ptooie_parry_cooldown && !instance_exists(player_id.ptooie_parry_dummy)){
    if(enemy_hitboxID.type == 1){
        hit_player_obj.hitpause =  true;
        hit_player_obj.hitstop = 2;
        hit_player_obj.hitstop_full = 2;
    }
    player_id.ptooie_parry_dummy = instance_create(round(x), round(y), "oPlayer");
    with(player_id.ptooie_parry_dummy){
        sprite_index = asset_get("empty_sprite");
        hurtbox_spr = other.ptooie_mask;
        hurtboxID.sprite_index = other.ptooie_mask;
        set_state(PS_PRATFALL);
        PARRY_DUMMY = true;
        player_id = other.player_id;
    }
}