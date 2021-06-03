//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


if (move_cooldown[AT_JAB] > 0){ slaps = 0; }
if (attack == AT_JAB){
    if (window == 1 && slaps >= 6){ move_cooldown[AT_JAB] = 20; slaps = 0; }
    if (window == 3 && window_timer > 5){
    if (has_hit_player == true){
        window = 4;
        slaps += 1;
        }
    }
}

if(attack == AT_JAB){
    was_parried = false;
}

if (attack == AT_FTILT && window == 1)
{
   if (window_timer == 5 && (left_stick_down || right_stick_down) && strong_charge < 60)
   {
   	strong_flashing = (strong_charge % 10) < 5
       strong_charge++; //increment rival's value up to 60
       window_timer--; //stuck on the charging frame
   }
}


if (attack == AT_NAIR && window == 1 && window_timer == 1) {
	if (spr_dir = 1){
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
	} else if spr_dir = -1 {
	set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_r"));
	}}
	
if (attack == AT_NAIR && window == 3 && window_timer == 4 && attack_down){
	window = 2;
}

if (attack == AT_BAIR){
	if (window >= 1 && window <= 2){ can_fast_fall = false; }
    if (window == 2 && window == 3){
    //Making sure he doesn't travel too far/fast to actually follow-up
    var fly_dist = point_distance(0,0,hsp,vsp);
    var fly_dir = point_direction(0,0,hsp,vsp);
    var max_speed = 4;
    if (fly_dist > max_speed){
        hsp = lengthdir_x(max_speed, fly_dir);
        vsp = lengthdir_y(max_speed, fly_dir);
        }
    }
    if (window >= 3){ can_fast_fall = true; }
    if (window == 3 && window_timer == 2 && paperwork == 0){ paperwork = 100; }
}

if attack == AT_DAIR && attack_pressed && window == 3 && window_timer > 4 || attack == AT_DAIR && down_stick_pressed && window == 3 && window_timer > 4 {    window = 5 
    window_timer = 1;
}
//sorry :( please dont judge me im so tired
if attack == AT_DAIR {
    if window == 5 && window_timer == 6 {
        window = 6;
        window_timer = 1;
        vsp =- 7
      }
  }


if (attack == AT_NSPECIAL){
    	suppress_stage_music(0, 0.02);
    if (window == 2 && window_timer == 24){
        if (special_down){
            window = 2;
            window_timer = 2;
        } else if special_down = false {
            window = 3;
            window_timer = 1;
        }
    }
}



if (attack == AT_NSPECIAL && window == 2 && window_timer == 1){
    if get_player_color( player ) == 24 {
        sound_play( sound_get( "monkemode" ), true, noone, 1, 1);    
    } else if get_player_color( player ) != 24 {
sound_play( sound_get( "hacking" ), true, noone, 1, 1);    
}}

if (attack == AT_NSPECIAL && window != 2 &&  get_player_color( player ) != 24) {
    sound_stop( sound_get( "hacking" ));    
}
if (attack == AT_NSPECIAL && window != 2 &&  get_player_color( player ) == 24) {
    sound_stop( sound_get( "monkemode" ));    
}



		if (attack == AT_FSPECIAL && window == 1 && window_timer == 2 && usedfspecial = true) {
		window = 4;
		}


if (attack == AT_USPECIAL ) {
	can_move = false;
	if (window == 2 && window_timer == 3) {
    fakedie = true;
    savedamage = get_player_damage(player);
create_deathbox(x, y, 10, 10, player, true, 1, 1, 0);
}}

//=============================================
//DSPECIAL & VARIANTS

// C O M B U S T
if (attack == AT_DSPECIAL)
{
	if (window == 2 && window_timer == 1)
	{
		combust_timer = combust_timer_max;
	}
}

//C O N S U M E
if (attack == AT_DSPECIAL_2)
{
	if (window == 3 && window_timer > 30)
	{
		iasa_script();
	}
}

//C O U R A G E
if (attack == AT_DSPECIAL_AIR)
{
	if (window == 2 && window_timer == 1)
	{
		courage_active = !courage_active;
		knockback_adj = courage_active ? 0.99 : 1;
	}
}

//C H A R G E
if (attack == AT_DTHROW)
{
	if (window == 1 && window_timer == 1 && limit_charge >= limit_charge_max)
	{
		limit_charge = 0;
	}
	if (window == 2 && special_down && limit_charge < limit_charge_max)
	{
		limit_charge++;
		window_timer = 0;
	}
}
//=============================================


if (attack == AT_USTRONG){
    move_cooldown[AT_USTRONG] = 30;
}

if (attack == AT_DSTRONG && window == 2 && (strong_charge % 12 == 1) && !hitpause)
{   create_hitbox(AT_DSTRONG, 9, x, y);}

if (attack == AT_TAUNT && window == 1 && window_timer == 8 && taunt_down = true){
    window_timer = 7;
}

if (attack == AT_TAUNT && window == 1 && window_timer == 29 && taunt_down = true){
    window_timer = 1;
}

if attack == AT_TAUNT && window == 1 && window_timer == 1 {
if (spr_dir = 1){
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
		} else {
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_r"));
		}}

if (attack == AT_TAUNT_2 && window == 1 && window_timer == 29 && taunt_down = true){
    window_timer = 2;
}	

if attack == AT_TAUNT_2 && window == 1 && window_timer == 1 {
         sound_play( sound_get( "funnydance" ), true, noone, 1, 1);    
}
if attack == AT_TAUNT_2 && window_timer = 30 {
    sound_stop( sound_get( "funnydance" ));    
}