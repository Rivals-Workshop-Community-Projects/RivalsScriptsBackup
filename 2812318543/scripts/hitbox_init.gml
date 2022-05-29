switch(attack){
    
    case AT_NSPECIAL_2:
        if(hbox_num == 1){
            
            //find last hit player if possible
            if(player_id.hit_player_obj == noone){
        		with(oPlayer){
        			if(self != other.player_id){
        				other.targ_player = self;
        				other.targ_x = x;
        				other.targ_y = y - 30;
        			}
        		}
        	}else{
        		targ_player = player_id.hit_player_obj;
        		targ_x = player_id.hit_player_obj.x;
        		targ_y = player_id.hit_player_obj.y - 30;
        	}
            
            vfx_npulse = player_id.vfx_npulse;
            vfx_nblast = player_id.vfx_nblast;
            frame = 0;
            phase = 1;
            hitbox_timer = 0;
            onhit_timer = -1;
            THERE = 0;
            hitstun_track = false;
            targ_dist = 0;
        }
        break;
    
    case AT_FSPECIAL_2:
        if(hbox_num == 1){
            vfx_fspecdis = player_id.vfx_fspecdis;
            frame = 0;
            phase = 1;
            hitbox_timer = 0;
        }
        break;
    
}