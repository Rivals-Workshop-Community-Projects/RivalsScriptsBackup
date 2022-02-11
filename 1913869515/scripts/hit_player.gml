//intro = 1
//if introhit = 0 {
//	introhit = 1
//}
finishercd = 0

if my_hitboxID.attack == AT_UTILT && move_cooldown[AT_UAIR] != 0 && move_cooldown[AT_UAIR] < 20 {

move_cooldown[AT_UAIR] = 240

sound_stop(sound_get("stackfinish"));
sound_play(sound_get("stackfinish"));

set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 60);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 600);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 600);


hit_player_obj.old_hsp = 0
hit_player_obj.old_vsp = -14
hit_player_obj.hsp = 0
hit_player_obj.vsp = -14

hit_player_obj.hitstop += 12
hitstop += 12

}


if my_hitboxID.sound_effect == sound_get("slice") or my_hitboxID.sound_effect == sound_get("slicel") {
slashdraw = hitstop
maxdraw = hitstop
hitdmg = my_hitboxID.damage/10

angledraw = random_func(1,360,true)  

}




if my_hitboxID.attack == AT_NAIR {
hit_player_obj.x += ((x + (35 * spr_dir)) - hit_player_obj.x) / 2
		hit_player_obj.y += ((y + 20) - hit_player_obj.y) / 2
}

if my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2  {
	hit_player_obj.y += ((y - 30) - hit_player_obj.y) / 2
}

if my_hitboxID.attack == AT_TAUNT && my_hitboxID.hbox_num < 8{
	hit_player_obj.y += ((y - 30) - hit_player_obj.y) / 2
}
	
		
if dmhit < 5 && move_cooldown[AT_EXTRA_1] = 0 && (my_hitboxID.attack != AT_USPECIAL or (attack == AT_USPECIAL && my_hitboxID.hbox_num >= 3))  {
	dmhit += 1 
}


if my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2 {
	dmhit -= 1
}

if my_hitboxID.attack == AT_USTRONG  {
	if my_hitboxID.hbox_num == 3 {
		move_cooldown[AT_EXTRA_1] = 0
		dmhit += 1
	}
		hit_player_obj.x += ((x + (35 * spr_dir)) - hit_player_obj.x) / 2
}


	move_cooldown[AT_EXTRA_1] = 8
	
	
if dmhit == 4  {
if  halo < 3 {	
halo += 1
}
sound_play(sound_get("stackfinish"));
var dmdamge = min(floor(my_hitboxID.damage/2.5),8)
with hit_player_obj {
		take_damage( player, -1 , 2 + dmdamge)
}


	dmhit = 0
	spawn_hit_fx (x + 4, y + 10, SCF1)
	spawn_hit_fx (x + 4, y + 10, SCF2)
	spawn_hit_fx (hit_player_obj.x, hit_player_obj.y - 10, shit5)
}

if offense == 0 {
		var halodeact = spawn_hit_fx( x - (16 * spr_dir) , y - 50 , 302 )
    		halodeact.depth = depth + 10
    		
    		
		sound_play(asset_get("sfx_ice_on_player"));
}


offense = 1
offensetimer = 1
move_cooldown[AT_EXTRA_3] = 160



if state_cat != SC_HITSTUN {
	
	
	
if (attack == AT_TAUNT){
    reset_window_value(AT_TAUNT, 18, AG_WINDOW_SFX);
}

if (attack == AT_TAUNT && my_hitboxID.hbox_num == 1){
    sound_play(asset_get("sfx_holy_lightning"));
}







}

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1){
	
	if get_player_color(player) == 5 && zvoice == 0 {
		spawn_hit_fx( x + (80 * spr_dir) , y - 50 , shit7 )
   		spawn_hit_fx( x - (20 * spr_dir) , y - 50 , shit7 )
   		spawn_hit_fx( x + (120 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x - (120 * spr_dir) , y - 30 , shit8 )
   		spawn_hit_fx( x + (160 * spr_dir) , y - 70 , shit8 )
   		spawn_hit_fx( x - (60 * spr_dir) , y - 90 , shit8 )		
   		spawn_hit_fx( x + (20 * spr_dir) , y - 30 , shit5 )
	}
   		
	move_cooldown[AT_USPECIAL] = 0
    set_attack(AT_USTRONG)
            window = 3;
            window_timer = -2;
            if zvoice == 1{
            if get_player_color(player) == 1{
            	      sound_play(sound_get("USHITV"));
            
            } 
            
            if get_player_color(player) == 4{
            	      sound_play(sound_get("startUSTRONGD"));
            
            } 
            
            if get_player_color(player) != 1 and get_player_color(player) != 4  {
            sound_play(sound_get("startUSTRONG"));
            }
            }
            
}


if(attack == AT_DAIR && window == 2){

if zvoice == 1{
         if get_player_color(player) == 1{
            	      sound_play(sound_get("DAHITV"));
    }
}
}



if (get_player_color(player) != 3) && (my_hitboxID.sound_effect == sound_get("slice") or my_hitboxID.sound_effect == sound_get("slicel")){
	


	var hits = random_func(5, 3, true) ;


	
	if (hits == 0 ){
    	var hit1 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), slash )

	}
	
  	if (hits == 1 ){
    var hit2 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), slash2 )

     }
     
       	if (hits == 2){
    	var hit3 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), slash3 )

     }
     
       	if (hits == 3){
 	var hit4 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), slash4 )
     }
	
}

if get_player_color(player) == 3{

    if( attack != AT_NSPECIAL  ){
    	if spr_dir == -1  {
	 create_hitbox(AT_FSPECIAL, 9 , floor(hit_player_obj.x - 30 + random_func(1, 60, true)), floor(hit_player_obj.y - 60 + random_func(2, 30, true)) );
    	} else {
    	 create_hitbox(AT_FSPECIAL, 10 , floor(hit_player_obj.x - 30 + random_func(1, 60, true)), floor(hit_player_obj.y - 60 + random_func(2, 30, true)) );
 		
    	}
    }
}

if get_player_color(player) == 5{
	

	var hitsp = random_func(20, 5, true) ;
	
	if (hitsp == 0 ){
    	var hit1 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit1 )

	}
	
  	if (hitsp == 1 ){
    var hit2 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit2 )

     }
     
     if (hitsp == 2){
    	var hit3 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit3 )

     }
     
       	if (hitsp == 3){
 	var hit4 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit4 )
     }
     
         	if (hitsp == 4){
 	var hit5 = spawn_hit_fx( hit_player_obj.x + random_func(3, 10, true), hit_player_obj.y - 30 + random_func(1, 10, true), shit5 )
     }
	
}

      if( attack == AT_TAUNT && window == 17 && window_timer > 50){
      	if zvoice == 1{
      	sound_play(sound_get("tauntDP"));
      	}
      }
            

if ( my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2 && state_cat != SC_HITSTUN ){
	
   hitstop = 6 
   hitpause = true 
   old_hsp = hsp 
   old_vsp = vsp 
	
}
