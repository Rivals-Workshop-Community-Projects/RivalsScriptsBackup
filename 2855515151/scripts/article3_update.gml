var should_destroy;
should_destroy = false;

//image_index += anim_speeds[player_id.exec_item_state];
life++;
if(life>=lifetime){
    should_destroy = true;
}
executeItemAction(player_id.exec_item_state,player_id.exec_item);
//KEEP THIS AT THE BOTTOM OF THE FILE

if should_destroy instance_destroy();
#define executeItemAction(_state, _item)
var anim_speeds = [0.2, 0.3];

//DO SOMETHING BASED ON ITEM ---- EDIT THESE CASES!
switch (_state)
{
    case 0:
        switch (_item)
        {
        	//ROGER (my beloved)
        	case 0:
        	
        	hsp*=(1-air_friction);

        	if(life == lifetime-36){
        	    roger_state = 9;
        	    anim_time = 0;
        	}
        	player_id.move_cooldown[AT_DSPECIAL] = 2;
        	mask_index = sprite_get("roger_hurt")
        	
        	switch(roger_state)
        	{
                case 0: //spawn
                    sprite_index = sprite_get("roger");
                    if (anim_time == 1)
                    vsp = -7 //intial vsp when spawning
                    if (anim_time mod 6 == 0)
                    {
                        image_index++ 
                    }
                    if (image_index > 5) 
                    {
                        roger_state = 1; 
                        anim_time = 0;
                        //once spawn animation finishes, state is changed to move state
                    }
                    break;
                case 1: //move
                    hit_detection();
                    if(hit_player_obj != player_id and hit_player_obj != noone){
                        roger_state = 9;
                        anim_time = 0;
                        return;
                    }
                    if(!hitpause){
                        //timer++;
                        if (anim_time mod 5 == 0)
                        {
                            image_index++
                            if (image_index > 14)
                            {
                                image_index = 6;
                            }
                        }
                        with (oPlayer)
                        {
                            if (other.player_id == id and collision_circle(other.x, other.y, 60, asset_get("oPlayer"), false, true)) 
                            {
                                other.roger_state = 2;
                                other.anim_time = 0;
                                other.image_index = 16;
                                //if enemy player is at a certain range near roger, state whiches to attack state
                            }
                        }
                        if (player_id.special_pressed && player_id.down_down)
                        {
                            roger_state = 2;
                            anim_time = 0;
                            image_index = 16;
                            sound_play(asset_get("sfx_may_arc_cointoss"));
                        }
                        /*if (timer > 300)
                        {
                            roger_state = 9;
                            anim_time = 0;
                            //if lifetime runs out, state switches to death state.
                        }*/ //Commented out code that kills Roger when inactive
                    }
                    break;
                case 2: //attack
                    //hit_detection();
                    if (hit_player_obj != player_id and hit_player_obj != noone){
                        sound_stop(sound_get("roger_attack"));
                        roger_state = 9;
                        anim_time = 0;
                        return;
                    }
                    if (anim_time mod 4 == 0)
                    {
                        image_index++
                        if (image_index > 33)
                        {
                            roger_state = 9;
                            anim_time = 0;
                            //once attack is finished, state switches to death state
                        }
                        if (image_index == 22)
                        {
                            hitbox = create_article_hitbox(AT_DSPECIAL_2, 1, x, y - 10);
                        }
                    }
                    if (image_index == 16 and anim_time mod 4 == 3)
                    {
                        sound_play(sound_get("roger_attack"));
                    }
                    break;
                case 9: //death
                    if (anim_time == 1)
                    {
                        sound_play(sound_get("roger_death"));
                    }
                    if (image_index < 34)
                    {
                        image_index = 34;
                    }
                    if (anim_time mod 6 == 0)
                    {
                        image_index++
                        if (image_index > 40)
                        {
                            instance_destroy();
                            exit;
                        }
                    }
                    break;
        	}
        	vsp *= 0.93 //friction
        	anim_time++;
        	break;

            //budbe
            case 1:
                ignores_walls = false;
        	    if (life == 1)
                {
                    birdAngle = 90;
        	        anim_time = 0;
                    lifetime = 160;
        	    }
                if (hsp != 0) spr_dir = sign(hsp);
                var newAngle = player_id.joy_pad_idle?(spr_dir==1?0:180):player_id.joy_dir;
                if (abs(newAngle-birdAngle) > 180) newAngle -= 360*sign(newAngle-birdAngle);
                birdAngle = lerp(birdAngle, newAngle, player_id.joy_pad_idle?0.05:0.2);
                hsp = lengthdir_x(6,birdAngle);
                vsp = lengthdir_y(6,birdAngle);
                image_index += 0.2;
        	    player_id.move_cooldown[AT_DSPECIAL] = 2;
                if (life<lifetime)
                {
                    var boom = false;
                    if (player_id.special_pressed && player_id.down_down) boom = true;
                    else with (oPlayer) if (other.player_id != id && point_distance(other.x, other.y, x, y-char_height) < 40)
                    {
                        boom = true;
                        break;
                    }
                    if (boom) life = lifetime;
                }
                if (life==lifetime)
                {
                    var owo = spawn_hit_fx(x, y, player_id.budbeexplode);
                    owo.spr_dir = spr_dir;
                    should_destroy = true;
                    for (var i = 0; i < 4; ++i)
                    {
                        var owo = create_article_hitbox(AT_DSPECIAL_2, 4, x, y);
                        owo.spr_dir = random_func(i*4, 2, 1)?1:-1;
                        owo.temphsp = random_func(i*4+1, 1, 0)+1;
                        owo.offsetTimer = random_func(i*4+2, 300, 1);
                        owo.vsp = -random_func(i*4+3, 2, 0);
                    }
                }
        	    ++anim_time;
                break;
        }    
    case 1:
        // whats state 1 for?????????
        break;
}

