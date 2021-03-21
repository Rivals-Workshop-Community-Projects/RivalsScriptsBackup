
//prevent jumping off the stage like a dumbass at levels higher than 6 (only kinda works)
if (collision_rectangle( ai_target.x+32, ai_target.y, ai_target.x-32, room_height, asset_get("par_block"), false, true) && temp_level > 6){
move_cooldown[AT_NSPECIAL] = 0;
}

if (!collision_rectangle( ai_target.x+32, ai_target.y, ai_target.x-32, room_height, asset_get("par_block"), false, true) && temp_level > 6){
    if(collision_rectangle( x+32, y, x-32, room_height, asset_get("par_block"), false, true)){
  move_cooldown[AT_NSPECIAL] = 9999;
    }
}


//random chance to do high jump instead of regular/low jump
var highjumpai = random_func(21, 10, true)

if (highjumpai = 7 && state = PS_ATTACK_AIR && attack == AT_NSPECIAL && (window = 1)){
    up_down = true;
}

if ((ai_target.freemd = 1 || ai_target.free = 1) && ai_target.state != PS_HITSTUN && state = PS_ATTACK_AIR && attack == AT_NSPECIAL && window > 1 && ai_recovering = false){
    down_down = true;
}

//low jump when target is close
if ((ai_target.x - x)*spr_dir < 125 && ai_target.free = 0 && ai_target.state != PS_HITSTUN && state = PS_ATTACK_AIR && attack == AT_NSPECIAL && (window = 1 || window = 2) && highjumpai != 7 && ai_recovering = false){
    down_down = true;
}

//always high jump when offstage
if (ai_recovering = true){
    up_down = true;
}


//don't keep attacking and don't fall through platforms if the target is in hitstun
if ((ai_target.state = PS_HITSTUN)){
ai_attack_time = 200;
down_down = false;
}

//start attacking again when target is out of hitstun
if ((ai_target.state != PS_HITSTUN)){
ai_attack_time = 5;
}


//track down the target better at higher levels
if (state = PS_ATTACK_AIR && attack == AT_NSPECIAL){
    
    if (window = 2 && (ai_target.state != PS_HITSTUN && ai_target.state != PS_TUMBLE)){
    
    if (temp_level = 7){
    var homingdir = point_direction(x, y, ai_target.x, ai_target.y - 100);
    var homingspeed = 4;
    hsp = lengthdir_x(homingspeed, homingdir);
    }
    
    if (temp_level = 8){
    var homingdir = point_direction(x, y, ai_target.x, ai_target.y - 100);
    var homingspeed = 6;
    hsp = lengthdir_x(homingspeed, homingdir);
    }
    
    if (temp_level = 9){
    var homingdir = point_direction(x, y, ai_target.x, ai_target.y - 100);
    var homingspeed = 8;
    hsp = lengthdir_x(homingspeed, homingdir);
    }
    }
    
        if (window = 3 && (ai_target.state != PS_HITSTUN && ai_target.state != PS_TUMBLE)){
    
    
    if (temp_level = 8){
    var homingdir = point_direction(x, y, ai_target.x, ai_target.y - 100);
    var homingspeed = 7;
    hsp = lengthdir_x(homingspeed, homingdir);
    }
    
    if (temp_level = 9){
    var homingdir = point_direction(x, y, ai_target.x, ai_target.y - 100);
    var homingspeed = 10;
    hsp = lengthdir_x(homingspeed, homingdir);
    }
    }
}
