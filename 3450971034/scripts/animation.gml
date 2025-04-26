//animation.gml

//fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

// Anim fix for footstool attack
if (force_crouch && state != PS_ATTACK_GROUND) {
	force_crouch = false;
	if (state == PS_CROUCH) {
	    state_timer = 10;
	    image_index = 3;
	    hurtboxID.sprite_index = crouchbox_spr;
	}
}

// Force-reset properties if DSpec is interrupted
if ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_DSPECIAL && attack != AT_USPECIAL)) {
	draw_x = 0;
	draw_y = 0;
	spr_angle = 0;
	hurtboxID.image_angle = spr_angle;
} 

switch (state)
{
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding
		if (!free && image_index == 0) {
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
		switch (attack) {
			case AT_USPECIAL:
				draw_x = -lengthdir_y(14, spr_angle);
				draw_y = lengthdir_x(14, spr_angle)-14;
				hurtboxID.image_angle = spr_angle;
				break;
			case AT_DSPECIAL: // Based on code written by VForce. Used with permission.
				draw_x = -lengthdir_y(14, spr_angle);
				draw_y = lengthdir_x(14, spr_angle)-14;
				hurtboxID.image_angle = spr_angle;
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
		if (free)
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			sprite_index = sprite_get("hurt_tumble");
			image_index = state_timer * 0.1;
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
	else
	{
		if (crystal_stun_resize) small_sprites = 0;
	}

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}




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