// MunoPhone Touch code - don't touch
// should be at TOP of file

// doing_goku_beam = (phone_attacking && attack == AT_NSPECIAL && window == clamp(window, 4, 6));
if (!nana && !is_nana){
    nana = instance_create( x, y, "oPlayer" );
    nana.is_nana = true;
    nana.popo = id;
    nana.x = x - 20*spr_dir
    balls = 0;
}





strong_held = (down_strong_down || up_strong_down || left_strong_down || right_strong_down || strong_down) ? true : false;
strong_pressed = (left_strong_pressed || right_strong_pressed || down_strong_pressed || up_strong_pressed) ? true : false;
attack_held = (attack_down || left_stick_down || right_stick_down || down_stick_down || up_stick_down) ? true : false;

//hitfx codes
with (asset_get("hit_fx_obj")){
    if (hit_fx == other.totstugeki_fly){
        if (hit_length == 0){
            hsp = -2 * spr_dir;
            vsp = -10;
        }

        draw_angle += 15 * spr_dir;
        vsp += 0.4;
    }

    if (hit_fx == other.totstugeki_whiff){
        if (hit_length == 0){
            hsp = 14 * spr_dir;

        }

        draw_angle -= 1 * spr_dir;
        hsp *= 0.90;
        vsp = 1;
    }

}


//FACE OPPONENT

var rival_players=0, rival;
if !noturn {
	with asset_get("oPlayer"){
	    if ( player!=other.player and get_player_team(player) != get_player_team(other.player) ) /*and !clone*/ {
	        rival=id;
	        ++rival_players;
	    }
	}
}
if rival_players==1 and !noturn {
    if state==PS_IDLE or state==PS_CROUCH or state==PS_DASH_START or state==PS_WALK or state==PS_WALK_TURN or state==PS_LAND or state==PS_LANDING_LAG{
        if rival.x>x {
            looking=1
        } else looking=-1
    } //else looking=spr_dir;
    
    if ( state==PS_IDLE or state==PS_CROUCH)  {
        spr_dir=looking;
    }
    
} else looking=spr_dir;



//CROUCH DASH and Cooldowns

if (state!=PS_ATTACK_GROUND && state!=PS_ATTACK_AIR){
ewgf = false;
ewgf_real = false;

omen = false;

shimmy = false;
omen_axle = false;

hellsweep2 = false;
hellsweepdgf = false;

no_drain = false;

elec_start = false;
elec_vfx = false;
elec_active = false;
tsp_state = false;

stand_dirt = false;
}


//baseball
if (!is_nana){


    

    if (state != PS_HITSTUN){
        out_cd = (out_cd > 0) ? out_cd-1 : out_cd;
    }
    base_cd = (base_cd > 0) ? base_cd-1 : base_cd;

    if (outs > 2){
        outs = 0;
        bases = 0;
        balls = 0;
    }

    if (state == PS_LANDING_LAG && state_timer == 1 && !has_hit_player && !striked){
            strikes++;
            if (strikes > 2){
                strikes = 0;
                outs++;
            }
    }


    with (oPlayer){
        if (player != other.player){
            if (state == PS_RESPAWN && prev_state == PS_HITSTUN && state_timer == 1 && last_player == other.player){
                other.runs += other.bases + 1;
                other.bases = 0;
            }

            //sneaking curse code here
            chaos_curse_timer = (chaos_curse_timer > 0 && !hitpause) ? chaos_curse_timer-1 : chaos_curse_timer;
            chaos_guncursed = (chaos_curse_timer > 0) ? true : false;
        }
    }

    if (runs >= 10)
    {
        elec_charge = 100;
        electrified = true;

        
        if (runs >= 50){
        elecstun_mult_strong = 1.4 + 0.6;
        elecstun_mult_weak = 1.3 + 0.4;
        attack_buff = 5;
        }else if (runs >= 40){
        elecstun_mult_strong = 1.4 + 0.55;
        elecstun_mult_weak = 1.3 + 0.35;
        attack_buff = 4;
        }else if (runs >= 30){
        elecstun_mult_strong = 1.4 + 0.5;
        elecstun_mult_weak = 1.3 + 0.3;
        attack_buff = 3;
        }else if (runs >= 20){
        elecstun_mult_strong = 1.4 + 0.4;
        elecstun_mult_weak = 1.3 + 0.2;
        attack_buff = 2;
        }else if (runs >= 10){
        elecstun_mult_strong = 1.4 + 0.2;
        elecstun_mult_weak = 1.3 + 0.1;
        attack_buff = 1;
        }     



    }


    runs = clamp(runs, 0, 55);


}

