
ex_cooldown = 150;

if (my_hitboxID.attack == AT_DSPECIAL){
    will_o_wisp.hsp *= -1;
    will_o_wisp.vsp *= -1;
    will_o_wisp.wisp_hitbox.player = hit_player_obj.player;
    will_o_wisp.spr_dir *= -1;
}

