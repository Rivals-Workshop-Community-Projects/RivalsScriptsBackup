//update


/*if(spr_dir != spr_dir_last)
{
    spr_dir_last = spr_dir;

    //print_debug("turn"); //-> flip the cube 90°
}*/


    
/*
if(spr_dir != spr_dir_last)
{
    if((state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer > 4)
    {
        if(front == "white")
            front = "yellow";
        else
            front = "white";
            
        // *********** PROBLEM: yellow also needs to be replaced with white
        //but can't swap all since max 6 colors
        //and my shades are too far away from the main color...
            
    		init_shader_custom(true);

        spr_dir_last = spr_dir;
    }
    if(state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD)
    {
        if((state != PS_WALK_TURN || state_timer > 3) && (state != PS_DASH_TURN || state_timer > 3))
        {
            if(spr_dir == 1)
                left = "red";
            if(spr_dir ==-1)
                left = "orange";

    		init_shader_custom(true);

            spr_dir_last = spr_dir;
        }
    }
}
*/


if(state_timer == 1 && (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD))
	sound_play(sound_get("dodge01"));

if(state_timer == 1 && (state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD))
	sound_play(sound_get("dodge02"));

if(state == PS_DASH_TURN && state_timer == 1)
    sound_play(sound_get("runB01"));

if(state == PS_WALL_JUMP && state_timer == 1)
    sound_play(sound_get("land04"));
    
if((state == PS_TECH_GROUND || state == PS_WALL_TECH) && state_timer == 1)
    sound_play(sound_get("land03"));

/*if(state == PS_WALK && state_timer == 0)
    sound_play(sound_get("walk02"), true);
if(state != PS_WALK)
    sound_stop(sound_get("walk02"));*/
if(state == PS_WALK)
{
	//print(string(image_index % 8) + " " + string(state_timer));
	if(state_timer % 16 == 0)
		sound_play(sound_get("walk02"));
}
    
    
/*if(state == PS_DASH && state_timer == 0)
    sound_play(sound_get("run01"), true);
if(state != PS_DASH)
    sound_stop(sound_get("run01"));*/
if(state == PS_DASH)
{
	//print(string(image_index % 8) + " " + string(state_timer));
	if(state_timer % 40 == 0)
    	sound_play(sound_get("runB01"));
	if(state_timer % 40 == 20)
    	sound_play(sound_get("runA01"));
}



if(abs(fspecialLastHsp) > 0.1)//prev_state == )
{
	djumps--;
	hsp = fspecialLastHsp * fspecialHspKeepDamp;
	//print("used: " + string(fspecialLastHsp));
	fspecialLastHsp = 0;
	//print("became: " + string(hsp));
}
//else print("curr: " + string(hsp));
	
