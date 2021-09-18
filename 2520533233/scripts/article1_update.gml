//article1_update
//enum
enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    bad_load
}
//hold position with tenko
x = tenshi.x;
y = tenshi.y;
image_xscale = tenshi.spr_dir;

//visible = tenshi.tenshi_graze;

var hit = false;
var hitID = noone;

//only graze if its available
if(can_graze and player_id.state != PS_RESPAWN and player_id.state != PS_DEAD and !player_id.dragon_install){
	with pHitBox{
    	if(place_meeting(x, y, other) and (player != other.player or can_hit_self) and hit_priority != 0){
        	hit = true;
        	hitID = id;
	    }
	}
//timer for lockout on graze after being hit
} else {
	hit_timer++;
	//starts the graze if not in lockout
	if(hit_timer > hit_lockout){
		can_graze = true;
	}
}

//if the grazebox was hit and tenshi is not in hitstun we consider this a valid graze
//and begin checking farther
if(hit and can_graze){
    if(vo_timer == vo_lockout){
        vo_timer = 0;
        graze_timer = 0;
        graze_x = hitID.x;
        graze_y = hitID.y;
        graze_dir = hitID.spr_dir;
    }
}

//the actual graze
if(graze_timer == graze_lockout and can_graze or force_graze) {
	if(tenshi.state == PS_ROLL_BACKWARD or tenshi.state == PS_ROLL_FORWARD or tenshi.state == PS_AIR_DODGE or force_graze){
		blue = true;
	}
	if(!counter_graze){
    	sound_play(sound_get("graze_collect4"));
	}
    for(i = 0; i <= 9; i++){
    	var xrng = -graze_dir * (20 - random_func(i, 30, true));
        var yrng = random_func(i, 70, true) - 30; 
        if(counter_graze){
        	xrng -= tenshi.spr_dir*60;
        }
        var temp = instance_create(floor(graze_x + xrng), floor(graze_y + yrng), "obj_article2");
        temp.fx_type = FX.graze;
        temp.tenshi = tenshi;
        temp.seed = i%2;
        temp.delay = i*3;
        temp.blue = blue;
    }
    blue = false;
    graze_timer = graze_lockout + 1;
    can_graze = false;
    hit_timer = 0;
    counter_graze = false;
    force_graze = false;
//this is for the delay so we dont have any funky grazes    
} else if (graze_timer <= graze_lockout*4+1){
	graze_timer++;
	if(graze_timer == 4 and counter_graze){
		sound_play(sound_get("graze_collect4"));
	} 
}

//prevent rapid graze
if(vo_timer < vo_lockout){
	vo_timer++;
}

