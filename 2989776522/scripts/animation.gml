switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if(inside_mech){
	if(state == PS_LAND || state == PS_LANDING_LAG || (free && vsp > 0 && (position_meeting(x,y+10,asset_get("par_block")) || position_meeting(x,y+10,asset_get("par_jumpthrough"))))){
	    //set_state(PS_IDLE);    
	    with(asset_get("new_dust_fx_obj")) {
	        if(player == other.player && x != -300) {
	            switch(dust_fx) {
	                case 3: case 4: case 0: case 15:
	                    x = -300; y = -300;
	                break;
	            }
	        }
	    }    
	}
	
	
	
	//small airdodge thing
	if(state == PS_AIR_DODGE){
		airdodgeanimthing = 4;
	}else{
	    if(state == PS_IDLE_AIR && airdodgeanimthing > 0)image_index = 4;
		airdodgeanimthing -= 1;
	}
	
	if(alt != 0){
	    var old_image_index = image_index;
	    if(sprite_index == sprite_get("dash")){
	        sprite_index = sprite_get("dash_alts")
	    }else if(sprite_index == sprite_get("dashstart")){
	        sprite_index = sprite_get("dashstart_alts")
	    }else if(sprite_index == sprite_get("dashstop")){
	        sprite_index = sprite_get("dashstop_alts")
	    }image_index = old_image_index;
	}
	
	if(state == PS_IDLE || state == PS_WALK || state == PS_WALK_TURN || state == PS_DASH || state == PS_SPAWN || state == PS_WALK_TURN || state == PS_DASH_START || state == PS_DASH_STOP || state == PS_DASH_TURN || state == PS_CROUCH
	|| state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_PARRY_START || state == PS_PARRY || state == PS_ATTACK_GROUND && (attack == AT_TAUNT || attack == AT_NSPECIAL && window <= 2)
	|| (state == PS_HITSTUN || state == PS_HITSTUN_LAND) && kob_sleep){
	    draw_y = ease_sineIn(0,-5,get_gameplay_time(),50);
	    hud_offset = ease_sineIn(10,15,get_gameplay_time(),50);
	}
	
	if(abs(hud_offset) < 1)hud_offset = 0;
}
else if(!inside_mech){
    //Ground
    changeAnim(spr_idle, sprite_get("idle"));
    changeAnim(spr_crouch, sprite_get("crouch"));
    changeAnim(spr_walk, sprite_get("walk"));
    changeAnim(spr_walkturn, sprite_get("walkturn"));
    changeAnim(spr_dash, sprite_get("dash"));
    changeAnim(spr_dashstart, sprite_get("dashstart"));
    changeAnim(spr_dashstop, sprite_get("dashstop"));
    changeAnim(spr_dashturn, sprite_get("dashturn"));

    //Air
    changeAnim(spr_jumpstart, sprite_get("jumpstart"));
    changeAnim(spr_jump, sprite_get("jump"));
    changeAnim(spr_doublejump, sprite_get("doublejump"));
    changeAnim(spr_walljump, sprite_get("walljump"));
    changeAnim(spr_pratfall, sprite_get("pratfall"));
    changeAnim(spr_land, sprite_get("land"));
    changeAnim(spr_landinglag, sprite_get("landinglag"));

    //Dodge
    changeAnim(spr_parry, sprite_get("parry"));
    changeAnim(spr_roll_forward, sprite_get("roll_forward"));
    changeAnim(spr_roll_backward, sprite_get("roll_backward"));
    changeAnim(spr_airdodge, sprite_get("airdodge"));
    changeAnim(spr_airdodge_waveland, sprite_get("waveland"));
    changeAnim(spr_tech, sprite_get("tech"));

    //Hurt
    changeAnim(spr_hurt, sprite_get("hurt"));
    changeAnim(spr_bighurt, sprite_get("bighurt"));
    changeAnim(spr_hurtground, sprite_get("hurtground"));
    changeAnim(spr_uphurt, sprite_get("uphurt"));
    changeAnim(spr_downhurt, sprite_get("downhurt"));
    changeAnim(spr_bouncehurt, sprite_get("bouncehurt"));

	//Handle certain looping animations
	if (sprite_index == spr_idle){
	    var frames = 6;
	    var frame_dur = 8;
	    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	}
	if (sprite_index == spr_walk && state == PS_WALK){
	    var frames = 6;
	    var frame_dur = 8-floor(walk_anim_speed);frame_dur = max(frame_dur,1);
	    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	}
	if (sprite_index == spr_dash && state == PS_DASH){
	    var frames = 6;
	    var frame_dur = 6-floor(dash_anim_speed);frame_dur = max(frame_dur,1);
	    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
	}
}

if((state == PS_IDLE || state == PS_WALK) && up_down || floating && (up_down || down_down)){
    if((state == PS_IDLE || state == PS_WALK) || floating && up_down){lookuptime += 1;}else{lookuptime -= 1;}
}else{
    if(((state == PS_IDLE || state == PS_WALK) || floating) && lookuptime != 0){
        if(lookuptime > 0){lookuptime -= 1;}else if(lookuptime < 0){lookuptime += 1;}
    }else{
        lookuptime = 0;
    }
}
if(((state == PS_IDLE || state == PS_WALK && inside_mech) || floating && (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP)) && lookuptime > 0){
    sprite_index = spr_lookup;image_index = floor(abs(lookuptime)/2);lookuptime = min(4,lookuptime);
    if(image_index > 2)image_index = 2;
}else if(floating && (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && lookuptime < 0){
    sprite_index = sprite_get("crouch");image_index = floor(abs(lookuptime)/3);lookuptime = max(-3,lookuptime);
    if(image_index > 1)image_index = 1;
}

if(floating && !attacking && lookuptime == 0){
    sprite_index = sprite_get("idle");
    if(get_gameplay_time() % 4 == 0){
        floatanim += 1;
    }
    image_index = floatanim;
}

#define changeAnim
	
	var old_spr = argument[1];
	var new_spr = argument[0];
	
	if (sprite_index == old_spr && old_spr != new_spr){
	    sprite_index = new_spr;
	}