if((didNspecial && !canAttack && !shotArticles && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) //if interrupted
// || (didNspecial && !canAttack && !shotArticles && attack == AT_NSPECIAL && window == 2 && window_timer == 1))
 || (didNspecial && !canAttack && !shotArticles && attack == AT_NSPECIAL && window == 1 && window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)-1))
{
	didNspecial = false;
    shotArticles = true;
    shootFakeArticles = 8;

    //shoot main article, then shoot fake ones for visual pile afterwards each frame, so always new rands

    pieceArticle = instance_create(x, y - 16, "obj_article1");
    pieceArticle.animOffset = 0;//random_func(0, pieceArticle.image_number,true); //set "frame" instead?
    pieceArticle.animSpd = random_func(1, 3,false) + 1.5;
    pieceArticle.spr_dir = random_func(2, 2, true) * 2 - 1;

    var xDir = random_func(3,3,false)+2; //between 2 & 4, instead of between 0 & 5
    var posNeg = (random_func(4,2,true) * 2 - 1);
    pieceArticle.hsp = xDir * posNeg;
    pieceArticle.vsp = -random_func(5,2,false)-3;//-5; //between -4 & -6, instead of -5
    
    pieceArticle.drawInfront = random_func(6, 2, true);
    
	init_shader_custom(false);
	
    pieceArticle.colorL = left;
    pieceArticle.colorF = front;
    pieceArticle.colorT = top;
    
    //https://rivalsofaether.com/visual-effects-list/
    //spawn_hit_fx(x, y - 32, 14);//13
    //spawn_hit_fx(x, y - 32, 66); //156);//194 //196
    
    spawn_hit_fx(x, y - 32, 115 ); 
    spawn_hit_fx(x, y - 32, 143); 
    //spawn_hit_fx(x, y - 32, 305  ); 303 301
        
    //spawn_hit_fx(x, y, hitfx1);
    
    /*
    var fx = spawn_hit_fx(x, y, hitfx1);
    fx.draw_angle = random_func(0, 360, true);
    var fx2 = spawn_hit_fx(x, y, hitfx1);
    fx2.draw_angle = random_func(1, 360, true);
    var fx3 = spawn_hit_fx(x, y, hitfx1);
    fx2.draw_angle = random_func(2, 360, true);
    */
    
    //TODO: randomness is not correct in loop below... does it matter?
    for (var i = 0; i < 24; i++) 
    {
        var tp = instance_create(x, y - 16, "obj_article1");
        tp.isVisual = true;
        tp.doFade = true;
        tp.fakeFloorHeight = 0;
        tp.can_be_grounded = false;
        tp.ignores_walls = true;
        tp.animOffset = random_func(6+i+0, tp.image_number, true);
        tp.animSpd = random_func(6+i+1, 3, false) + 1.5;
        tp.fadeTimeTotal = random_func(6+i+2, 24, true) + 16;

        tp.hsp = (random_func(6+i+3, 1, false) * 2 - 1) * 4;
        tp.vsp = -random_func(6+i+4, 2, false) * 4;
	    tp.drawInfront = random_func(6+i+5, 2, true);
    	tp.spr_dir = random_func(6+i+6, 2, true) * 2 - 1;
    	
    	/*var ran = random_func(6+i+7, 6, true)
    	if(ran == 0)
        	tp.spr = sprite_get("pileAirUpwhite");
    	if(ran == 1)
        	tp.spr = sprite_get("pileAirUpred");
    	if(ran == 2)
        	tp.spr = sprite_get("pileAirUpgreen");
    	if(ran == 3)
        	tp.spr = sprite_get("pileAirUpblue");
    	if(ran == 4)
        	tp.spr = sprite_get("pileAirUpyellow");
    	if(ran == 5)
        	tp.spr = sprite_get("pileAirUporange");*/
    }
}


if(canAttack)
{        
	/*if (state_cat == SC_HITSTUN && free && hitstop == hitstop_full-1) //launched 
    	sound_play(asset_get("sfx_buzzsaw_hit"));
    else if (state_cat == SC_HITSTUN && hitstop == hitstop_full-1) //attacked
    	sound_play(asset_get("sfx_boss_laser_hit"));*/
	if(hitpause && !hitpauseLast)
	{
		//if(has_hit)//my attack hit and not enemies?
    		//sound_play(sound_get("turnLong02"));
    		//sound_play(asset_get("sfx_boss_laser_hit"));
    		//-> instead in got_hit.gml
	}
}
hitpauseLast = hitpause;

if(canAttack && free && taunt_down && state_cat == SC_AIR_NEUTRAL)//PS_IDLE_AIR 
    set_attack(AT_TAUNT);


//changed dir
if(spr_dir != spr_dir_last)
{
    //it wasnt a roll
    if(state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && (state != PS_DASH_TURN || canAttack))
    {
        //it was walk/dash turn and waited for middle frame
        if((state != PS_WALK_TURN || state_timer > 4) && (state != PS_DASH_TURN || state_timer > 4))
        {
            //swap left and right
            var temp = right;
            right = left;
            left = temp;
            
            init_shader_custom(true);

            spr_dir_last = spr_dir;
            
            //print_debug("turn");
        }
    }
    else //was a roll, ignore it
    {
        spr_dir_last = spr_dir;
        //print_debug("ignored");
    }
}

