if(state == PS_HITSTUN && prev_state == PS_DOUBLE_JUMP && armorpoints > 0){ 
    orig_knock = max(3, orig_knock - 16);
    hitstun = orig_knock * 3 + 4;
    sound_play(asset_get("sfx_ice_shatter_big"));
        if(armorhit == false){
            djhit = true;
            armorlossfx = spawn_hit_fx(x, y, armorbreakfx);
            armorlossfx.depth = -10;
            print_debug("armor break");
            //sound_play(asset_get("sfx_shovel_hit_heavy1"));
        }
    armorhit = true;
}
if(state == PS_DOUBLE_JUMP){
        if(armorhit == false){
            djhit = true;
            armorlossfx = spawn_hit_fx(x, y, djarmorexit);
            armorlossfx.depth = -10;
            sound_play(asset_get("sfx_shovel_hit_heavy1"));
        }
    armorhit = true;
}

swallowarmor = false;
nextarmor = false;
//print_debug(string(orig_knock) + "; " + string(hitstun));
if(state == PS_ATTACK_GROUND && attack == AT_FTILT && window == 4 && super_armor){
    hit_player_obj.has_hit = false;
    take_damage( player, -1, -enemy_hitboxID.damage );
    armorplus = 1; 
}

Upbcanledgecancel = false;
aireggy = false;