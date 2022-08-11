///

draw_xscale = spr_dir



if attack == AT_FTHROW && hbox_num == 19  {
   if hitbox_timer < 20 {
   	draw_xscale = (0.5 + hitbox_timer/40)*spr_dir 
   	draw_yscale = (0.5 + hitbox_timer/40)
   }
   spawn_hit_fx(x + random_func(5,61,true) - 30,y + random_func(6,121,true) - 60, shit6 )
}

if attack == AT_FTHROW && hbox_num == 2  {
	if hitbox_timer == 1 {
		hsp = player_id.hsp
		if player_id.free == false {
		hsp *= 2	
		}
		vsp = player_id.vsp
	}
	if player_id.move_cooldown[AT_EXTRA_1] > 0  {
		vsp /= 1.1
		hsp /= 1.1
	}
	with player_id {
		set_hitbox_value(AT_FTHROW, 3, HG_VISUAL_EFFECT_X_OFFSET, random_func(1,61,true) - 30);
        set_hitbox_value(AT_FTHROW, 3, HG_VISUAL_EFFECT_Y_OFFSET, random_func(2,61,true) - 30);
	}
    if hitbox_timer%6 == 0 or hitbox_timer == 1{
       spawn_hit_fx(x + random_func(5,61,true) - 30,y + random_func(6,61,true) - 30, shit6 )
       create_hitbox(AT_FTHROW,3,x,y)
       sound_play(sound_get("counterhit"),false,noone,.6,1.4);
    		shake_camera(4,4)
    		pgfx = spawn_hit_fx( x, y, SC2)
            pgfx.spr_dir = 0.6*spr_dir
		    pgfx.image_yscale = 0.6
		    pgfx.draw_angle = random_func(1,360,true)
    }
}



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