if(attack == AT_NSPECIAL){
    if(get_player_color(player) != 0 && get_player_color(player) != 14){
        sprite_index = sprite_get("ptooie");
    }else{
        sprite_index = sprite_get("ptooie_default")
    }    
}
if(attack == AT_DSPECIAL && (hbox_num == 1 || hbox_num = 2)){
    if(get_player_color(player) != 12){
        sprite_index = sprite_get("dspecial_proj");
    }else{
        sprite_index = sprite_get("petey_dspecial_proj");
    }   
}



ptCheck = false;
ptooie_hit = 0;
ptooie_who = noone;
ptBounced = false;
ptPuddleBounced = 0;
ptDir = 0;

goop_repeat = 0;
goop_destroy = false;
goop_destroy_timer = 0;

hit_goop = noone;

hitpause_timer = 0;
hitbox_timer2 = 0;

puddle_bounceoff = player_id.puddle_bounceoff;