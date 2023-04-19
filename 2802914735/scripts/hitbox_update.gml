//ayaka awesome
/* //old base code do not look
if attack == AT_FTILT {
    player_id.move_cooldown[attack] = 2;
    proj_angle -= 4;
    if ayaka_axe_timer > 8 {
        hsp -= 1 * spr_dir;
        hsp = clamp(hsp,-12,12);
    }
    y = clamp(y,player_id.y - 35, player_id.y + 10);
    if place_meeting(x,y,player_id) && ayaka_axe_timer > 5 {destroyed = true;}
}
*/
/* // --------------------------------------------------------------------------
TODO LIST

-a


*/ // --------------------------------------------------------------------------



if attack == AT_FTILT {
    player_id.move_cooldown[AT_FTILT] = 2;
    minmin_arms_proj_code_very_awesome();
}

//left axe
if attack == AT_FSPECIAL {
    player_id.move_cooldown[AT_FSPECIAL] = 2;
    minmin_arms_proj_code_very_awesome();
}

if attack == AT_FSPECIAL_RED {
    player_id.move_cooldown[AT_FSPECIAL_RED] = 2;
    belmont_axe();
}

if attack == AT_FSPECIAL_BLUE {
    player_id.move_cooldown[AT_FSPECIAL_BLUE] = 2;
    fireball();
}

if attack == AT_FSPECIAL_GREEN {
    player_id.move_cooldown[AT_FSPECIAL_GREEN] = 2;
    why_are_we_still_here_just_to_suffer_every_night_i_can_feel_my_leg_and_my_arm_even_my_fingers_the_body_ive_lost_the_comrades_ive_lost_wont_stop_hurting_its_like_theyre_all_still_here()
}

//strong
/* fstrong was changed to a regular strong
if attack == AT_FSTRONG {
    player_id.move_cooldown[AT_FSTRONG] = 2;
    minmin_arms_proj_code_very_awesome();
}*/

