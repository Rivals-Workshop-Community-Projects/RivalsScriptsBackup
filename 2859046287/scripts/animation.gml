//animation.gml
//this script runs every frame, but will also run last in line after all the other update scripts
//we use this script to mess more graphical things

//fix weird jittering that can happen when hud_offset tries to return to 0 - from the munophone
if (abs(hud_offset) < 1) hud_offset = 0;

//this piece of code changes the sprite to always be the halloween idle, it starts true if you have the halloween alt (see init) and turns false when you move
if (halloween_active)
{
	sprite_index = sprite_get("idle_halloween");
	image_index = state_timer * idle_anim_speed;
}

switch (state)
{
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding (not neccesary to use but it looks nicer)
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		switch (attack)
		{
			case AT_FSTRONG: //looping strong charge animation
				//this code basically checks the strong charge window frames and animates accordingly
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.3; //sets the speed the strong charge animation goes
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
					//this equasion forces the image_index (frames) to animate
					//	- anim_first is used as an animation offset, as in which frame should the animation start on
					//	- strong_charge always counts up, so it can be used as an animation timer that's consistent with every charge
					//	- anim_speed is the speed in which the timer is multiplied by, allowing different animation speeds
					//	- anim_length acts as a limiter to the loop, when the image_index value reaches this value it will loop back to the first value of anim_first
				}
				break;
		}
		break;
    case PS_WALL_JUMP: //easy clinging
		if (can_wall_cling)
		{
			//makes sure the cling_timer is consistent with the state_timer
			if (state_timer == 0) cling_timer = 0;
			if (clinging)
            {
                cling_timer = state_timer;

                //sets image to the proper index
                image_index = state_timer*cling_anim_time; //animates the sprite on the wall until it reaches the cling_frame value
                if (image_index >= cling_frame) image_index = cling_frame; //when clinging and the image_index goes over the cling frame, force it back
            }
			else //when not clinging, simply do the animation
			{
				image_index = lerp(
					image_index < cling_frame ? 0 : cling_frame, //depending on if we clinged for enough time to reach the cling frame, the lerp adapts
					image_number, //this is the maximum frame number in the strip
					(state_timer-cling_timer)/walljump_time //checks when the animation starts [state_timer - cling_timer] and for how long with [walljump_time]
				);
			}
		}
		break;
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland

		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);
		//how did i get to this math?
		//	  parry_distance returns the distance which the player was parried from
		//	  if the parry distance is 150 and under, the parried state will be 60 frames long
		//	  if the parry distance is 590 and over, the parried state will be 110 frames long
		//	  590 - 150 = 440 (gap between the min and max affected distances)
		//	  110 - 60 = 50 (gap between the min and max parry stun time)
		//	  440 : 50 = 8.8 (the mulitplier in which parry_distance knows how many frames to add to the parry stun)
		//	  clamp will limit the math to any number in between 60 and 110, the frame limits (otherwise the player may have loop the animation which we don't want)
		//	  state_timer is divided by the complex math above so it dynamically changes the image below

		//the ? in there is essencially an if statement, it checks if [extended_parry_lag] is active or not, and acts accordingly
		//if it isn't active, the parry stun time is [parry_lag]

		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math); //parrystun
		else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN:
		hurt_img = 1;
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	sprite_index = sprite_get("hurt");
	image_index = hurt_img;

	if (hurt_img == 5) //PS_TUMBLE and hurtground share a hurt_img index, dan programmed it like that
	{
		if (free) //since hurtground will always be !free, this allows us to rule it out
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			sprite_index = sprite_get("hurt_tumble");
			image_index = state_timer * 0.1; //this part just animates it properly
		}
	}

	//crystalized compatibility
	//if the character doesn't use small sprites, uncomment this crystalized section (also make sure you have a hurt_crystalized sprite in your folder)
	if (crystalized_damage_remaining > 0 || state == PS_CRYSTALIZED)
	{
		hurt_img = 1;
		if (crystal_stun_resize)
		{
			sprite_index = sprite_get("hurt_crystalized"); //this has to be using small sprites
			small_sprites = 1;
		}
	}
	else if (crystal_stun_resize) small_sprites = 0;

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}

//rune F - auto turnaround - walk backwards sprites set
//NOTE: when creating/exporting the sprite, the character should face right unlike the rest of the animations
if (has_rune("F"))
{
	//here we check if we are in the walk state and if we are not facing the same way as the spr_dir
	//if this occurence happens, force a different walk animation
	//also should set the image_index to keep playing - the state_timer forces the animation to keep going
	if (state == PS_WALK && spr_dir != runeF_face_dir)
	{
		sprite_index = sprite_get("walkback_runeF");
		image_index = floor(walk_anim_speed*state_timer);
	}
}