if (!free || state == PS_WALL_JUMP){
	move_cooldown[AT_FSPECIAL] = 0;
}

if (elec_active)
{
ewgf = true;
// omen = true;
}

//electro charging
if (!instance_exists( field_obj ) && !is_nana) {
elec_charge += (abs(hsp) + abs(vsp)) * elec_gain;

if (elec_charge < 100) elec_full = false;

if elec_charge >= 100{

if(!elec_full) sound_play(sound_get("se_rage"));

elec_full = true;

elec_charge = 100;
}




}
//electro field
if (instance_exists( field_obj )){
	
	elec_charge -= elec_passivedrain;
		
    if (state_cat == SC_HITSTUN){
    elec_charge -= elec_passivedrain * 2
    }

	if place_meeting( x, y, field_obj ){ 
	field_obj.player_touching = true;
	}
	else{
	field_obj.player_touching = false;
		    // Ground movement
		    walk_speed          = 4;		// 3    -  4.5
		    initial_dash_speed  = 5;		// 4    -  9
		    dash_speed          = 6;		// 5    -  9
		
		        
		    // Air movement
		    air_max_speed       = 4;  		// 3    -  7
		    wave_land_adj       = 1.2;	
            fast_fall           = 13;
	}
	
	if (elec_charge <= 0){
	sound_play(sound_get("se_rage_end"));
	instance_destroy(field_obj);
	}
}
else 
{
	
sound_stop( asset_get( "sfx_plasma_field_loop" ) );
	
	    // Ground movement
    walk_speed          = 4;		// 3    -  4.5
    initial_dash_speed  = 5;		// 4    -  9
    dash_speed          = 6;		// 5    -  9

        
    // Air movement
    air_max_speed       = 4;  		// 3    -  7
    wave_land_adj       = 1.2;	
}






//charge down

if down_charge>0 down_temp++
if down_temp>=down_timer {
    down_charge=0;
    down_timer=0;
    down_temp=0;
}

if (down_charge == 0 && down_down){
    hold_charge++;
}




if (!down_down)
{
    if (hold_charge >= 20)
    {
        down_charge=1;
        down_timer=20;
        down_temp=0;
    }
    hold_charge=0;
}

if (left_down || right_down) && (down_charge == 1){
    down_charge=2;
    down_timer=5;
    down_temp=0;
}


// print(down_charge);

//otgf



//Right

if otgf>0 otgf_temp++
if otgf_temp>=otgf_timer {
    otgf=0
    otgf_timer=0
    otgf_temp=0
}

