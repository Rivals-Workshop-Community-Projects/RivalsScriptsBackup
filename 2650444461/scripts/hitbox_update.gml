//hitbox_update

if (attack == AT_NSPECIAL){
    if(hbox_num == 1){
        free = true;hsp *= 0.97;vsp *= 0.99;
        if(hitbox_timer == 40 || destroyed){
            sound_play(sound_get("Bubble Pop"));spawn_hit_fx(x,y,player_id.fx_bubbles);
        }
    }
}

if (attack == AT_DSPECIAL){
    if(hbox_num == 2){
        hitbox_timer = 0;
        if(x > room_width || x < 0 || y >= room_height+65 || y <= -200){
            destroyed = true;
        }
        if(destroyed){
            spawn_hit_fx(x+20,y,player_id.fx_mudsplash);
            spawn_hit_fx(x-20,y,player_id.fx_mudsplash);
        }
        depth = player_id.depth+1;
        with(oPlayer){
            if("amMudkip" in self){
    		    if((!free || other.destroyed)){
    			    var dist = point_distance(other.x, other.y-10, x, y); //distance
    			    if(dist <= 40 && !other.destroyed){
    			        ground_friction = 0.05;wave_friction = 0;wave_land_adj = 2.0;
    			    }else{
    			        //ground_friction = 0.3;wave_friction = 0.1;wave_land_adj = 1.15;
    			    }
    		    }else if(free){
    		        //ground_friction = 0.3;wave_friction = 0.1;wave_land_adj = 1.15;
    		    }
            }
	    }
    }
}

if (attack == AT_FAIR){
    free = true;hsp *= 0.9;
    if(hitbox_timer >= 16){
        damage = 4;kb_value = 4;kb_scale = 0.5;kb_angle = 90;hitstun_factor = 0.7;
        sound_effect = asset_get("sfx_waterhit_weak");hit_effect = 302;image_xscale = 0.17;image_yscale = 0.17;
    }else if(hitbox_timer >= 4){
        damage = 6;kb_value = 6;kb_scale = 0.7;kb_angle = 70;hitstun_factor = 0.9;
        sound_effect = asset_get("sfx_waterhit_medium");hit_effect = 304;image_xscale = 0.2;image_yscale = 0.2;
    }
    if(hitbox_timer == 40 || destroyed){
        sound_play(sound_get("Bubble Pop"));spawn_hit_fx(x,y,player_id.fx_bubbles);
    }
}

if (attack == AT_DTILT){
    if(hbox_num == 4){
        hsp *= 0.99;
        if(vsp < 6){
			kb_angle = 45;kb_scale = 0.7;kb_value = 6;
		}else{
			kb_angle = 270;kb_scale = 0.5;kb_value = 5;
		}
        if(!free){
            destroyed = true;
        }
        if(get_gameplay_time() % 3 == 0){
        	spawn_hit_fx(x,y,player_id.fx_mudtrail);
    	}
        if(hitbox_timer == 900 || destroyed){
            sound_play(asset_get("sfx_waterhit_heavy"));spawn_hit_fx(x,y,player_id.fx_mudsplash);
        }
    }
}

if (attack == AT_TAUNT){
    if(y >= taunt_rain_Y){
        destroyed = true;
        spawn_hit_fx(x,taunt_rain_Y,player_id.fx_watersplash_verysmall);
    }
}