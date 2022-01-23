
//nspecial finisher buff code.
if (attack == AT_FTHROW){
    if (player_id.window == 2 && player_id.window_timer == 1) {
        original_y_coord = y
        increasing_y_value = 0
        y_addition = 0
        gone_up_a_platform = false
    } }

if (attack == AT_FTHROW && hbox_num == 1 && ((player_id.window == 2 && player_id.window_timer > 0) || (player_id.window == 3 && player_id.window_timer < 3))){
    if (player_id.window == 2 && player_id.window_timer == 0) {
        original_y_coord = y
        increasing_y_value = 0
        y_addition = 0
        gone_up_a_platform = false
    } 
    
    while (!position_meeting(x - 25*player_id.spr_dir, y+y_addition, asset_get ("par_block")) && !position_meeting(x - 25*player_id.spr_dir, y+y_addition, asset_get ("par_jumpthrough"))) {//par_block and par_jumpthrough
    
    if (y_addition == 20) break else y_addition += 2

}


if (!player_id.free) {
	
	y = player_id.y - 15
	gone_up_a_platform = true
}
if (y_addition >= 20) {
hsp = 0 //if no ground, sets hsp to 0
} else { 
   //hsp = -8.5*player_id.spr_dir 
	
	 if (player_id.window == 2) {
hsp = -13*dsin(player_id.window_timer*180/20)*spr_dir }
if (player_id.window == 3) {
hsp = -13*dsin((player_id.window_timer+18)*180/20)*spr_dir }
	
	
	
	
}
    
    //makes it so the y value if need to set Y relative to proj is okay!
     if (player_id.window == 2) {
  increasing_y_value  += 9*dsin((player_id.window_timer)*360/20) }
  if (player_id.window == 3) {
        increasing_y_value  += 9*dsin((player_id.window_timer+18)*360/20) }
    
 //   //gives Vsp if everything is normal
   
    player_id.x = x 
    player_id.hurtboxID.x = x
            if (player_id.window == 2) {
player_id.vsp = -9*dcos(player_id.window_timer*180/20) }
if (player_id.window == 3) {
	player_id.vsp = -9*dcos((player_id.window_timer+18)*180/20) }

    
 


  //if everything is NOt normal, sets Y value manually
      if (original_y_coord != y && !gone_up_a_platform) { {     
    
        
            player_id.y = y + 15 - increasing_y_value
            player_id.hurtboxID.y = y + 15 - increasing_y_value 
       

}

    
    
} }