if start_dir[1]==1 && spr_dir == looking{
    if otgf==0 and ((right_down and !down_down and !up_down))  {
        otgf=1
        otgf_timer=10
        otgf_temp=0
    }
        
    if otgf==1 and (joy_pad_idle) {
        otgf=2
        otgf_timer=10
        otgf_temp=0


    }
    
    if otgf=2 and (right_down and down_down ) and attack_pressed {
        if (!was_parried){
        ewgf=true;
        ewgf_real = true;
        no_drain = true;
        }
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
    
	if otgf=2 and (right_down and down_down ) and strong_pressed {
    	omen=true;
    	no_drain = true;
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
    
    if otgf==2 and (right_down and down_down ) {
        otgf=3
        otgf_timer=10
        otgf_temp=0

    }
}

//Left
if start_dir[1]==-1 && spr_dir == looking{
    if otgf==0 and ((left_down and !down_down and !up_down))  {
        otgf=1
        otgf_timer=10
        otgf_temp=0
    }
    
    if otgf==1 and (joy_pad_idle) {
        otgf=2
        otgf_timer=10
        otgf_temp=0


    }
    
    if otgf==2 and (left_down and down_down ) and attack_pressed {
        if (!was_parried){
        ewgf=true;
        ewgf_real = true;
        no_drain = true;
        }
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
    
    if otgf==2 and (left_down and down_down ) and strong_pressed {
    	omen=true;
    	no_drain = true;
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
    
    if otgf==2 and (left_down and down_down ) {
        otgf=3
        otgf_timer=10
        otgf_temp=0
    }
}




if dp>0 dp_temp++
if dp_temp>=dp_timer {
    dp=0
    dp_timer=0
    dp_temp=0
}

#region DP
if dp==0 start_dir[0]=spr_dir
//Right
if start_dir[0]==1 && spr_dir == looking{
    if dp==0 and ((right_pressed and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
        
    if dp==1 and (!right_down and down_down ) {
        dp=2
        dp_timer=10
        dp_temp=0

    }
    
    if dp==1 and (down_stick_pressed) and tapf == 2{
        dp=3
        dp_timer=10
        dp_temp=0
        clear_button_buffer( PC_DOWN_STRONG_PRESSED );
		clear_button_buffer( PC_STRONG_PRESSED );
    }
    
    if dp=2 and (right_down and down_down ) and attack_pressed {
        if (!was_parried){
    	ewgf=true;
    	ewgf_real = true;
    	no_drain = true;
        }
        dp=3
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (right_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0
    }
}

//Left
if start_dir[0]==-1 && spr_dir == looking{
    if dp==0 and ((left_pressed and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
    
    if dp==1 and (!left_down and down_down ) {
        dp=2
        dp_timer=10
        dp_temp=0

    }
    
    if dp==1 and (down_stick_pressed) and tapf == 2 {
        dp=3
        dp_timer=10
        dp_temp=0
        clear_button_buffer( PC_DOWN_STRONG_PRESSED );
		clear_button_buffer( PC_STRONG_PRESSED );
    }
    
    if dp==2 and (left_down and down_down ) and attack_pressed {
        if (!was_parried){
        ewgf=true;
        ewgf_real = true;
        no_drain = true;
        }
        dp=3
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (left_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0

    }
}



//Shortcut

//Right
if start_dir[0]==1 && spr_dir == looking{
    if dp==0 and ((right_down and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
        
    if dp==1 and (joy_pad_idle) {
        dp=2
        dp_timer=10
        dp_temp=0


    }
    
    if dp=2 and (right_down and down_down ) and attack_pressed {
        if (!was_parried){
        ewgf=true;
        ewgf_real = true;
        no_drain = true;
        }
        dp=3
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (right_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0

    }
}

//Left
if start_dir[0]==-1 && spr_dir == looking{
    if dp==0 and ((left_down and !down_down and !up_down))  {
        dp=1
        dp_timer=10
        dp_temp=0
    }
    
    if dp==1 and (joy_pad_idle) {
        dp=2
        dp_timer=10
        dp_temp=0


    }
    
    if dp==2 and (left_down and down_down ) and attack_pressed {
        if (!was_parried){
        ewgf=true;
        ewgf_real = true;
        no_drain = true;
        }
        dp=3
        dp_timer=10
        dp_temp=0
    }
    
    if dp==2 and (left_down and down_down ) {
        dp=3
        dp_timer=10
        dp_temp=0
    }
}


#region TAPF
if tapf==0 start_dir[1]=spr_dir
//Right
if start_dir[1]==1 {
    if tapf==0 and (joy_pad_idle) {
        tapf=1
        tapf_timer=10
        tapf_temp=0
    }
    
    if tapf==1 and ((left_down or right_down) and !up_down ) {
        tapf=2
        tapf_timer=10
        tapf_temp=0
    }
    
}

//Left
if start_dir[1]==-1 {
    if tapf==0 and (joy_pad_idle) {
        tapf=1
        tapf_timer=10
        tapf_temp=0
    }
    
    if tapf==1 and ((left_down or right_down) and !up_down ) {
        tapf=2
        tapf_timer=10
        tapf_temp=0
    }
    
}



if tapf>0 tapf_temp++

if tapf_temp>=tapf_timer && tapf > 1{
    tapf=0
    tapf_timer=0
    tapf_temp=0
}
#endregion

#region DD
if dd==0
//Right

    if dd==0 and (down_down && !(left_down or right_down)) {
        dd=1
        dd_timer=10
        dd_temp=0
    }
    
    if dd==1 and (joy_pad_idle) {
        dd=2
        dd_timer=10
        dd_temp=0
    }

    if dd==2 and (down_pressed && !(left_down or right_down)) {
        dd=3
        dd_timer=10
        dd_temp=0
    }


if dd>0 dd_temp++

if dd_temp>=dd_timer && dd > 1{
    dd=0
    dd_timer=0
    dd_temp=0
}
#endregion

#region PARRY+ATTACK 

if ((state == PS_PARRY_START) && special_down) && !is_nana{
set_attack(49);
}

#endregion


#region TAPF
if tapf==0 start_dir[1]=spr_dir
//Right
if start_dir[1]==1 {
    if tapf==0 and (joy_pad_idle) {
        tapf=1
        tapf_timer=10
        tapf_temp=0
    }
    
    if tapf==1 and ((left_down or right_down) and !up_down ) {
        tapf=2
        tapf_timer=10
        tapf_temp=0
    }
    
}

//Left
if start_dir[1]==-1 {
    if tapf==0 and (joy_pad_idle) {
        tapf=1
        tapf_timer=10
        tapf_temp=0
    }
    
    if tapf==1 and ((left_down or right_down) and !up_down ) {
        tapf=2
        tapf_timer=10
        tapf_temp=0
    }
    
}



if tapf>0 tapf_temp++

if tapf_temp>=tapf_timer && tapf > 1{
    tapf=0
    tapf_timer=0
    tapf_temp=0
}


//Command End



//omen hell axle
#region OHAX
if ohax==0 start_dir[1]=spr_dir
//Right
if start_dir[2]==1 {
    if ohax==0 and (down_pressed) {
        ohax=1
        ohax_timer=10
        ohax_temp=0
    }
    
    if tapf==1 and (up_pressed) {
        ohax=2
        ohax_timer=10
        ohax_temp=0
    }
    
}

//Left
if start_dir[2]==-1 {
    if ohax==0 and (down_pressed) {
        ohax=1
        ohax_timer=10
        ohax_temp=0
    }
    
    if ohax==1 and (up_pressed) {
        ohax=2
        ohax_timer=10
        ohax_temp=0
    }
    
}

//Command End


if ohax>0 ohax_temp++
if ohax_temp>=ohax_timer {
    ohax=0
    ohax_timer=0
    ohax_temp=0
}
#endregion







// if (dp>=2){
// move_cooldown[AT_DATTACK] = 2;
// }

if (state==PS_ATTACK_GROUND && spr_dir != looking){
dp=0;
//move_cooldown[AT_EXTRA_1] = 1;
}

if (dp==3||otgf==3) && ((
(state == PS_IDLE ||
state == PS_DASH_START ||
state == PS_DASH ||
state == PS_DASH_STOP ||
state == PS_DASH_TURN ||
state == PS_WALK ||
state == PS_WALK_TURN) && 
!free ) || 
(state==PS_ATTACK_GROUND && attack != AT_EXTRA_1 && window == 1 && window_timer < ewgf_window )){
	
	if (start_dir[0] != 0) spr_dir = start_dir[0];
	else if (start_dir[1] != 0) spr_dir = start_dir[1];
	
	tapf=0;
    dp=0;
    otgf=0;

    clear_button_buffer( PC_DOWN_STRONG_PRESSED );
    clear_button_buffer( PC_LEFT_STICK_PRESSED );
    clear_button_buffer( PC_RIGHT_STICK_PRESSED );

    state = PS_ATTACK_GROUND;
    set_attack(AT_EXTRA_1);

}


// print_debug("DP: " + string(dp) + " | TAPF: " + string(tapf));

// with (oPlayer){
//     if (player != other.player)
//         print_debug("old_hsp: " + string(old_hsp) + " | old_vsp: " + string(old_vsp));
// }

//bound dstrong


with (oPlayer){
    if (player != other.player){

        if (place_meeting(x, y, other)){

            if (other.y < y){
                if (other.jump_pressed && other.free){
                    other.djumps = 0;
                }
            }

        }


        if (bound && bound_timer > 0 && state == PS_HITSTUN){

            can_tech = false;


            if (!hitpause){
                bound_timer--;
                hsp = old_hsp;
            }
            

            if (vsp > 0 && bound_timer == 0){
                hitstun = 0;
                bound = false;
                vsp /= 2;
            }

            

        }
        else
        {
            bound = false;
        }


      

    }
        
}

if (state == PS_CROUCH) && (joy_pad_idle) && state_timer > 4
	while_rising = true;
else
	while_rising = false;

#endregion


    var stage_top = get_stage_data( SD_Y_POS );
    var stage_mid = ((room_width - get_stage_data( SD_X_POS )) + get_stage_data( SD_X_POS ))/2 ;

    

//spawn checking block offset


    if (!dirt_check && !is_nana){

    var dirt = instance_create( stage_mid, stage_top, "obj_article_solid" );
    var maxloop = 0;

        with (dirt){


            while (x%32 != 0)
            {
                x--;
            }

            while (y%32 != 0)
            {
                y--;
            }



            

            
            if (instance_place( x, y, asset_get("par_block")) || position_meeting( x, y, asset_get("oPlayer")))
            {
                other.dirt_offset = true;
            }

            other.dirt_check = true;

            instance_destroy(id);
            
        }
    }


//intro
if (get_gameplay_time() <= 2*60){
    if (get_gameplay_time() == 60){
    set_attack(AT_TAUNT);
    }
    else
    {
        if (state == PS_ATTACK_GROUND && attack == AT_TAUNT && window_timer == get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH) - 1 )
        set_state(25);

        if (get_gameplay_time() == 2*60)
        set_state(PS_IDLE);
    }





}




if kazuyamishima {
        for (var hbox = get_num_hitboxes(attack); hbox != 0; hbox--){
        //Kazuya Mishima HitSFX
        set_hitbox_value(attack, hbox, HG_HIT_SFX, kazuya_mishima);

        }

        for (var atkwin = get_attack_value(attack, AG_NUM_WINDOWS); atkwin != 0; atkwin--){
        //Kazuya Mishima Sounds
        set_window_value(attack, atkwin, AG_WINDOW_SFX, kazuya_mishima);
        }

        with (oPlayer){
            if (player != other.player){
                if (state == PS_RESPAWN && state_timer == 1){
                        sound_play(other.wins);
                }
            }

        }

}

if tekken_mode{
	

if (noturn){
//sounds
//jab
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_WK02"));
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("RES_BANK_PCH_WK02"));
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT02"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_WK01"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("RES_BANK_WND_WK01"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));
//ftilt
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("RES_BANK_KCK_SG01"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));
//dtilt
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("RES_BANK_KCK_WK01"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_WK02"));
//utilt
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("RES_BANK_KCK_WK01"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_WK02"));
//dattack
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_SG01"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_WK01"));

//fstrong
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT02"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));
//ustrong
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT01"));
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT01"));
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT01"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));
//dstrong
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT02"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT02"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("RES_BANK_PCH_SG01"));

//nair
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_WK01"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_WK02"));
//fair
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("RES_BANK_KCK_WK01"));
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("RES_BANK_KCK_SG01"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_WK02"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));
//uair
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_MD01"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));
//dair
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT01"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD02"));
//bair
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT01"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));

//wgf
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_SG01"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, sound_get("RES_BANK_PCH_SG01"));
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, sound_get("RES_BANK_SPK_L01"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));
//hellsweep
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, sound_get("RES_BANK_KCK_WK01"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, sound_get("RES_BANK_KCK_WK01"));
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD01"));

//DU
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT01"));
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, sound_get("RES_BANK_PCH_LT01"));
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, sound_get("RES_BANK_WND_MD02"));
}
noturn = false;


}
else{

if (!noturn){
	
//sounds reset
//jab
reset_hitbox_value(AT_JAB, 1, HG_HIT_SFX);
reset_hitbox_value(AT_JAB, 2, HG_HIT_SFX);
reset_hitbox_value(AT_JAB, 3, HG_HIT_SFX);
reset_window_value(AT_JAB, 1, AG_WINDOW_SFX);
reset_window_value(AT_JAB, 4, AG_WINDOW_SFX);
reset_window_value(AT_JAB, 7, AG_WINDOW_SFX);
//ftilt
reset_hitbox_value(AT_FTILT, 1, HG_HIT_SFX);
reset_window_value(AT_FTILT, 1, AG_WINDOW_SFX);
//dtilt
reset_hitbox_value(AT_DTILT, 1, HG_HIT_SFX);
reset_window_value(AT_DTILT, 1, AG_WINDOW_SFX);
//utilt
reset_hitbox_value(AT_UTILT, 1, HG_HIT_SFX);
reset_window_value(AT_UTILT, 1, AG_WINDOW_SFX);
//dattack
reset_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX);
reset_window_value(AT_DATTACK, 1, AG_WINDOW_SFX);

//fstrong
reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
reset_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX);
//ustrong
reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
reset_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX);
reset_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX);
reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX);
//dstrong
reset_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX);
reset_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX);
reset_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX);