//image_index += anim_speeds[_state]

//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
sound_play(hbox.sound_effect);
spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y,hbox.hit_effect);
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.

if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;

        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
}

if(hit_player_obj == player_id and hbox.attack != AT_NSPECIAL){
    dazz_hit_player_replication(hbox);
}

// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);

hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);
            
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        //&& !(player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 return;
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);


#define dazz_hit_player_replication (cur_hitbox)

switch cur_hitbox.attack
{
	case AT_JAB:
		if cur_hitbox.hbox_num == 4 hit_jab3 = true;
		//gamefeel juice
		if cur_hitbox.hbox_num != 2 {
			sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
			sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		}
	break;
	case AT_DAIR:
		var hb, vsp_to_apply;
		hb = cur_hitbox.hbox_num == 4;
		vsp_to_apply = floor(min((player_id.old_vsp - (!player_id.fast_falling)*(sign(player_id.vsp) == 0 ? -1 : sign(player_id.vsp)) )*!hb - ((6 + (min(20/30,6)))*hb), 0));
		player_id.old_vsp = vsp_to_apply;

			hit_player_obj.x = lerp(hit_player_obj.x, x, 0.05)
			hit_player_obj.y = lerp(hit_player_obj.y, y+10, 0.08)

	break;
	
	case AT_DATTACK:
		if  cur_hitbox.hbox_num != 2
		{
			hit_player_obj.x = lerp(hit_player_obj.x, x + ((100 + (40*(cur_hitbox.hbox_num - (cur_hitbox.hbox_num > 2))))*spr_dir), 0.2)
			hit_player_obj.y = lerp(hit_player_obj.y, y-6, 0.15 + (.2*cur_hitbox.hbox_num == 1))			
		}
	break;
	case AT_UAIR:
	case AT_EXTRA_2:
		if (other.y <= y)
		{
			player_id.old_vsp -=2
		}
	case AT_NAIR:

			switch cur_hitbox.hbox_num
			{
				case 1:
					hit_player_obj.x = lerp(hit_player_obj.x, x + (40*spr_dir), 0.15)
				break;
				case 2:
					player_id.old_vsp -= 3
				break;
			}
			//hit_player_obj.y = lerp(hit_player_obj.y, y-6, 0.15)			

		//gamefeel juice
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
	break;
	
	// // strongs code both for gamefeel and functionality
	case AT_FSTRONG:
		//clyde bite
		if cur_hitbox.orig_player == player {
			if cur_hitbox.hbox_num == 1 {
				sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.85,1.35)
				if (hit_player_obj.state == PS_HITSTUN) or (hit_player_obj.state == PS_HITSTUN_LAND) {
					//pseudo-command grab code to make sure that even when clyde goes fast, the opponent doesn't fall out
					hit_player_obj.x = lerp(hit_player_obj.x,cur_hitbox.x + 15 * cur_hitbox.spr_dir,(1*strong_charge/110))
					hit_player_obj.y = lerp(hit_player_obj.y,cur_hitbox.y + 20,(1*strong_charge/100))
				}
			}
			if cur_hitbox.hbox_num == 2 {
				sound_play(asset_get("sfx_forsburn_reappear_hit"),false,0,0.65,1.65)
				sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.9,1.35)
			}
		}
		break;
		
	case AT_DSTRONG:

		if cur_hitbox.hbox_num == 2 {
			sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, .8)
			sound_play(asset_get("sfx_forsburn_reappear_hit"),false,0,0.65,0.85)
			sound_play(asset_get("sfx_kragg_rock_pillar"),false,0,0.45,1.85)
			shake_camera(6, 12);
		} else {
			sound_play(asset_get("sfx_blow_heavy2"), false, noone, .6, 1)
		}
		break;
		
	case AT_USTRONG:
		sound_play(asset_get("sfx_ori_charged_flame_hit"),false,0,0.85,0.85)
		//sound_play(asset_get("sfx_zetter_fireball_fire"),false,0,0.35,1.65)
		break;
	
	//other normals gamefeel code
	case AT_FTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_UTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_DTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_BAIR:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.55,1.65)
		break;
	case AT_UAIR:
	case AT_EXTRA_2: //hatless uair
		if cur_hitbox.hbox_num != 4 {
			sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
			sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		}
		break;
	case AT_DSPECIAL_2:
		if cur_hitbox.hbox_num == 3
		{
			cur_hitbox.otto_hitpause = 1;
			sound_play(asset_get("sfx_absa_kickhit"));
			sound_play(asset_get("sfx_absa_concentrate"));
		}
		break;
	case AT_NSPECIAL:
		if(cur_hitbox.hbox_num == 2){
			spawn_hit_fx(x+58*spr_dir, y-30, 253)
			player_id.old_hsp = -spr_dir*10
			shake_camera(8, 12);
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.9,.8)
			sound_play(asset_get("sfx_blow_heavy2"),false,0,0.9,1.35)
		}
		break;
}