//roll swap
if(state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD)
{
    swapAfterR = true;
}
if(swapAfterR && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD)
{
    swapAfterR = false;

    //roll forward swaps top & bot
    //roll back swaps front & back
    
    if(prev_state == PS_ROLL_BACKWARD)
    {
        var temp = front;
        front = back;
        back = temp;
        //print_debug("roll B");
    }
    if(prev_state == PS_ROLL_FORWARD)
    {
        var temp = top;
        top = bot;
        bot = temp;
        //print_debug("roll F");
    }

    init_shader_custom(true);
}


// air dodge swapping
if (state == PS_AIR_DODGE && state_timer == 2)//0)
{
    //airInverse = up_down || (right_down && spr_dir == -1) 
    //                     || (left_down && spr_dir == 1);
    
    var dodgeDir = (joy_dir + 90) % 360;
    dodgeDir -= 180;
    dodgeDir *= spr_dir * -1;
    if(dodgeDir > 0)
    	airInverse = dodgeDir < 45;
    else
    	airInverse = dodgeDir >= -135;
    
    if(airInverse)
    {
	    var temp1 = left;
	    var temp2 = front;
	    var temp3 = top;
	    left = bot;
	    top = front;
	    front = right;
	    
	    right = temp3;
	    bot = back;
	    back = temp1;
	
    	init_shader_custom(true);
    }
}
//if(state == PS_AIR_DODGE && state_timer == 25) //last frame? but now reverts back for a frame
if(state == PS_AIR_DODGE && state_timer == 12)
{
	if(!airInverse)
    	swapAfterAD = true;
}
if(swapAfterAD && state != PS_AIR_DODGE)// && state != PS_WAVELAND)//prev_state == PS_AIR_DODGE)
{
    swapAfterAD = false;
    
    var temp1 = left;
    var temp2 = front;
    var temp3 = top;
    left = back;
    front = top;
    top = right;
    right = temp2;
    back = bot;
    bot = temp1;

    init_shader_custom(true);
}

// nair swap
if(state == PS_ATTACK_AIR && attack == AT_NAIR && state_timer == 1)
{
    swapAfterNAIR = true;
}
if(state == PS_ATTACK_AIR && attack == AT_NAIR)
{
    nairTimer++;
}
if(swapAfterNAIR && (state != PS_ATTACK_AIR || (state == PS_ATTACK_AIR && attack != AT_NAIR)))
{
    swapAfterNAIR = false;
    
    //print_debug("nair " + string(nairTimer));
    
    if(nairTimer > 5 && nairTimer <= 15) //90°
    {
        var temp1 = bot;
        var temp2 = back;
        bot = front;
        front = top;
        back = temp1;
        top = temp2;

    	init_shader_custom(true);
    }
    if(nairTimer > 15 && nairTimer <= 25) //180°
    {
        var temp1 = front;
        var temp2 = top;
        front = back;
        back = temp1;
        top = bot;
        bot = temp2;

    	init_shader_custom(true);
    }
    if(nairTimer > 25 && nairTimer <= 35) //240°
    {
        var temp1 = top;
        top = front;
        front = bot;
        bot = back;
        back = temp1;

    	init_shader_custom(true);
    }
    
    nairTimer = 0;
}

