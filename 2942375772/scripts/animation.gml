//animation.gml

//this is only here so it wont run a frame late and eat the hsp boost lol
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_DTILT){
    if (!hitpause && !has_hit) dtilt_hsp = hsp;
        if (has_hit){
            old_vsp = -14;
            old_hsp = dtilt_hsp / 5
        }
}

if ("starko_timer_buddy" in self){
     if (starko_timer_buddy > 90 && state == PS_WRAPPED){
         sprite_index = sprite_get("starko");
     }
}