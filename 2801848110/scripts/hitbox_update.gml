/// my_hitboxID.attack
if attack == AT_USPECIAL && hbox_num == 2 {
    
    	var angle = point_direction(x, y, player_id.esavex, player_id.esavey - 36);

            hsp = lengthdir_x(20, angle)
            vsp = lengthdir_y(20, angle)
        if abs(x -  player_id.esavex) < 10 && abs(y -  player_id.esavey + 36) < 10 {
            hitbox_timer = 999
        }
        
        if hitbox_timer % 2 == 0 {
            trifx = spawn_hit_fx(x,y,tri)
            trifx.draw_angle = random_func(1,361,true)
            trifx.spr_dir = .4
            trifx.image_yscale = .4
        }    
            
}

if attack == AT_FSPECIAL && hbox_num == 1 {
    image_index = 4 + (hitbox_timer/4)%4
    player_id.move_cooldown[AT_FSPECIAL_2] = 3
    player_id.projecting = true 
    if hitbox_timer %6 == 0 create_hitbox(AT_USPECIAL,4,x,y)
}

if attack == AT_USPECIAL && hbox_num == 3 {
    
    	var angle = point_direction(x, y, player_id.x, player_id.y - 30);

            hsp = lengthdir_x(12, angle)
            vsp = lengthdir_y(12, angle)
        

            trifx = spawn_hit_fx(x,y,tri)
            trifx.draw_angle = random_func(1,361,true)
            trifx.spr_dir = .7
            trifx.image_yscale = .7
           
            
}


if attack == AT_USPECIAL && hbox_num == 4 {
    
    	var angle = point_direction(x, y, player_id.x, player_id.y - 30);

            hsp = lengthdir_x(12, angle)
            vsp = lengthdir_y(12, angle)
        

            trifx = spawn_hit_fx(x,y,tri)
            trifx.draw_angle = random_func(1,361,true)
            trifx.spr_dir = .4
            trifx.image_yscale = .4
           
            
}