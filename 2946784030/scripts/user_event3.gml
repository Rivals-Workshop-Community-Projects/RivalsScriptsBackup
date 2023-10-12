//Dialogue Buddy

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Wario"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Have a rotten day!",
    "Wario, I've gotta win!",
    "Yeah, let's-a go!",
    "Rock and roll!",
    "I'm-a, Wario! I'm-a gonna win!"]

//  Specific Character Interactions

//  Regular dialogue

    //Peppino
    if(otherUrl == "2904498757" && diag != "")
    {
        diag = "'Ey, I know you! Quit rippin' off-a my gameses or I'm-a gonna put you through the floor!!";
        diag_index = 0;
    }
    
    //Marios!!
    
    if(otherUrl == "2945062156" //Regina Mario
    || otherUrl == "2944680077" //Mit Mario
    || otherUrl == "2311095319" //ricE Mario
    && diag != "")
    {
        diag = "Wah- AARGH!! YOU'RE-A HERE TOO?! Ohhh, why you...!!";
        diag_index = 0;
    }
    
    //64 Mario
    if(otherUrl == "2310580951" && diag != "")
    {
        diag = "Arrgh, you again?! ...Hey, what's with the blocky look?";
        diag_index = 0;
    }
    
    //Gangsta Mario
    if(otherUrl == "2628100904" && diag != "")
    {
        diag = "Arrgh, you again?! ...*sniff*... Is that weed? MARIO!! You's-a better than this!";
        diag_index = 0;
    }
    
    //Regina Luigi
    if(otherUrl == "2945067212" && diag != "")
    {
        diag = "Hey guys, look! It's-a the lean, green LOSER machine! Waa hahaha!!";
        diag_index = 0;
    }
    
    //Regina Waluigi
    if(otherUrl == "2946246328" && diag != "")
    {
        diag = "Woah, hey chump! How's it feel to finally be in a platform fighter?";
        diag_index = 0;
    }
    
    //Pac-Man
    if(otherUrl == "2944933385" && diag != "")
    {
        diag = "";
        diag_index = 0;
    }
    
    //Base
    if(otherUrl == "" && diag != "")
    {
        diag = "";
        diag_index = 0;
    }
    
    //Base
    if(otherUrl == "" && diag != "")
    {
        diag = "";
        diag_index = 0;
    }
    
//  NRS/3-Part dialogue
    if(otherUrl == url) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Hey, I know you! I will beat you up!",
                "So you left us for someone else, and now you've come back to beat us up?",
                "I-I had to do what was best for all of us, I wished you weren't dragged into this."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
}
