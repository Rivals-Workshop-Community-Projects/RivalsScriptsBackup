#region scarf code
scarf_angle = (arctan2(vsp,-hsp)*180/3.14)-(spr_dir? 180 : 0);
scarf_timer = (ceil(clamp((abs(hsp)+abs(vsp)),0,5)));
scarf_x = x;
scarf_y = y-40;
scarf_off = false;
scarf_front = false;

if(hsp == 0 && vsp == 0)
{
    scarf_angle = floor(scarf_angle/1.1)-(!spr_dir? 180 : -20) + (-15 + random_func(5, 30, true));
    scarf_x -= (random_func(5, 30, true))*spr_dir;
    scarf_y += (-5 + random_func(5, 10, true));
}

switch(state)
{
    case PS_CROUCH:
        scarf_y = y-20;
        break;
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
        scarf_x = x-(state_timer < 4 ? 20 : 10)*spr_dir
        scarf_y = y-20;
        scarf_timer = 5;
        scarf_angle = state_timer*(10*spr_dir);
        break;
    case PS_PRATFALL:
        scarf_front = true;
        break;
    case PS_SPAWN:
    case PS_RESPAWN:
        scarf_off = true;
        break;
}

//Victory Portrait. or if killed with a strong move.
if(attack == AT_TAUNT || last_attack_hit == AT_FSPECIAL || last_attack_hit == AT_USPECIAL)
    set_victory_portrait(sprite_get("portrait_install"));
else
    set_victory_portrait(sprite_get("portrait"));

if(last_hit_timer != 0)
    last_hit_timer --;
else
    last_attack_hit = 0;

//Attack Scarf
if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    switch(attack)
    {
        case AT_JAB:
            if(window == 2)
                scarf_x = x+10*spr_dir;
            if(window == 4)
                {scarf_timer =  5; scarf_x = x+20*spr_dir; scarf_front = true;}
            if(window == 5)
                {scarf_timer =  5; scarf_x = x+25*spr_dir; scarf_angle = 0-(!spr_dir? 180 : 0); scarf_front = true;}
            if(window == 8)
                scarf_x = x-15*spr_dir;
            break;
        case AT_UTILT:
            scarf_x = x+2*spr_dir;
            break;
        case AT_DTILT:
        case AT_DATTACK:
            scarf_timer = (attack == AT_DATTACK ? 5 : 0);
            if(attack == AT_DTILT) {scarf_x = x-15*spr_dir; scarf_angle = 45-(!spr_dir? 180 : 0); }
            scarf_y = y-40+(attack == AT_DATTACK ? (clamp(state_timer*2,0,20)) : 20);
            break;
        case AT_DAIR:
            scarf_x = x-(10*spr_dir);
            break;
        case AT_BAIR:
            if(window == 2 || window == 3 || window == 4)
            { scarf_front = true; scarf_x = x-5*spr_dir; scarf_y -= 5;}
            break;
        case AT_UAIR:
            if(window == 1)
            { scarf_x = x-15*spr_dir; scarf_y = y-30;}
            if(window == 2 || window == 4)
            { scarf_x = x-25*spr_dir; scarf_y = y-20;}
            if(window == 3)
            { scarf_x = x-15*spr_dir; scarf_y = y-30;}
            break;
        case AT_FAIR:
            scarf_timer = 4;
            if(window == 2)
            { scarf_x = x-25*spr_dir; scarf_y = y-20; }
            break;
        case AT_DSTRONG:
            if(window == 3)
            {
                scarf_y = y-30;
                
                if(window_timer < 5)
                    scarf_x = x+15*spr_dir;
                else
                    scarf_x = x-25*spr_dir;
            }
            else
                scarf_y = y-40;
            break;
        case AT_FSTRONG:
            if(window <= 2)
            {scarf_x = x+18*spr_dir; scarf_front = true;}
            break;
        case AT_USTRONG:
            if(window == 2 || window == 3)
            {scarf_x = x-4*spr_dir;scarf_front = true;}
            break;
        case AT_FSPECIAL:
            if(window == 3)
                scarf_y = y-28;
        case AT_USPECIAL:
            if(window == 2)
                scarf_off = true;
            break;
    }
}

old_scarf_x = floor((scarf_x+old_scarf_x)/2);
old_scarf_y = floor((scarf_y+old_scarf_y)/2);

if(get_gameplay_time() % (8-scarf_timer) == 0 && !scarf_off)
{
    fx = spawn_hit_fx(old_scarf_x+4*spr_dir,old_scarf_y,scarf_fire);
    fx.draw_angle = scarf_angle;
    if(scarf_front) fx.depth = depth-1;
}
#endregion