//nair
reset_hitbox_value(AT_NAIR, 1, HG_HIT_SFX);
reset_window_value(AT_NAIR, 1, AG_WINDOW_SFX);
//fair
reset_hitbox_value(AT_FAIR, 1, HG_HIT_SFX);
reset_hitbox_value(AT_FAIR, 1, HG_HIT_SFX);
reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX);
reset_window_value(AT_FAIR, 3, AG_WINDOW_SFX);
//uair
reset_hitbox_value(AT_UAIR, 1, HG_HIT_SFX);
reset_window_value(AT_UAIR, 1, AG_WINDOW_SFX);
//dair
reset_hitbox_value(AT_DAIR, 1, HG_HIT_SFX);
reset_window_value(AT_DAIR, 1, AG_WINDOW_SFX);
//bair
reset_hitbox_value(AT_BAIR, 1, HG_HIT_SFX);
reset_window_value(AT_BAIR, 1, AG_WINDOW_SFX);

//wgf
reset_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX);
reset_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX);
reset_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX);
reset_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX);
//hellsweep
reset_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX);
reset_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX);
reset_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX);
reset_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX);
//DU
reset_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX);
reset_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX);
reset_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX);
}


noturn = true;	

} 



//nana stuff
if (is_nana){

// with(pHitBox){
//     if (player_id == other.id){
//         hbox_group = get_hitbox_value(attack, hbox_num, HG_HITBOX_GROUP) + 1;
//     }
// }


// ewgf = popo.ewgf;
// ewgf_real = popo.ewgf_real;
// omen = popo.omen;
if (state == PS_PARRY && state_timer > 15){
    set_state(PS_IDLE);
}

    if (!nana_catchup) && (state_cat != SC_HITSTUN ){
            if (x != popo.x - (25 * popo.spr_dir)){

                x = round(lerp(x, popo.x - (25 * popo.spr_dir), 0.05));
            }

        jump_speed = popo.jump_speed;
        short_hop_speed = popo.short_hop_speed;
        djump_speed = popo.djump_speed;

    }
}else{
//rebellion gauge






if (arsene){
    rebellion_meter -= 0.05;
    arsene_x = lerp(x - (20 * spr_dir), arsene_x, 0.7);
    arsene_y = lerp(y - 50, arsene_y, 0.7);

    if (rebellion_meter == 0)
        arsene = false;

}else
{

    if (rebellion_meter == 100){
        sound_play(sound_get("arsene_summ"));
        arsene = true;
    }

    rebellion_meter += 0.005;
    arsene_x = x;
    arsene_y = y;
}

rebellion_meter = clamp(rebellion_meter, 0, 100);

//sai m
if !hitpause {
    shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if (cinematic > 0){

    if (cinematic == 30)
    set_state(PS_DOUBLE_JUMP);


    cinematic--;
}


//bat within/witchtime


var witch_start = sound_get("witchtime");
var witch_end = sound_get("witchend");

if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD ){

    if (state_timer < 20){
            with (pHitBox){
                if (place_meeting(x,y,other) && player != other.player){
                    if (player_id.witch_timer == 0){
                    player_id.witch_timer = 60 * 4;
                    player_id.witch_timer_player = other.player;
					
					if (player_id.state_cat != SC_HITSTUN){
					player_id.old_hsp = player_id.hsp;
					player_id.old_vsp = player_id.vsp;
					}

                    destroyed = true;

                    if (!other.witch_sound)
                    sound_play(witch_start);

                    other.witch_sound = true;
                    }
                }
            }
    }


}


with (pHitBox){ 
	if ("witch_timer" in player_id){
	if (player_id.witch_timer > 0){
		destroyed = true;
	}
	}	
}

with (oPlayer){
    if (player != other.player){




        if (witch_timer > 0 && witch_timer_player == other.player){
            
        	hitstop = witch_timer;
            hitpause = true;

            witch_timer--;

			if (get_gameplay_time() % 5 == 0){
				x += old_hsp*0.001;
				y += old_vsp*0.001;
			}

            if (witch_timer == 0){
            sound_stop(witch_start);
            sound_play(witch_end);
            other.witch_sound = false;
            }

        }


    }
        
}


//3s parry
if (tapf == 2) && (state_cat == SC_GROUND_NEUTRAL  || state_cat == SC_AIR_NEUTRAL || state == PS_DASH || state == PS_DASH_STOP || state == PS_DASH_START || tsp_state){

if (tsp_cd == 0)
tsp_active = true;

tsp_cd = 10;
}





if (tsp_active && tsp_window > 0){

    tsp_window--;

    tsp_active = (tsp_window == 0) ? false : tsp_active;

    attack_invince = true;
    if (instance_exists(nana))
    nana.attack_invince = true;

    with (pHitBox){
        if (place_meeting(x,y,other.hurtboxID) && player != other.player){
            player_id.vsp = other.tsp_evsp;
            player_id.hsp = other.tsp_ehsp;
            other.tsp_success = true;
            other.tsp_enemy = player_id;
            other.vsp = other.tsp_vsp;
            other.hsp = other.tsp_hsp;
            destroyed = true;
        }
    }

}
else
{
    tsp_cd = (tsp_cd > 0) ? tsp_cd-1 : 0;
}

if (tsp_success){

        tsp_stack++;


        set_attack(48);
        sound_play(sound_get("parry"));

        old_vsp = tsp_vsp;
        old_hsp = tsp_hsp;

        tsp_enemy.old_vsp = tsp_evsp;
        tsp_enemy.old_hsp = tsp_ehsp;

        hitpause = true;
        hitstop = tsp_hitpause;
        hitstop_full = tsp_hitpause;

        tsp_enemy.hitpause = true;
        tsp_enemy.hitstop = tsp_hitpause+5;
        tsp_enemy.hitstop_full = tsp_hitpause+5;

        tsp_success = false;
        invince_time = tsp_hitpause;
        invincible = true;

        rg_meter += 10;

        if rg_meter < 0
            rg_meter = 0;
        if rg_meter > 100
            rg_meter = 100;



        balls++;
        if (balls > 3){
            balls = 0;

            if (bases != 3)
            bases++;
            if (bases = 3)
            runs++;
        }

        if (instance_exists(nana)){
            nana.invince_time = tsp_hitpause+20;
            nana.invincible = true;
        }

        tsp_cd = 0;
        tapf = 0;
}

tsp_window = (tsp_window == 0) ? 7 : tsp_window;

}



if (state != PS_ATTACK_GROUND || attack != AT_DSPECIAL) || concentration_state == 2{

if (concentration_state < 2)
concentration_state = 0;

concentration += 0.5;
}

//chaos
if (concentration <= 0){
    concentration_state = 2;
}
if (concentration_state == 2){
    if (concentration = 100){
        concentration_state = 0;
    }
}

concentration = clamp(concentration, 0, 100);