// dattack swap
if(state == PS_ATTACK_GROUND && attack == AT_DATTACK && state_timer == 1)
{
    swapAfterDATTACK = true;
}
if(state == PS_ATTACK_GROUND && attack == AT_DATTACK)
{
    dattackTimer++;
    //print_debug("dattack " + string(dattackTimer));
}
if(swapAfterDATTACK && (state != PS_ATTACK_GROUND || (state == PS_ATTACK_GROUND && attack != AT_DATTACK)))
{
    swapAfterDATTACK = false;
    //print_debug("done " + string(dattackTimer));
    
    if(dattackTimer >= 10 && dattackTimer < 25) //90°
    {
        var temp1 = bot;
        var temp2 = back;
        bot = front;
        front = top;
        back = temp1;
        top = temp2;

    	init_shader_custom(true);
    }
    if(dattackTimer >= 25) //180°
    {
        var temp1 = front;
        var temp2 = top;
        front = back;
        back = temp1;
        top = bot;
        bot = temp2;

    	init_shader_custom(true);
    }
    
    dattackTimer = 0;
}

//swap on skinny dash
if(!canAttack && (state == PS_DASH_START || state == PS_DASH_TURN) && state_timer == 1)
{
    swapAfterSkinnyDash = true;
    skinnyDashTimer = 0;
}
if(!canAttack && state == PS_DASH)
{
    skinnyDashTimer++;
}
//if(!canAttack && (state != PS_DASH_START && state != PS_DASH && state != PS_DASH_STOP && state != PS_DASH_TURN) && swapAfterSkinnyDash)
if(!canAttack && state == PS_DASH_STOP && swapAfterSkinnyDash)
{
    swapAfterSkinnyDash = false;
    
    //print_debug("dash " + string(skinnyDashTimer));
    
    if(skinnyDashTimer > 5 && skinnyDashTimer <= 15) //90°
    {
        var temp1 = bot;
        var temp2 = back;
        bot = front;
        front = top;
        back = temp1;
        top = temp2;

    	init_shader_custom(true);
    }
    if(skinnyDashTimer > 15 && skinnyDashTimer <= 20) //180°
    {
        var temp1 = front;
        var temp2 = top;
        front = back;
        back = temp1;
        top = bot;
        bot = temp2;
        
    	init_shader_custom(true);
    }
    if(skinnyDashTimer > 20 && skinnyDashTimer <= 100) //240°
    {
        var temp1 = top;
        top = front;
        front = bot;
        bot = back;
        back = temp1;

    	init_shader_custom(true);
    }
}


//print_debug(left);
//print_debug(front);
    
//TODO: if change dir with a roll, no red/orange swap, but instead white/yellow
//TODO: change dash turn anim, doesn't actually flip over?


//reset cube on death? or not? idk
if(state == PS_RESPAWN)//PS_DEAD)
{
    if(front != "white" && back != "yellow" && left != "red")
    {
        front = "white";
        back = "yellow";
        left = "red";
        right = "orange";
        top = "green";
        bot = "blue";
    	init_shader_custom(true);
    }
}




    
if (get_player_damage( player ) > 0) 
{
    // TESTED COLOR SWAP, works but not ehough shades to have each sticker on cube be individual
    //set_character_color_slot(0, 255, 0, 0, 255); //shade, r, g, b, a);
}

//if(attack != AT_FSPECIAL)// state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL )
if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
    sound_stop(asset_get("sfx_boss_final_charge"));
    sound_stop(sound_get("fspecialCharge04"));
	sound_stop(sound_get("fspecialLoopMain"));
}

if(canAttack && hurtbox_spr == sprite_get("aaa_hurtboxSkinny"))
{	
	hurtbox_spr = sprite_get("aaa_hurtbox");
	hurtboxID.sprite_index = sprite_get("aaa_hurtbox"); //why needed to reset?
}
if(!canAttack && hurtbox_spr == sprite_get("aaa_hurtbox"))
    hurtbox_spr = sprite_get("aaa_hurtboxSkinny");
    

                    