with(hit_fx_obj)
{
    if(player == other.player && (hit_fx == other.laserhit_fx || hit_fx == other.stronglaser_fx))
    {
        if(!variable_instance_exists(id,"soundplayed"))
        {
            soundplayed = true;
            sound_play(asset_get("sfx_clairen_tip_strong"));
        }
        depth = other.depth-1;
    }
}

if(bullets < 1)
{
    if(special_pressed && !up_down && !attack_pressed  && outline_timer == 0 && state != PS_ATTACK_AIR  && state != PS_ATTACK_GROUND)
    {
        if(bullets != 0 && down_down || bullets == 0)
        {
            clear_button_buffer(PC_SPECIAL_PRESSED);
            sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.5);
            outline_timer = 20;
        }
    }
    move_cooldown[AT_DSPECIAL] = 2;
    move_cooldown[AT_NSPECIAL] = 2;
}

if(outline_timer != 0)
{
    outline_timer --;
    if(outline_timer > 1)
        outline_color = [100,0,0];
    else
        outline_color = [0,0,0];
    init_shader();
}

if(fspec_used)
    move_cooldown[AT_FSPECIAL] = 2;

if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
    spr_angle = 0;
    reset_attack_value(AT_USPECIAL, AG_CATEGORY);
    reset_attack_value(AT_NSPECIAL, AG_CATEGORY);
}
if(state_cat = SC_HITSTUN || state == PS_WALL_JUMP || !free)
{
    fspec_used = false;
    uspec_used = 0;
}

#region Buddy compatibilities
//Tutorial Buddy
if(variable_instance_exists(id,"bTut_mssn_mode") && bTut_mssn_mode) //Checks if mission mode is on!
{
    switch(bTut_mssn) //checks what mission youre on
    {
        case 0:
            with(oPlayer) { bTut_mssn_cmbo = (!other.bTut_mssn_finish ? true : false); } //If just showing off mechanics put this!

            bTut_mssn_cmbo_moves[0] = "Dash Attack";
            bTut_mssn_cmbo_moves[1] = "U-Tilt";
            bTut_mssn_cmbo_moves[2] = "U-Air";
            bTut_mssn_cmbo_moves[3] = "> U-Air (Gun Rekka)";
            
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
                case 0:	
                        with(oPlayer) {if(id != other.id && state == PS_IDLE) set_player_damage(player,20);}
                        if(attack == AT_DATTACK && hitpause) missionNext(); break;
                case 1:	if(attack == AT_UTILT && hitpause) missionNext(); break;
                case 2:	if(attack == AT_UAIR && window == 2 && hitpause) missionNext(); break;
                case 3:	if(attack == AT_UAIR && window == 4 && hitpause ) missionNext();break;
            }
            break;
        
        case 1:
            with(oPlayer) { bTut_mssn_cmbo = (!other.bTut_mssn_finish ? true : false); } //Add this function if its a combo!
            bTut_mssn_cmbo_moves[0] = "D-Special";
            bTut_mssn_cmbo_moves[1] = "N-Air";
            bTut_mssn_cmbo_moves[2] = "Jab (Gun Shot)";
            bTut_mssn_cmbo_moves[3] = "U-Strong";
            
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
                case 0: 
                    if(state != PS_ATTACK_GROUND)
                        bullets = 6;
                    hud_enhanced = 5;
                    if(attack == AT_DSPECIAL && window == 3) missionNext(); break;
                case 1:	
                    if(attack == AT_NAIR && hitpause) { missionNext(); } 
                    break;  
                case 2:	
                    if(attack == AT_JAB && window == 8 && hitpause) { missionNext(); } 
                    break;  
                case 3:	
                    if(attack == AT_USTRONG && window == 3 && hitpause) { missionNext(); } 
                    break;  
            }
            break;

        case 2:
            with(oPlayer) { bTut_mssn_cmbo = (!other.bTut_mssn_finish ? true : false); } //Add this function if its a combo!
            bTut_mssn_cmbo_moves[0] = "U-Special (Angled towards the ground)";
            bTut_mssn_cmbo_moves[1] = "U-Tilt";
            bTut_mssn_cmbo_moves[2] = "U-Special";
            bTut_mssn_cmbo_moves[3] = "F-Air";
            
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
                case 0: with(oPlayer) {if(id != other.id && state == PS_IDLE) set_player_damage(player,30);}
                    if(attack == AT_USPECIAL && hitpause) missionNext(); break;
                case 1:	if(attack == AT_UTILT && hitpause) missionNext(); break;
                case 2:	if(attack == AT_USPECIAL && hitpause) missionNext(); break;  
                case 3:	if(attack == AT_FAIR && hitpause) missionNext(); break;  
            }
            break;

        case 3:
            with(oPlayer) { bTut_mssn_cmbo = (!other.bTut_mssn_finish ? true : false); } //Add this function if its a combo!
            bTut_mssn_cmbo_moves[0] = "D-Special";
            bTut_mssn_cmbo_moves[1] = "> Load Fully";
            bTut_mssn_cmbo_moves[2] = "D-Air";
            bTut_mssn_cmbo_moves[3] = "U-Strong";
            bTut_mssn_cmbo_moves[4] = "Sweetspot F-Special";
            
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
                case 0: with(oPlayer) {if(id != other.id && state == PS_IDLE) set_player_damage(player,50);}
                     if(state != PS_ATTACK_GROUND) bullets = 6; hud_enhanced = 5;
                    if(attack == AT_DSPECIAL && window == 3) missionNext(); break;
                case 1:	with(obj_article1){if(player == other.player) if(bullets_held == 3) other.missionNext();} break;  
                case 2:	if(attack == AT_DAIR && hitpause) missionNext(); break;  
                case 3:	if(attack == AT_USTRONG && window == 3 && hitpause) missionNext(); break;  
                case 4:	
                    with(asset_get("pHitBox")) 
                        if(attack == AT_FSPECIAL && hbox_num == 2 && has_hit)
                            other.missionNext(); 
                    break;
            }
            break;
    }
}

