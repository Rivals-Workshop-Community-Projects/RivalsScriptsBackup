///

draw_xscale = spr_dir

if "ctarget" in self {
    
    draw_angle = 90
    
    if hitbox_timer == 1 {
        vsp = -1 - random_func(1,4,true)
        hsp = ( 0 - random_func(2,4,true))*spr_dir
    }

    sprite_index = asset_get("empty_sprite")
    image_index = hitbox_timer/2 
    if (hitbox_timer + 1)/2 == 8 destroyed = true 
    
     cangle = point_direction(x, y, ctarget.x , ctarget.y - 40);
     
            
    if hitbox_timer > 5*2 {
            hsp = lengthdir_x(34, cangle)
            vsp = lengthdir_y(34, cangle)
    }
            
}

if attack == AT_FSPECIAL && hbox_num > 1 {
    
 hsp /= 1.11
 vsp /= 1.12
 
 if hitbox_timer == 1 && player_id.free {
     vsp *= -1
 }
}

if attack == AT_DSPECIAL {
    depth = player_id.depth + 1
}

if attack == AT_TAUNT && hbox_num = 11 {
    x = player_id.x + 24*player_id.spr_dir
    y = player_id.y - 64
}