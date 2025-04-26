//hitbox_update

if(attack == AT_DSPECIAL && hbox_num == 7){
    image_xscale = (0.32 - (image_index / 50))
    image_yscale = image_xscale
    spr_dir = 1
    hsp /= 1.4
    vsp /= 1.4
    with(pHitBox){
        if(self != other && distance_to_point(other.x, other.y) < 10){ 
            var cloud_dir = point_direction(x, y, other.x, other.y)
            hsp -= lengthdir_x(0.5, cloud_dir)
	    	vsp -= lengthdir_y(0.5, cloud_dir)
        }
    }
    if(player_id.hitpause){
    	destroyed = true
    }
    if(vsp >= 0 && vsp <= 0.5){
    	vsp = 0.5
    }
}