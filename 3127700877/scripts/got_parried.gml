// got_parried.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#got-parried-gml
// Called when one of your hitboxes is parried.

if(!has_rune("A")){
    with(my_hitboxID){
        if((attack == AT_BAIR || attack == AT_FTILT || attack == AT_UAIR || attack == AT_FAIR || attack == AT_NAIR || attack == AT_NSPECIAL_AIR) && type == 2){
            if "parry_count" not in self parry_count = 1;
            else parry_count++;
            if(attack == AT_UAIR || attack == AT_FAIR) proj_angle += 180;
            else draw_xscale *= -1;
            if(attack == AT_NAIR || attack == AT_NSPECIAL_AIR) proj_angle += 90 + (180 * ("nair_up_hbox" in self));
            hitbox_timer = 0;
            image_index = 0;
            transcendent = true;
            hsp = orig_hsp;
            vsp = orig_vsp;
            for(var i = 1; i < parry_count; i++) vsp *= -1;
            grounds = 1;
            walls = 1;
            grav *= -1;
        }
        if(attack == AT_DSPECIAL_AIR){
            destroyed = true;
        }
        if(attack == AT_NSPECIAL){
            draw_xscale *= -1;
            hitbox_timer = 0;
            transcendent = true;
        }
    }
}

if(my_hitboxID.attack == AT_NSPECIAL && has_rune("K")){
    my_hitboxID.destroyed = true;
}

if(my_hitboxID.attack == AT_DSPECIAL){
    if(instance_exists(sludge_puddle_id)) sludge_puddle_id.was_parried = true;
}

if(my_hitboxID.attack == AT_FSPECIAL){
    if(instance_exists(sludge_geyser_id)) sludge_geyser_id.was_parried = true;
}

if(hit_player_obj != self && hit_player_obj.diseased_id != noone){
    if(!has_rune("M")){
        hit_player_obj.undiseased_id = self;
        hit_player_obj.undiseased_timer = hit_player_obj.undiseased_timer_max;
    }
} else if(hit_player_obj != self) {
    if !has_rune("M") hit_player_obj.sludge_decay_lockout = 0;
    hit_player_obj.sludge_amount /= 2;
    hit_player_obj.sludge_amount = ceil(hit_player_obj.sludge_amount);
}
if(!has_rune("M") && hit_player_obj != self){
    hit_player_obj.diseased_timer = 0;
    hit_player_obj.diseased_id = noone;
}