#define minmin_arms_proj_code_very_awesome()
with(pHitBox) {
    if player != other.player {
        if hit_priority > 0 {
            if (place_meeting(x,y,other) or point_distance(x,y,other.x,other.y) <= 45) && other.ayaka_axe_timer < 20 { //if hit, return to player
                other.ayaka_axe_timer = 20;
                other.axe_got_hit = true;
                other.init_hsp *= 0.6
            }
        }
    }
}
if place_meeting(x,y,asset_get("par_block")) && ayaka_axe_timer < 20 { //if touches the stage, return to player
    ayaka_axe_timer = 20;
}
if ayaka_axe_timer > 6 {
    if ayaka_axe_timer < 14 {
        hsp -= 0.5 * spr_dir;
    }
    if ayaka_axe_timer >= 15 {
        if ayaka_axe_timer <= 20 { //stop at the apex
            hsp = 0;
            vsp = 0;
        } else {
            hsp = init_hsp * spr_dir * -1; //go back fullspeed
            hit_priority = 0; //noooo mooore hitbox vineboom
        }
        //this here is just to make sure that if in case the projectile goes the wrong way and
        //would end up past the player, it instead stops and lets the y position code pulls it to the player
        if spr_dir == 1 && x <= player_id.x or spr_dir == -1 && x >= player_id.x { 
            hsp = 0;
            relative_x = lerp(relative_x,0,0.5);
            x = lerp(x,player_id.x,0.55);
        }
    }
    hsp = clamp(hsp,init_hsp * -1,init_hsp);
}
//print_debug(string(ayaka_axe_timer));
vsp = clamp(vsp,-4,4);
relative_x += hsp;
relative_y += vsp;
anchored_x = player_id.x;
anchored_y = player_id.y - 10;
x = anchored_x + relative_x;
if ayaka_axe_timer > 20 {
    sprite_index = sprite_get("idleaxe")
    proj_angle -= 12 * spr_dir;
}
if ayaka_axe_timer >= 24{
    var increase_pull = ayaka_axe_timer/24;
    y = lerp(y,anchored_y + relative_y,0.15*increase_pull);
    //y = clamp(y,player_id.y - 85, player_id.y + 55);
}
if player_id.window == 4 && player_id.window_timer >= 28 && (player_id.attack == AT_FSPECIAL or player_id.attack == AT_FSTRONG or player_id.attack == AT_FTILT) && (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) {player_id.window_timer = 28;} //keep the player in the attack until full return
if place_meeting(x,y,player_id) && ayaka_axe_timer > 5 {
    if player_id.axes_num < 1 
    {player_id.axes_num += 1;} //readd axe
    else if (player_id.attack == AT_FSPECIAL or player_id.attack == AT_FSTRONG or player_id.attack == AT_FTILT)
    {
    //custom 'endlag/cooldown' should the axes return earlier than the endlag
    var endleft = axe_got_hit ? 55 - player_id.window_timer : 40 - player_id.window_timer;
    player_id.move_cooldown[attack] = endleft;
    if (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) && (player_id.attack != AT_FSTRONG) {player_id.window = 4; player_id.window_timer = 28;} //end the axe throw on return (if there's not another axe out)
    }
    destroyed = true;
}
if player_id.state == PS_RESPAWN or player_id.state == PS_DEAD {
    destroyed = true
}
if player_id.state == PS_WALL_JUMP or ((player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_USPECIAL) {
    ayaka_axe_timer = 26;
}
ayaka_axe_timer += 1;

#define belmont_axe()
//mostly for the return code
with(pHitBox) {
    if player != other.player {
        if hit_priority > 0 {
            if (place_meeting(x,y,other) or point_distance(x,y,other.x,other.y) <= 45) && other.ayaka_axe_timer < 48 { //if hit, return to player
                other.ayaka_axe_timer = 58;
                other.axe_got_hit = true;
                other.init_hsp *= 0.6
            }
        }
    }
}
//small check to make sure that if the player catches the ftilt axe, they don't return to idle
//cause red axe takes longer to come back
if player_id.attack == AT_FTILT && player_id.window_timer >= 28 {
    player_id.attack = AT_FSPECIAL_RED;
    player_id.window = 4;
    player_id.window_timer = 28;
}
if place_meeting(x,y,asset_get("par_block")) && ayaka_axe_timer < 58 { //if touches the stage, return to player
    ayaka_axe_timer = 58;
}
if ayaka_axe_timer > 6 {
    if ayaka_axe_timer >= 58 {
        if ayaka_axe_timer <= 60 { //stop at the apex
            hsp = 0;
            vsp = 0;
            grav = 0;
        } else {
            hsp = init_hsp * 4 * spr_dir * -1; //go back fullspeed
            hit_priority = 0; //noooo mooore hitbox vineboom
        }
        //this here is just to make sure that if in case the projectile goes the wrong way and
        //would end up past the player, it instead stops and lets the y position code pulls it to the player
        if spr_dir == 1 && x <= player_id.x or spr_dir == -1 && x >= player_id.x { 
            hsp = 0;
            x = lerp(x,player_id.x,0.55);
        }
    vsp = clamp(vsp,-6,6);
    }
    hsp = clamp(hsp,init_hsp * -4,init_hsp*4);
}
vsp = clamp(vsp,-13,13);
relative_x += hsp;
relative_y += vsp;
anchored_x = player_id.x;
anchored_y = player_id.y - 10;
//x = relative_x;
if ayaka_axe_timer > 58 {
    sprite_index = sprite_get("idleaxe")
    proj_angle -= 12 * spr_dir;
}
if ayaka_axe_timer >= 60{
    var increase_pull = ayaka_axe_timer/80;
    y = lerp(y,anchored_y,0.15*increase_pull);
    //y = clamp(y,player_id.y - 85, player_id.y + 55);
}
if player_id.window == 4 && player_id.window_timer >= 28 && (player_id.attack == AT_FSPECIAL_RED) && (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) {player_id.window_timer = 28;} //keep the player in the attack until full return
if place_meeting(x,y,player_id) && ayaka_axe_timer > 5 {
    if player_id.axes_num < 1 
    {player_id.axes_num += 1;} //readd axe
    else if (player_id.attack == AT_FSPECIAL_RED)
    {
    //custom 'endlag/cooldown' should the axes return earlier than the endlag
    var endleft = axe_got_hit ? 55 - player_id.window_timer : 40 - player_id.window_timer;
    player_id.move_cooldown[attack] = endleft;
    if (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND){player_id.window = 4; player_id.window_timer = 28;} //end the axe throw on return (if there's not another axe out)
    }
    destroyed = true;
}
if player_id.state == PS_RESPAWN or player_id.state == PS_DEAD {
    destroyed = true
}
if player_id.state == PS_WALL_JUMP or ((player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_USPECIAL) {
    ayaka_axe_timer = 62;
}
ayaka_axe_timer += 1;

#define fireball()
with(pHitBox) {
    if player != other.player {
        if hit_priority > 0 && type != 2  {
            if (place_meeting(x,y,other) or point_distance(x,y,other.x,other.y) <= 45) && other.ayaka_axe_timer < 20 { //if hit, return to player
                other.ayaka_axe_timer = 40;
                other.axe_got_hit = true;
                other.init_hsp *= 0.6
            }
        }
    }
}
//also check here
if player_id.attack == AT_FTILT && player_id.window_timer >= 28 {
    player_id.attack = AT_FSPECIAL_BLUE;
    player_id.window = 4;
    player_id.window_timer = 28;
}

if place_meeting(x,y,asset_get("par_block")) && ayaka_axe_timer < 20 { //if touches the stage, return to player
    ayaka_axe_timer = 40;
}
if ayaka_axe_timer > 6 {
    if ayaka_axe_timer >= 30 && ayaka_axe_timer <= 39 {
        hsp = lerp(hsp,0,0.05);
    }
    if ayaka_axe_timer >= 40 {
        if ayaka_axe_timer <= 46 { //stop at the apex
            hsp = 0;
            vsp = 0;
        } else {
            hsp = init_hsp * 2 * spr_dir * -1; //go back fullspeed
            hit_priority = 0; //noooo mooore hitbox vineboom
        }
        //this here is just to make sure that if in case the projectile goes the wrong way and
        //would end up past the player, it instead stops and lets the y position code pulls it to the player
        if spr_dir == 1 && x <= player_id.x or spr_dir == -1 && x >= player_id.x { 
            hsp = 0;
            x = lerp(x,player_id.x,0.55);
           
        }
    }
    hsp = clamp(hsp,init_hsp * -2,init_hsp * 2);
}
vsp = clamp(vsp,-4,4);
relative_x += hsp;
relative_y += vsp;
anchored_x = player_id.x;
anchored_y = player_id.y - 10;
//x = anchored_x + relative_x;
if ayaka_axe_timer > 46 {
    sprite_index = sprite_get("idleaxe")
    proj_angle -= 12 * spr_dir;
}
if ayaka_axe_timer >= 46{
    var increase_pull = ayaka_axe_timer/80;
    y = lerp(y,anchored_y + relative_y,0.15*increase_pull);
    //y = clamp(y,player_id.y - 85, player_id.y + 55);
}
if player_id.window == 4 && player_id.window_timer >= 28 && (player_id.attack == AT_FSPECIAL_BLUE) && (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) {player_id.window_timer = 28;} //keep the player in the attack until full return
if place_meeting(x,y,player_id) && ayaka_axe_timer > 5 {
    if player_id.axes_num < 1 
    {player_id.axes_num += 1;} //readd axe
    else if (player_id.attack == AT_FSPECIAL_BLUE)
    {
    //custom 'endlag/cooldown' should the axes return earlier than the endlag
    var endleft = axe_got_hit ? 55 - player_id.window_timer : 40 - player_id.window_timer;
    player_id.move_cooldown[attack] = endleft;
    if (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) {player_id.window = 4; player_id.window_timer = 28;} //end the axe throw on return (if there's not another axe out)
    }
    destroyed = true;
}
if player_id.state == PS_RESPAWN or player_id.state == PS_DEAD {
    destroyed = true
}
if player_id.state == PS_WALL_JUMP or ((player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_USPECIAL) {
    ayaka_axe_timer = 48;
}
ayaka_axe_timer += 1;

#define why_are_we_still_here_just_to_suffer_every_night_i_can_feel_my_leg_and_my_arm_even_my_fingers_the_body_ive_lost_the_comrades_ive_lost_wont_stop_hurting_its_like_theyre_all_still_here()
//anwdhbauoiwhgdiawgwijvhd
with(pHitBox) {
    if player != other.player {
        if hit_priority > 0 {
            if (place_meeting(x,y,other) or point_distance(x,y,other.x,other.y) <= 45) && other.ayaka_axe_timer < 20 { //if hit, return to player
                other.ayaka_axe_timer = 22;
                other.axe_got_hit = true;
                other.init_hsp *= 0.6
            }
        }
    }
}

if player_id.attack == AT_FTILT && player_id.window_timer >= 28 {
    player_id.attack = AT_FSPECIAL_GREEN;
    player_id.window = 4;
    player_id.window_timer = 28;
}

if place_meeting(x,y,asset_get("par_block")) && ayaka_axe_timer < 20 { //if touches the stage, return to player
    ayaka_axe_timer = 22;
}
if ayaka_axe_timer > 6 {
    if ayaka_axe_timer >= 8 {
        if window_timer == 8 {
            hsp += 2*spr_dir;
        }
        if ayaka_axe_timer <= 22 { //stop at the apex
            hsp = lerp(hsp,-8*spr_dir,0.15);
            vsp = -7;
        } else {
            vsp = lerp(vsp,0,0.5);
            hsp = init_hsp * spr_dir * -1; //go back fullspeed
            hit_priority = 0; //noooo mooore hitbox vineboom
        }
        //this here is just to make sure that if in case the projectile goes the wrong way and
        //would end up past the player, it instead stops and lets the y position code pulls it to the player
        if spr_dir == 1 && x <= player_id.x or spr_dir == -1 && x >= player_id.x { 
            hsp = 0;
            relative_x = lerp(relative_x,0,0.5);
            x = lerp(x,player_id.x,0.55);
        }
    }
    hsp = clamp(hsp,init_hsp * -1,init_hsp);
}
//vsp = clamp(vsp,-4,4);
relative_x += hsp;
//relative_y += vsp;
anchored_x = player_id.x;
anchored_y = player_id.y - 10;
x = anchored_x + relative_x;
if ayaka_axe_timer > 22 {
    sprite_index = sprite_get("idleaxe")
    proj_angle -= 12 * spr_dir;
}
if ayaka_axe_timer >= 22{
    var increase_pull = ayaka_axe_timer/40;
    y = lerp(y,anchored_y + relative_y,0.15*increase_pull);
    //y = clamp(y,player_id.y - 85, player_id.y + 55);
}
if player_id.window == 4 && player_id.window_timer >= 28 && (player_id.attack == AT_FSPECIAL_GREEN) && (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) {player_id.window_timer = 28;} //keep the player in the attack until full return
if place_meeting(x,y,player_id) && ayaka_axe_timer > 5 {
    if player_id.axes_num < 1 
    {player_id.axes_num += 1;} //readd axe
    else if (player_id.attack == AT_FSPECIAL_GREEN)
    {
    //custom 'endlag/cooldown' should the axes return earlier than the endlag
    var endleft = axe_got_hit ? 55 - player_id.window_timer : 40 - player_id.window_timer;
    player_id.move_cooldown[attack] = endleft;
    if (player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND){player_id.window = 4; player_id.window_timer = 28;} //end the axe throw on return (if there's not another axe out)
    }
    destroyed = true;
}
if player_id.state == PS_RESPAWN or player_id.state == PS_DEAD {
    destroyed = true
}
if player_id.state == PS_WALL_JUMP or ((player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_USPECIAL) {
    ayaka_axe_timer = 24;
}
ayaka_axe_timer += 1;
