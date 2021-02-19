//Droplet Article

    image_index += 0.2;
if(state == 0){
    sprite_index = sprite_get("droplet")
     with(puddleid){
        if(player_id == other.player_id){
            other.image_angle = point_direction(other.x, other.y, x, y) + 90
            if(other.variant == 1){
                i_array = [[6,-80],[-13,-69],[-27,-46],[20, -61],[-41,-23],[34,-39],[43,-15]] //this array should have all your pairs of coordinates
   
        
            var current_array, xcoord, ycoord;
                current_array = i_array[other.i];
                xcoord = [x ,x+current_array[0]*spr_dir]
                ycoord = [max(other.y,y+current_array[1]) ,min(other.y,y+current_array[1])]
                if(state == 40){
                    if(state_timer <= 12){
                        other.x = ease_linear(floor(xcoord[0]), floor(xcoord[1]), state_timer, 12);
                        other.y = ease_linear(floor(ycoord[0]), floor(ycoord[1]), state_timer, 12);
                    }
                }
            }
        
            if(other.variant == 2){
                k_array = [[14,-35],[-6,-43]] //this array should have all your pairs of coordinates
   
        
                var current_array1, xcoord1, ycoord1;
                current_array1 = k_array[other.k];
                xcoord1 = [x ,x+current_array1[0]*spr_dir]
                ycoord1 = [max(other.y,y+current_array1[1]) ,min(other.y,y+current_array1[1])]
                if(state == 40){
                    if(other.drop2_timer <= 7){
                        other.x = ease_linear(floor(xcoord1[0]), floor(xcoord1[1]), other.drop2_timer, 7);
                        other.y = ease_linear(floor(ycoord1[0]), floor(ycoord1[1]), other.drop2_timer, 7);
                    }
                }
            }
            if(other.variant == 3){
                
   
        
                var current_array2, xcoord2, ycoord2;
                
                xcoord2 = [x ,x-9*spr_dir]
                ycoord2 = [max(other.y,y-20) ,min(other.y,y-20)]
                if(state == 40){
                    if(other.drop2_timer <= 7){
                        other.x = ease_linear(floor(xcoord2[0]), floor(xcoord2[1]), other.drop2_timer, 7);
                        other.y = ease_linear(floor(ycoord2[0]), floor(ycoord2[1]), other.drop2_timer, 7);
                    }
                }
            }
            
        }
        
        
        
        
        
            
        if(state_timer >= 34){
            other.image_angle = point_direction(other.x, other.y, x, y) + 270
            other.vsp = -sin(degtorad(point_direction(other.x, other.y, x, y))) * 8
            other.hsp = cos(degtorad(point_direction(other.x, other.y, x, y))) * 8
        }
        if(state_timer = 46 || state != 40){
            instance_destroy();
            exit;
        }
    }
    if(position_meeting(x, y, player_id)){    
        with(player_id){
            if(id == other.player_id){
                if(attack == AT_FSPECIAL_2){
                    other.state = 1;
                }
            }
        }
    }
    with(obj_article2){
        if(player_id == other.player_id){
            if(puddleid == other.puddleid){
                if(state == 1){
                    other.state = 1;
                }
            }
        }
    }
    

}
if(state == 1){
    image_angle = point_direction(x,y,player_id.x,player_id.y - 40) + 270;
    vsp = -sin(degtorad(point_direction(x,y,player_id.x,player_id.y - 40))) * ease_circIn(0, 25, dforger_timer, dforger_limit);
    hsp = cos(degtorad(point_direction(x,y,player_id.x,player_id.y - 40))) * ease_circIn(0, 25, dforger_timer, dforger_limit);
    if(dforger_timer <= dforger_limit-1){
        dforger_timer++;
    }
    if(dforger_timer >= dforger_limit-2){
        if(position_meeting(x,y,player_id)){
            instance_destroy();
            exit;
        }
    }
}

drop2_timer++