//Dialogue Buudy
if(variable_instance_exists(id,"diag"))
{
    //No one special
    diagchoice = [
    "No, I don't care. I got a job to do.",
    "This is the greatest handgun ever made, with six shots, enough to take anyone down.",
    "Has the past come to haunt me? How funny.",
    "Never should've come back here, the past is disgusting.",
    "Have you seen anyone that looks like me, come by here? I have questions."]

    //Regular dialogue
    if((otherUrl == "2160036641" || otherUrl == "2005036466") && diag != "") //Penny
        diag = "Colonel, I found another soldier that broke the time code. Should I bring her in?";

    if((otherUrl == "2396817161" || otherUrl == "2561479115") && diag != "") //Klockwurth & Rokesha
        diag = "Oh great, another Loxodont agent to take me down?";
        
    if((otherUrl == "2249417003" || otherUrl == "2085832560" || otherUrl == "1965632965"
        || otherUrl == "2407716024" || otherUrl == "2144710708" || otherUrl == "2066970512") && diag != "") //Characters with a gun.
        diag = "Armed hostile detected. I'm gonna need you to put your arms up before you hurt anyone.";
    
    //NRS/3-Part dialogue
    if(otherUrl == url)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "So they've sent the other clones to stop me. How convenient.",
                "I need you to come with your hands up, you need to let the past go.",
                "You well know that I can't do that. I need to save her from this."]
            }
        }
    }
    if(otherUrl == "2235244825") //Ducky
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.otherPlayer; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Hey! Stop right there, yknow if youre gonna pretend to be me, you ditch the bodysuit.",
                "Ducky! I need to speak with you. You're not safe here.",
                "Threatening me with a fight? Well you should've just said so."]
            }
        }
    }
    if(otherUrl == "2365597658") //Kyort
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "I'm gonna need to tell you to get away from Ducky.",
                "What do you mean get away? She's gone and I woke up being wrapped in webs.",
                "Looks like Im too late to save her, then your job is done and I need you out of the picture."]
            }
        }
    }
    if(otherUrl == "2534202008") //Kinunosu
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "You. Where is. Ducky.",
                "Wouldn't you want to know, it looks like you grew up to be a good soldier to come here and stop us.",
                "You're sick, all of this trouble to line your pockets? You know how many died because of you?"]
            }
        }
    }
    if(otherUrl == "2260948101") //Apple
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.otherPlayer; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Woah! Are you a gunslinging Duck?",
                "Um, I need you to get out of the way, kid. I don't need anymore casualties.",
                "Ooooo, I've never seen this model of a revolver before, did you come from the future?"]
            }
        }
    }
}

#define missionNext() //This lets the buddy know that you are going to the next part of the mission.
{
    if(!bTut_mssn_reset) //Prevents you from completing multiple tasks at the same time!
    {
        bTut_mssn_part++; 
        sound_play(asset_get("mfx_coin"));
        if(array_length(bTut_mssn_cmbo_moves) <= bTut_mssn_part)
            bTut_mssn_finish = true;
    }
}

#endregion