if(shotArticles && shootFakeArticles > 0)
{
    var newX = pieceArticle.x;
    var newY = pieceArticle.y;
    var fakeFloorHeight = 0;
    var endOffsetX = 0;
    var endOffsetY = 0;
    if(shootFakeArticles == 8)
    {
        newX = pieceArticle.x + 20;
        newY = pieceArticle.y - 10;
        fakeFloorHeight = 0;
        endOffsetX = 16;
        endOffsetY =-4;
    }
    if(shootFakeArticles == 7)
    {
        newX = pieceArticle.x - 20;
        newY = pieceArticle.y - 10;
        fakeFloorHeight = 0;
        endOffsetX =-16;
        endOffsetY =-4;
    }
    if(shootFakeArticles == 6)
    {
        newX = pieceArticle.x + 32;
        newY = pieceArticle.y - 16;
        fakeFloorHeight = 0;
        endOffsetX = 16;
        endOffsetY =-16;
    }
    if(shootFakeArticles == 5)
    {
        newX = pieceArticle.x - 32;
        newY = pieceArticle.y - 16;
        fakeFloorHeight = 0;
        endOffsetX =-16;
        endOffsetY =-16;
    }
    if(shootFakeArticles == 4)
    {
        newX = pieceArticle.x + 16;
        newY = pieceArticle.y - 32;
        fakeFloorHeight = 10 + random_func(0, 10, true);
        endOffsetX = 16;
        endOffsetY =-35;
    }
    if(shootFakeArticles == 3)
    {
        newX = pieceArticle.x - 16;
        newY = pieceArticle.y - 32;
        fakeFloorHeight = 10 + random_func(0, 10, true);
        endOffsetX =-16;
        endOffsetY =-35;
    }
    if(shootFakeArticles == 2)
    {
        newX = pieceArticle.x;
        newY = pieceArticle.y - 32;
        fakeFloorHeight = 10 + random_func(0, 10, true);
        endOffsetX = 8;
        endOffsetY =-35;
    }
    if(shootFakeArticles == 1)
    {
        newX = pieceArticle.x;
        newY = pieceArticle.y - 50;
        fakeFloorHeight = 20 + random_func(0, 15, true);
        endOffsetX = 8;
        endOffsetY =-35;
    }
    

    var vp = instance_create(newX, newY, "obj_article1");
    vp.animOffset = 0;//random_func(34, sprite_get_number(sprite_get("pileAirUp")),true);
    vp.animSpd = random_func(24, 3, false) + 1.5;
    vp.isVisual = true;
    vp.parentArticle = pieceArticle;
    vp.fakeFloorHeight = fakeFloorHeight;
    vp.endOffsetX = endOffsetX;
    vp.endOffsetY = endOffsetY;

    vp.spr_dir = random_func(1, 2, true) * 2 - 1;
    vp.drawInfront = random_func(2, 2, true);
    
    
    /*var randCol;
    if(random_func(6+i+6, 2, true)) 
    	randCol = front;
    else
    	randCol = left;
	var articSprite = "pileAirUp"+randCol;*/
	//dont need random color bcz articles are recolored?! so just do front/side for nspecial
	var articSprite = random_func(6+i+6, 2, true) ? "pileAirUpwhite" : "pileAirUpred";
    vp.spr = sprite_get(articSprite);
    vp.animOffset = 0;
    //TODO: use rest of nspecial rework
        
    init_shader_custom(false);
        
    vp.hsp = pieceArticle.hsp;
    vp.vsp = pieceArticle.vsp;

    ds_list_add(pieceArticle.visualPieces, vp);
    
    shootFakeArticles--;
}

