/* 
TO IMPLEMENT COMPATABILITY TO YOUR CHARACTER
---------------------------------------------
Dialogue Buddy is a really easy buddy to work with, all you have to do is write text! Look below to see how to add it!

INIT.GML
--------------------------------
diag_portrait=sprite_get(""); // This will allow you to put any custom portrait onto the dialogue buddy!

UPDATE.GML
--------------------------------

if(variable_instance_exists(id,"diag"))
{
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "Dialogue Choice 1",
    "Dialogue Choice 2",
    "Dialogue Choice 3"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "" && diag != "") //Change the url into a specific character's
    {
        diag = "Hey, I know you! I will beat you up.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
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

Thats all you have to do! Have fun and cant wait to see what funny interactions will come of it!
If you need more examples, feel free to check post_draw.gml! 
