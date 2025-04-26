//Hitbox_Update.gml
if ((attack == AT_FSPECIAL) && (hbox_num == 2)) {    

		if (hitbox_timer >= length - 1) {
            var dissipation = spawn_hit_fx(x, y, player_id.heat_wave_die)
            dissipation.draw_angle = proj_angle;
            dissipation.spr_dir = spr_dir; //may need to be changed to just 1
            dissipation.hsp = hsp * 0.1;
            dissipation.vsp = vsp * 0.1;
            destroyed_next = true
        }
}
if ((attack == AT_FSPECIAL_2) && (hbox_num == 1)) {  
	with pHitBox if player_id != other.player_id && type == 1 {
        if place_meeting(x, y, other) {
            other.destroyed = true
        }
    }
}
