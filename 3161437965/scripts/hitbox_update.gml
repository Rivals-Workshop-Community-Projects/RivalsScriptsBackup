if(attack == AT_NSPECIAL && (hitbox_timer == length - 1 || has_hit)) destroyed = true;
if(attack == AT_NSPECIAL){
    var transcend = true;
    with(pHitBox){
        if(self != other && player_id != other.player_id && type == 1 && !proj_break && place_meeting(x, y, other)){
            transcend = false;
        }
    }
    transcendent = transcend;
}