//update
if !(get_player_color( player ) == 16) { 
	if (wblastcharge >= 35) { 
		var outlineclr = (sin((get_gameplay_time() - wblastcharge) * 0.2) * -50) + 50
		outline_color = [ 0, outlineclr * 1.05, outlineclr * 2];

		if get_gameplay_time() mod 25 == 0 {
				spawn_hit_fx(x-30, y-60, nspecialAfter);
		}
		if get_gameplay_time() mod 20 == 0 {
				spawn_hit_fx(x+30, y-40, nspecialAfter);
		}
		if get_gameplay_time() mod 30 == 0 {
				spawn_hit_fx(x-34, y-14, nspecialAfter);
		}
	}
	else 
	if (get_player_color( player) == 19) {
		outline_color = [ 23, 22, 97];
	}	else {
		outline_color = [ 0, 0, 0 ];
	}
}

//Check if a fspecial ball is out
var ABallThereIs = false;

with(asset_get("pHitBox")){
    if(player_id == other.id && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2) && hbox_num == 1){
        ABallThereIs = true;
    }
}

if ABallThereIs{
   	ballOut = true;
}

else { ballOut = false; }

if ballDown > 0 {
	ballDown--;
}

if (get_player_color( player ) == 16) {
	if (wblastcharge >= 35) and ((get_gameplay_time() mod 20) >= 5) {
		outline_color = [ 40, 100, 255];
	}
	else {	
		outline_color = [31, 31, 31];
	}
}

init_shader();

if (wblastcharge > 35) { //Ensure wblastcharge never goes above 55
	wblastcharge = 35;
}

if (0 > wblastcharge) { //Ensure wblastcharge never goes below zero
	wblastcharge = 0;
}

if !(url == 1882960192) {
	set_state(PS_DEAD);
}

///runes thing
if has_rune("G") { //Rune G: Charging NSpecial boosts stats.
	if wblastcharge >= 35 {
	walk_anim_speed = .31;
	dash_anim_speed = .5;
	
	walk_speed = 5;
	walk_accel = 0.4;		
	initial_dash_speed = 8;
	dash_speed = 8;
	
	air_max_speed = 6;
	jump_speed = 11.9;
	djump_speed = 11;
	max_jump_hsp = 7.5;
} else { //reset
		walk_anim_speed = .21;
		dash_anim_speed = .35;
		
		walk_speed = 4;
		walk_accel = 0.3;		
		initial_dash_speed = 7.5;
		dash_speed = 6.5;
		
		air_max_speed = 5;
		jump_speed = 10.9;
		djump_speed = 10;
		max_jump_hsp = 6;
	}
}

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Azure"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Another day, another opponent... Let's do it!",
    "Heyo.",
    "Nothing to do but fight, I guess...",
    "(Honestly, I dunno why I am doing this.)"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == CH_ZETTERBURN && diag != "") 
    {
        diag = "Uh... Hey man, your hair's on fire.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == CH_FORSBURN && diag != "") 
    {
        diag = "I sincerely hope your lungs are okay.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == CH_CLAIREN && diag != "") 
    {
        diag = "That's a pretty cool sword.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == CH_MAYPUL && diag != "") 
    {
        diag = "...What animal ARE you even?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2014106219" && diag != "") 
    {
        diag = "Hope you don't hold back, Sis!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2007375819" && diag != "") 
    {
        diag = "Let's see what you've got, BBot!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    if(otherUrl == "2089998666" && diag != "") 
    {
        diag = "Hey, it's been a while, Yoshi!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
}