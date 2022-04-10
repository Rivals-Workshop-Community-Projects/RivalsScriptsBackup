//sandbert doesnt have this default??


	muno_event_type = 1;
	user_event(14);

//WRITE CODE SO THAT ONCE THE THING DIES ITLL RESPAWN WAY ABOVE TORREN AFTER A FEW SECONDS



nspecial_access_timer--

if (nspecial_access_timer == 0) {
	
	
			speeddisk = instance_create(clamp(x, get_stage_data(SD_X_POS) + 50, get_stage_data(SD_X_POS) +get_stage_data(SD_WIDTH) - 50)
				, 0 ,"obj_article2") 
			speeddisk.state = 1;

	
}


/// afterimage
// afterimage
if (afterImageTimer > 0)
{
    afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:10};
    afterImageTimer--;
}
else
{
	if (torren_speedforce > 0) {
//		afterImageTimer = 3
//		if (extra_zoom_hit == true) {
			
			afterImageTimer = 16
	//	}
		
	} else  afterImageTimer = 0
	
//	afterImageTimer = torren_speedforce?16:0; //variable = condition ? <expression1 (if true)> : <expression2 (if false)>
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;




if (abs(hud_offset) < 1)  {hud_offset = 0 }




if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
	
	
			move_cooldown[AT_DSPECIAL] = 0;	

}




//hurtboxID.spr_dir = 2;
//hurtboxID.image_yscale = 2;


//spr_dir = 2*sign(spr_dir)
//spr_dir = 1*sign(spr_dir)


	
//	with asset_get(oPlayer) {
		
//		spr_angle = 45
//	}
	
//	hurtboxID.spr_dir = owner.spr_dir * 2;
//	hurtboxID.image_xscale = 4;
//	owner.hurtboxID.image_yscale = 4;

if (!free) {
	
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	

} else  {	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 2);




}



with oPlayer if (self != other) {
	
	if (state == PS_SPAWN || state == PS_RESPAWN || state == PS_DEAD)
	
	zoomerang = 0
}





if (torren_speedforce >  0 && tauntvar%2== 0 && !hitpause){
	
	torren_speedforce -= 1;
}

if (torren_speedforce > 0) {
	
	leave_ground_max = 300; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 300;
} else {
	
		leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6;
}



with oPlayer if (self == other) {
  if "speeddisk" in self {
  	if (instance_exists(speeddisk)) {

if (state != 0) { 
	move_cooldown[AT_NSPECIAL]	=  2
	move_cooldown[AT_NSPECIAL_2]	=  2
		move_cooldown[AT_EXTRA_1]	=  2

}

}
 else move_cooldown[AT_NSPECIAL]	= 0
	
		move_cooldown[AT_NSPECIAL_2]	=  0
		move_cooldown[AT_EXTRA_1]	=  0
	
} }

//Upspecial Code



