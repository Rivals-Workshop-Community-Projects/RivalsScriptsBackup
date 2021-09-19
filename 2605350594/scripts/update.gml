if(fspec_used && !jet_charge)
    move_cooldown[AT_FSPECIAL] = 2;

if(state_cat == SC_HITSTUN || state == PS_WALL_JUMP || !free)
    fspec_used = false;
    
if(state == PS_RESPAWN)
    jet_charge = false;

if(jet_charge)
{
    if(jet_timer > 90)
    {
        spawn_hit_fx(x,y-40,3)
        white_flash_timer = 8;
        jet_timer = 0;
    }
    else
        jet_timer ++;
}


#region Dialogue Buddy
if(variable_instance_exists(id,"diag"))
{
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Think you can keep up?",
    "Yea, yea.. I get it, you want to fight.",
    "Do you want me to go easy?"]

//  Specific Character Interactions
    if(otherUrl == url) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Hmmph. I guess I must've left a good impressions if people are following my path.",
                "Don't make me laugh, I'm the real deal.",
                "Well, there's only one way to find that out."]
            }
        }
    }
    if(otherUrl == "1891309722") //Yoyo
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.otherPlayer; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                if(get_player_color(other.player) == 3)
                {
                    other.diag_name = "One";
                    diag_nrs_diag = [
                    "Big bro! You worried me so much. I still have that yoyo you gave me.",
                    "I'm so glad to know you're safe. I never thought I'd see you again.",
                    "Well, as we promised to each other. Show me what you got!"]
                }
                else
                    diag_nrs_diag = [
                    "Al...Alfa? I thought you were gone...",
                    "Nah. Well someone has to show these kids how it's done.",
                    "I'm glad to have you back.."]
            }
        }
    }
    if(otherUrl == "1960200333") //Fry
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Now who could you be? A newcomer to the Dojo?",
                "A past chef, looking to be the next best Duelist.",
                "Duelist? Well, let's see if you can keep up with the heat, fry cook."]
            }
        }
    }
    if(otherUrl == "2496614768") //Mr.Shock
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.otherPlayer; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Ah. Another past relic of history.",
                "Are you looking a job? Don't think we need a janitor here.",
                "Funny, you really do remind me of Terkoiz."]
            }
        }
    }
}
#endregion