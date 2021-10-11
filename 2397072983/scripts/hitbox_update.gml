//


	grounds = 1
	does_not_reflect = 1
	
if attack == AT_EXTRA_1 && hbox_num == 3 {
	can_hit_self = 1
}

if attack == AT_EXTRA_1 && hbox_num == 2 {
 
    aproj = hit_fx_create( sprite_get( "aprojx" ), 10);
aproj2 = hit_fx_create( sprite_get( "aprojx2" ), 10);

    
if !free && (place_meeting(x, y + 2, asset_get("par_block"))) &&  vsp != 0 {
	y = 0
	sound_play(sound_get("gothit2"))
}

if spr_dir == player_id.spr_dir  {

if player_id.prshape % 2 == 1 {
    spawn_hit_fx(x+hsp,y+vsp,aproj)
} else {
    spawn_hit_fx(x+hsp,y+vsp,aproj2)
}
}

}

if attack == AT_FSPECIAL {

    if hbox_num == 1 && hitbox_timer %2 == 0 {
	   spawn_hit_fx( x + hsp + 8 - random_func(5, 16, true) - (10*spr_dir), y +  vsp + 4 - random_func(4, 12, true) , esp2 )
    }
    
    
    if hbox_num > 1 && hbox_num <= 5 && hitbox_timer % hbox_num == 0 {
	   spawn_hit_fx( x + hsp + 8 - random_func(5, 16, true) - (10*spr_dir), y +  vsp + 4 - random_func(4, 12, true) , esp2 )
    }
    
    if hbox_num > 5 && hbox_num <= 8 && hitbox_timer % 2 == 0 {
	   spawn_hit_fx( x + hsp + 8 - random_func(5, 16, true) - (10*spr_dir), y +  vsp + 4 - random_func(4, 12, true) , esp2 )
    }
    
}