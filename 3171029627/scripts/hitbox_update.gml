//

if (attack == AT_NSPECIAL){
    if (was_parried) draw_xscale = spr_dir;
    if (place_meeting(x+10*spr_dir,y-20,asset_get("par_block"))){
        destroyed = true;
    }
    if (hitbox_timer < 1) proj_angle = -15*spr_dir;
    else proj_angle += -1.5*spr_dir;
}

if (attack == AT_TAUNT){
    if(hbox_num == 1){
        var travel_dest = (lerp(x, player_id.james_x, 0.2));
    	hsp = (travel_dest - x);
    	var travel_height = (lerp(y, (player_id.james_y), 0.2));
    	vsp = (travel_height - y);
    }
}