//dust effects spawning (check the spawn_base_dust function for more info on the expandtion i added - bar-kun)
if (is_attacking) switch (attack)
{
    case AT_JAB:
        spawn_base_dust(x - 8 * spr_dir, y, "dash", 0, 0, 4, 4); 
        spawn_base_dust(x + 32 * spr_dir, y, "dash_start", 0, 0, 7, 4);
        break;
    case AT_FTILT:
        spawn_base_dust(x - 16 * spr_dir, y, "dash", 0, 0, 1, 7);
        spawn_base_dust(x, y, "dash_start", 0, 0, 8, 1);
        break;
    case AT_DTILT:
        spawn_base_dust(x + 32 * spr_dir, y, "dash_start", 0, 0, 1, 2);
        break;
    case AT_USTRONG:
        spawn_base_dust(x, y, "jump", 0, 0, 3, 3);
        break;
    case AT_FSTRONG:
        spawn_base_dust(x - 8 * spr_dir, y, "dash_start", 0, 0, 3, 0);
        break;
    case AT_DSTRONG:
        spawn_base_dust(x + 32 * spr_dir, y, "dattack", -spr_dir, 0, 4);
        spawn_base_dust(x - 32 * spr_dir, y, "dattack", spr_dir, 0, 4);
        break;
    case AT_NSPECIAL:
        //this is a little complex so here's a little rundown:
        //we first check the charge windows (windows 2-4), every multiples of 10 on the state timer, if we are not in the delay time and if we hold down special
        //then on the effects we change it so:
        //  - the effect is "bigger" based on charge level
        //  - there's ground and air variations for the dust (ground: walk -> dash -> dash_start | air: nothing -> djump_small -> djump)
        //  - the X offsets (we multiply the air version by 2 - that's what the [!free + 1] is for)

        if (window <= 4 && window > 1 && state_timer % 10 == 0 && nspec_shoot_delay_time <= nspec_shoot_delay_time_max && special_down)
        {
            if (nspec_charge >= 3) spawn_base_dust(x - (16 * spr_dir) * (!free + 1), y, free ? "djump" : "dash_start", 0, 0);
            else if (nspec_charge >= 2) spawn_base_dust(x - (16 * spr_dir) * (!free + 1), y, free ? "djump_small" : "dash", 0, 0);
            else if (nspec_charge >= 1 && !free) spawn_base_dust(x - 32 * spr_dir, y, "walk", 0, 0);
        }
        break;
    //fspec indicator + fspec dusts
    case AT_FSPECIAL:
        spawn_base_dust(x - 16, y - char_height / 2, "djump", 0, (90 + fspec_angle * fspec_aim) * -spr_dir, 6, 0);
        break;
}

if (get_match_setting(SET_RUNES))
{
    //spawns dusts on wall when sliding
    if (has_rune("A")) if (clinging && wall_slide_enabled && state_timer % 6 == 0) spawn_base_dust(x-20*spr_dir, y-char_height/2, "walk", spr_dir, spr_dir ? 270 : 90);
}


if (uses_custom_dusts) custom_dust_effects(); //this function sets up the custom dusts, check below for the full code to see how it works



//written by supersonic, modified by bar-kun
#define spawn_base_dust
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}

//remove dust from existance (not really we are just pushing it off-screen)
#define custom_dust_effects
{
    //original code by FQF (from QUA mario), modified by bar-kun
    with (asset_get("new_dust_fx_obj"))
    {
        //dust_fx <= 24 && dust_fx >= 0 will check the values in the array that are in between 0 and 24
        //other.dust_effect[dust_fx] != 0 will check the array value isn't 0 (which represents the default effect)
        //if we put any other number value it will act as if you have an effect, and remove the default dust
        if (dust_fx <= 24 && dust_fx >= 0 && player == other.player && x != -3000 && other.dust_effect[dust_fx] != 0)
        {
            //all the values of the effect that eventually spawn are based off the original effect
            //this allows us to add our own dusts in the proper placement and such
            var effect = other.dust_effect[dust_fx]; //sets up effect
            var spawn_x = x; //X and Y coordinates for where the effect should spawn
            var spawn_y = y;
            var dust_angle = draw_angle; //allows us to rotate the sprites around
            var dust_depth = dust_depth; //sets the depth of the effect

            //other variable checks you can add yourself:
            //player_id - player object
            //player - player number
            //spr_dir - dust's facing direction
            //dust_length - dust's length
            //dust_color - which shade (from the player's shade slots) should the dust color with
            //init - checks if the dust spawned, false for the first frame
            //step_timer - existance timer, similar to hitbox_timer and the like
            //shader_init - ???
            //fg_index - ???
            //__sync_id - ???

            //spawn new dusts
            with (other)
            {
                //exceptions:
                //  - we can add in exceptions for certain dusts to do various things (example below)
                //  - the numbers go between 0 - 24
                switch (other.dust_fx)
                {
                    case 8: //wall hit bounce - when hitting the celling it should b rotated properly
                        if (hit_player_obj.vsp != 0 && hit_player_obj.free && dust_angle == 0) dust_angle = 180; //celling bounce
                        break;
                }
                
                //spawn effect
                var new_dust_fx = spawn_hit_fx(spawn_x, spawn_y, effect);
                new_dust_fx.draw_angle = dust_angle;
                new_dust_fx.depth = dust_depth;
                new_dust_fx.hsp = other.hsp;
                new_dust_fx.vsp = other.vsp;
            }

            //"remove" dust by moving to a place nobody will see
            x = -3000;
            y = -3000;
            dust_length = 0;
        }
    }

    //K.O stars are kinda funky - they need to be controlled outside of the with statement
    //as we need to make them move down every frame
    with (hit_fx_obj) if (player == other.player) if (hit_fx == other.dust_effect[24]) vsp ++;
}