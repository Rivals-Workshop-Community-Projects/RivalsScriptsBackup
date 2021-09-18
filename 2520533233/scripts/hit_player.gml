
if(hit_player_obj != self){
    teleport_target = hit_player_obj;
}

if(my_hitboxID.attack == AT_DATTACK and my_hitboxID.hbox_num != 6 and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    if(my_hitboxID.hbox_num == 1 ){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+30*spr_dir, .6);
        
    } else {
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+30*spr_dir, .5);
    }
    hit_player_obj.y = lerp(floor(hit_player_obj.y), y, .5);
}

if(my_hitboxID.attack == AT_DAIR and my_hitboxID.hbox_num != 1 and my_hitboxID.hbox_num != 6 and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    hit_player_obj.y = lerp(floor(hit_player_obj.y), y+25, .55);
}

if(my_hitboxID.attack == AT_JAB and my_hitboxID.hbox_num == 2 and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
    hit_player_obj.x = lerp(floor(hit_player_obj.x), x+spr_dir*70, .4);
}

if(my_hitboxID.attack == AT_EXTRA_3 or my_hitboxID.attack == AT_FSPECIAL_2){
    grabbed_player = hit_player_obj;
}

if(dragon_install){
    if(my_hitboxID.attack == AT_FAIR and my_hitboxID.hbox_num < 7  and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x+60*spr_dir+hsp*3, .4);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-50, .3);
    }
    
    else if(my_hitboxID.attack == AT_BAIR and my_hitboxID.hbox_num == 2  and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x-60*spr_dir, .3);
            if(hit_player_obj.free){
                hit_player_obj.y = lerp(floor(hit_player_obj.y), y-10, .5);
            }
    }
    
    else if(my_hitboxID.attack == AT_UTILT and my_hitboxID.hbox_num == 2  and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x-10*spr_dir, .3);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-60, .3);
    }
    
    else if(my_hitboxID.attack == AT_NAIR and my_hitboxID.hbox_num < 5  and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
            if(spr_dir == 1 and hit_player_obj.x < x or spr_dir == -1 and hit_player_obj.x > x){
                hit_player_obj.x = lerp(floor(hit_player_obj.x), x+50*spr_dir, .5);
            }
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .3);
    }
    
    else if(my_hitboxID.attack == AT_DTILT and my_hitboxID.hbox_num < 5  and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x+80*spr_dir, .2);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y, .3);
    }
    else if(my_hitboxID.attack == AT_DTILT and my_hitboxID.hbox_num < 5  and hit_player_obj.soft_armor == 0 and !hit_player_obj.super_armor){
            hit_player_obj.x = lerp(floor(hit_player_obj.x), x, .1);
            hit_player_obj.y = lerp(floor(hit_player_obj.y), y-50, .3);
    }
    
}