if(!canAttack)// && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
{
    can_attack = false;
    can_strong = false;
    can_ustrong = false;
    can_special = false;
    
    //walk_speed = 10;
    
    //bad workaround... do custom states exist ?
    //if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
    //    set_state(prev_state);
        
        
    //set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 0);
    //-> windows = 0 doesn't work.. so how else delete attack?
    
    move_cooldown[AT_USPECIAL] = 10000;
    move_cooldown[AT_FSPECIAL] = 10000;
    move_cooldown[AT_NSPECIAL] = 10000;
    move_cooldown[AT_DSPECIAL] = 10000;
    move_cooldown[AT_DSPECIAL_AIR] = 10000;
    
    move_cooldown[AT_UAIR] = 10000;
    move_cooldown[AT_FAIR] = 10000;
    move_cooldown[AT_NAIR] = 10000;
    move_cooldown[AT_DAIR] = 10000;
    move_cooldown[AT_BAIR] = 10000;
    
    move_cooldown[AT_TAUNT] = 10000;
    move_cooldown[AT_JAB] = 10000;
    move_cooldown[AT_DATTACK] = 10000;
        
    move_cooldown[AT_UTILT] = 10000;
    move_cooldown[AT_FTILT] = 10000;
    move_cooldown[AT_DTILT] = 10000;
    
    move_cooldown[AT_USTRONG] = 10000;
    move_cooldown[AT_FSTRONG] = 10000;
    move_cooldown[AT_DSTRONG] = 10000;
    
    //has_airdodge = false;
    //can_shield = false;
    //maybe try set to last frame & window?
    /*if (state == PS_PARRY_START || state == PS_PARRY || state == PS_WAVELAND || state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) 
        set_state(prev_state);//set_state(PS_IDLE);
        */
    //-> just draw all
    
    has_walljump = true;
    can_wall_jump = true;

    
    
    walk_speed = 4.5;
	walk_accel = 0.5;
    dash_speed = 7;
	walk_turn_time = 6;
    dash_turn_time = 6;
	initial_dash_speed = 7;
	initial_dash_time = 8;
	dash_stop_time = 8;
	dash_stop_percent = .5;
	dash_turn_accel = .3;

	wave_land_time = 8;
	wave_land_adj = 1.4;
	wave_friction = .03;

    gravity_speed = .55;
    hitstun_grav = .5;
	knockback_adj = 1.1;
	ground_friction = .35;


    max_djumps = 3;
	max_fall = 8;
	fast_fall = 12;
	air_max_speed = 7;
	jump_speed = 13;
	short_hop_speed = 6;
	djump_speed = 10.5;
    leave_ground_max = 7;
    max_jump_hsp = 7; 
    
    walljump_hsp = 4;
    walljump_vsp = 12;
    walljump_time = 16;
    
	air_dodge_active_frames = 14;
	air_dodge_recovery_frames = 8;
	air_dodge_speed = 8.5;
	land_time = 3;
	
	dodge_active_frames = 8;
	dodge_recovery_frames = 10;
	
	roll_forward_max = 7;
	roll_backward_max = 7;
}
else
{
    walk_speed = 3.25;
	walk_accel = 0.25;
    dash_speed = 5.5;
	walk_turn_time = 8;
    dash_turn_time = 6;
	initial_dash_speed = 6;
	initial_dash_time = 12;
	dash_stop_time = 10;
	dash_stop_percent = .35;
	dash_turn_accel = .5;
	
	wave_land_time = 7;
	wave_land_adj = 1.25;
	wave_friction = .04;
	
    gravity_speed = .65;
    hitstun_grav = .55;
	knockback_adj = 0.925;
	ground_friction = .5;
	
	
    max_djumps = 1;
	max_fall = 13;
	fast_fall = 16;
	air_max_speed = 5.5;
	jump_speed = 11.75;
	short_hop_speed = 7.5;
	djump_speed = 11;
    leave_ground_max = 5.5;
    max_jump_hsp = 5.5; 
    
    walljump_hsp = 8;
    walljump_vsp = 12;
    walljump_time = 46;
    
	air_dodge_active_frames = 12;
	air_dodge_recovery_frames = 12;
	air_dodge_speed = 7.5;
	land_time = 4;
	
	dodge_active_frames = 8;
	dodge_recovery_frames = 20;
	
	roll_forward_max = 9;
	roll_backward_max = 9;
}

if(state_cat == SC_AIR_NEUTRAL ||state_cat ==SC_GROUND_NEUTRAL )
{
    fxPlaying = false;
}



