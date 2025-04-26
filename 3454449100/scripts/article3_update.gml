//article1_update

//Used for Koopa Troopa's Neutral Special

Pocketable = false;


//more states can go here

if (state == 1){
	if (vsp < 12){
		vsp = vsp + .75;
	}

	hsp = (2.5 * spr_dir);

	// print(spr_dir);

	if (state_timer == 24){

		spawn_hit_fx(x, y - 20, 144);

		instance_destroy();
		exit;
	}
}

//Make time progress
state_timer++;

exist_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;