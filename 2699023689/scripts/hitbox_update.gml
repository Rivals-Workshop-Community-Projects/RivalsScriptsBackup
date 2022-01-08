if (attack == AT_FSPECIAL){
    if (spr_dir == 1){
         var missile_angle = (n_mod(proj_angle, 360));
    }
    else{
        var missile_angle = (n_mod((proj_angle + 180), 360));
    }
    if (sprite_index == 2325){
        var small = 1;
    }
    else{
        var small = 0;
    }                                   

    if (not player_id.joy_pad_idle){
        
       
        
        if (player_id.joy_dir < missile_angle){
            if (missile_angle - player_id.joy_dir > (player_id.joy_dir+360) - missile_angle){
                if (small == 1){
                    proj_angle += 6;
                }
                else{
                    proj_angle += 1;
                }
                

            }
            else{
                if (small == 1){
                    proj_angle -= 6;
                }
                else{
                    proj_angle -= 1;
                }
                
            }
        }
        else{
            
            
            if ((player_id.joy_dir - missile_angle)>((missile_angle + 360) - player_id.joy_dir)){
                if (small == 1){
                    proj_angle -= 6;
                }
                else{
                    proj_angle -= 1;
                }
                
            }
            else{
                if (small == 1){
                    proj_angle += 6;
                }
                else{
                    proj_angle += 1;
                }
               

            }
        }
        
        if (spr_dir == 1 && (missile_angle > 90 && missile_angle < 270)){
            spr_dir = -1;
            proj_angle += 180
        }
        if (spr_dir == -1 && (missile_angle <= 90 || missile_angle >= 270)){
            spr_dir = 1;
            proj_angle += 180
        }
        
    }
    
    hsp = lengthdir_x(18, missile_angle);
    vsp = lengthdir_y(18, missile_angle);

    if (small == 1){
        spawn_hit_fx(x, y, trail);
    }
    else{
        var effect = spawn_hit_fx(x, y, trail);
        // make effect bigger somehow :(
    }
    

    
    if (not free){
        destroyed = true;
    }
    
    
}
//if (attack == AT_FSPECIAL){
//    player_id.slip_y = y;
//    player_id.slip_x = x;
//    player_id.slip_draw = true;
//    if player_id.slip_lifetime < 0{
//        destroyed = true;
//    }
//    player_id.slip_dir = spr_dir;
//}

if (attack == AT_NSPECIAL){
    hit_flipper = 8;
}
if (attack == AT_NAIR){
    hit_flipper = 3;
}
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR){
    hitpause = 20;
    kb_value = 200;
}

if (attack == AT_NAIR){
    hbox_group = -1;
}

#define n_mod(dividend, divisor)
var result = dividend % divisor;
while (result < 0) result += divisor;
return result;