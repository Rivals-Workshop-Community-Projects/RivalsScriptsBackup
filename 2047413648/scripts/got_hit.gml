move_cooldown[AT_USPECIAL] = 0 ;
intro = 1
if introhit = 0 {
	introhit = -1
}
fchargetimer = 0
char_height = 50;


if get_player_color(player) == 5 && sakura == 1 {
 	
 	
	var hitsp = random_func(20, 5, true) ;
	
	if (hitsp == 0 ){
    	var hit1 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit1 )
    		hit1.depth = -1000

	}
	
  	if (hitsp == 1 ){
    var hit2 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit2 )
    	hit2.depth = -1000

     }
     
     if (hitsp == 2){
    	var hit3 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit3 )
    		hit3.depth = -1000

     }
     
       	if (hitsp == 3){
 	var hit4 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit4 )
 		hit4.depth = -1000
     }
     
         	if (hitsp == 4){
 	var hit5 = spawn_hit_fx( x + random_func(3, 10, true), y  - 30 + random_func(1, 10, true), shit5 )
 		hit5.depth = -1000
     }
     
 	
 }
        
    if (attack == AT_USPECIAL) && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 2 , x , y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
    }
     
     
    if (attack == AT_NSPECIAL or attack == AT_FSTRONG or attack == AT_DSPECIAL)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 1 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));

    } 
    
    
     if (attack == AT_NAIR)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 3 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 4 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 4 - abs(hsp/2) );
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -3) - abs(vsp) );
        set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));

    } 
    
      if (attack == AT_BAIR)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 1 , x - 30 * spr_dir, y - 40 );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 3 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2.5) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 6 , x - 30 * spr_dir, y - 40 );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 1 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/1.5) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));

    } 
    
    
    
    if (attack == AT_UAIR)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 3 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2.5) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));
    

    } 
    
    
    if (attack == AT_FAIR)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));

    } 
    
    
    if (attack == AT_DSTRONG)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/1.5) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 6 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 1 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));

    } 
    
    
    if (attack == AT_USTRONG)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 6 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));

    } 
    
    
    
     if (attack == AT_DAIR)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 2 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 5 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_HSPEED, spr_dir * (random_func(7,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_VSPEED, (random_func(8, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 5, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(9, 4, true))/10));
        
        create_hitbox(AT_EXTRA_3 , 1 , x - 30 * spr_dir, y - 40 );	

        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, spr_dir * (random_func(1,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, (random_func(2, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(3, 4, true))/10));

    } 
    
    
    if (attack == AT_JAB or attack == AT_FTILT or attack == AT_UTILT or attack == AT_DTILT or attack == AT_DATTACK)  && drops == 1 {
        create_hitbox(AT_EXTRA_3 , 6 , x - 30 * spr_dir, y - 40 );	
        fcharge -= 0
        
        drops = 0 
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED, spr_dir * (random_func(4,  7, true) * -1) - 2 - abs(hsp/3) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_VSPEED, (random_func(5, 7, true) * -1) - abs(vsp/2) );
        set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_ANIM_SPEED, 0.3 + ((random_func(6, 4, true))/10));

    } 
    
    
    
    
    
    
    
    
    
    
    
///
 ///2B please, no sfx_blow, no, no, it hurt me, just dont, AHHhhh
 if string_count("2b", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME))) > 0 {

if enemy_hitboxID.attack != AT_NAIR and ((enemy_hitboxID.attack != AT_USPECIAL) or (enemy_hitboxID.attack ==  AT_USPECIAL && vsp > 0)) 
and ((enemy_hitboxID.attack != AT_FSTRONG) or (enemy_hitboxID.attack ==  AT_FSTRONG && enemy_hitboxID.hbox_num > 1)){
	
sound_stop(asset_get("sfx_blow_weak1"))
sound_stop(asset_get("sfx_blow_weak2"))
sound_stop(asset_get("sfx_blow_medium1"))
sound_stop(asset_get("sfx_blow_medium2"))
sound_stop(asset_get("sfx_blow_medium3"))
sound_stop(asset_get("sfx_blow_heavy1"))
sound_stop(asset_get("sfx_blow_heavy2"))

if enemy_hitboxID.damage < 4 {
   sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.4)
      sound_play(sound_get("slicel"))
}

if enemy_hitboxID.damage <= 8 and enemy_hitboxID.damage >= 4 {
	   sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.4)
	   	   sound_play(sound_get("slice"))
	spawn_hit_fx(x,y - 40, 303 )
}

if enemy_hitboxID.damage > 8 {
       sound_play(sound_get("sliceh2"))
	 	   sound_play(asset_get("sfx_ori_energyhit_heavy"))
	spawn_hit_fx(x,y - 40, 305 )
}
}
}