if(state == PS_RESPAWN && state_timer == 0)
{
    justRespawned = false;
    
    platX = x;
    platY = y;
    platTimer = 0;
}
if(state != PS_RESPAWN && prev_state == PS_RESPAWN)
{
    justRespawned = true;
}

if(!free)
    uspecialAirtime = 0;
    
if(!free && canAttack)
	move_cooldown[AT_TAUNT] = 0;
if(state == PS_AIR_DODGE)
	move_cooldown[AT_TAUNT] = 100000;
	
	
//-------- KIRBY --------
	
//"init"
/*if swallowed 
{
	swallowed = 0
	//Define any assets kirby might need to grab from YOUR CHARACTER
	var ability_spr = sprite_get("YOUR KIRBY SPRITE HERE");
	var ability_hurt = sprite_get("YOUR KIRBY HURTBOX HERE");
	var ability_icon = sprite_get(icon); //Optional
	
	with enemykirby 
	{ 
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 'value');
		//...
		newicon = ability_icon; //Optional, replaces the kirby ability icon
	}
}

//"update"
if enemykirby != undefined
{
	with oPlayer 
	{
		if (get_window_value(AT_EXTRA_3,2,AG_WINDOW_ANIM_FRAMES) == 'value') 
		{
			//your code here
		}
	}
}
		
//"attack_update"
if enemykirby != undefined
{
	with oPlayer 
	{ 
		if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) 
		{
			//your code here
		}
	}
}*/

if (swallowed == 1) 
{
	swallowed = 0;
	
	var ability_spr = sprite_get("kirbyNspecial");
	var ability_hurt = sprite_get("kirbyNspecial_hurt");
	var myicon = sprite_get("kirbyIcon2");
	var sfx = sound_get("nspecialStart");
	var hit_spr = sprite_get("pieceFx01");
	
	with (enemykirby)
	{
		newicon = myicon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 30);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 8);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sfx);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
                
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
                
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 30);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 15);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 10);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                
        set_num_hitboxes(AT_EXTRA_3, 4);
        
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 128);//96);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 128);//96);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 1.1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 64);//96);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 64);//96);
		set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 15);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE_FLIPPER, 8);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 1.15);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 1.2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 5);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 32);//96);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 32);//96);
		set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 0);
		set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 11);
		set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 20);
		set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 90);
		set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE_FLIPPER, 8);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 1.2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 11);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, 1.3);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		
        
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 30);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_SPRITE, hit_spr);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 24);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, 0);//-4);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 0);//96);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 0);//96);
		set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 0);
		set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_UNBASHABLE, true);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PROJECTILE_PLASMA_SAFE, true);
	}
}
//if kirby is in a match & swallowed
//if (enemykirby != noone)
if (enemykirby != undefined)
{
    with (oPlayer)
    {
        if (attack == AT_EXTRA_3) 
        {
            if (window == 3)
				current_ability = 0;
            
		    if (window == 1 && window_timer == get_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH)-1)
		    {    
		        spawn_hit_fx(x, y - 32, 115 ); 
		        spawn_hit_fx(x, y - 32, 143); 
		        
		        //var fx = spawn_hit_fx(x, y, other.hitfx1); //not even with o ther_init??
		        //var fx = spawn_hit_fx(x, y, other.rubiksCubeKirbyFx);
		        //var fx = spawn_hit_fx(x, y, rubiksCubeFx);
		        //fx.draw_angle = random_func(0, 360, true);
		    }
        }
        
		if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) 
		{
		    if(window == 1)
		    {
		        vsp *= 0.8;
    			soft_armor = 15;
		    }
		    if(window == 2)
    			soft_armor = 0;
		}
    }
}
	
#define init_shader_custom(doShader)
{
	if(canAttack)
	{
		frontArtic = front;
		backArtic = back;
		leftArtic = left;
		rightArtic = right;
		topArtic = top;
		botArtic = bot;
	}
	if(doShader)
		init_shader();
}