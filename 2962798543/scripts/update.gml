if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_DEAD || state == PS_RESPAWN) {
    move_cooldown[AT_FSPECIAL] = 0;
}

// if (state == PS_DASH && (state_timer % 10 == 0 or state_timer == 1))  {
//     sound_stop(dash_sound)

//     dash_sound = sound_play(sound_get("dash_sound"),false,noone,1, 1 + random_func(1,30,true)/100)
// }

if(state == PS_DASH && dashing == noone && !hitpause){
    dashing = sound_play(asset_get("sfx_kragg_roll_loop"), true);
} else if(state != PS_DASH && dashing != noone){
    sound_stop(dashing);
    dashing = noone;
}

//intro anim
if (introTimer2 < 5) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 14) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

if(instance_exists(fireball)){
    move_cooldown[AT_NSPECIAL] = 20;

}


if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    if (attack == AT_USTRONG) {
        if(window == 3) soft_armor = 14;
        else soft_armor = 0;
    }
}


with(oPlayer){
    if(!clone && self != other){
        if(bowser_dattack_grabbed_id == other){
        // 	x = ease_quadIn(floor(other.x + 60 * other.spr_dir), floor(bowser_dattack_grabbed_x), floor(hitstop), floor(hitstop_full));
        	y = ease_quadIn(floor(other.y - 10), floor(bowser_dattack_grabbed_y), floor(hitstop), floor(hitstop_full));
            var _xx = other.x+60*other.spr_dir;
            var _yy = other.y-10;
            var hsped = lengthdir_x(point_distance(x,y,_xx,_yy)/8,point_direction(x,y,_xx,_yy));
    // 		var vsped = lengthdir_y(point_distance(x,y,_xx,_yy)/8,point_direction(x,y,_xx,_yy));
    		x += hsped;
    // 		y += vsped;
        }
        if(hit_player_obj != other || !hitpause || (other.state != PS_ATTACK_GROUND && other.state != PS_ATTACK_AIR) || state_cat != SC_HITSTUN){
            if(bowser_dattack_grabbed_id == other){
                 bowser_dattack_grabbed_id = noone;
            }
        }
    }
}



//rainbow
if(get_player_color(player) == 18){
    init_shader();
}


howzitisthebestshopowner123 = true //activates the compatibility
howzittaunttextarr = 0 and howzitautoforward = 0

howzittaunttextarr[0] = "Sir, for the last time, we don't
carry shell wax." //These are the texts. Test these in game to make sure they don't clip out of the text box.
howzitautoforward[0] = 0 //This needs to have the same array count as the one above. setting this to zero means the text will wait for you to press taunt again to continue, while setting it to any number will have it wait that number of frames before automatically continuing. Typically good to set this to a variable if your last message was cut off mid sentence.
howzittaunttextarr[1] = "If we could just"
howzitautoforward[1] = 0 
howzittaunttextarr[2] = "I'm not sure I carry 
Star Power."
howzitautoforward[2] = 0
howzittaunttextarr[3] = "Howzabout a Mushroom 
Shake instead?"
howzitautoforward[3] = 0
howzithasnotso = false;

//dialogue buddy

diagchoice = [
    "Out of the way, loser.",
    "You're gonna step to the Koopa king?",
    "GWAHAHA, you want to fight me?"]
    
if "otherUrl" in self {
if(otherUrl == 2802388684) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Hey, pajama boy! You see a princess come this way?",
                "Why, did you lose one? With a face like that, I can't blame her.",
                "WHAT?! Your gonna be an orange stain when I'm done with you."]
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
    
    
    if(otherUrl == 2801695646) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "GAH! Don't sneak up on me like that!",
                "Oh, did I scare you?",
                "Scared? You're the one who should be scared!"]
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
    
    
    if(otherUrl == 2802530261) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "GWAHAHA, nice color scheme lady. Trying to impress me?",
                "* charges cannon",
                "Tough love, eh? I like your style, lady!"]
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
    
    
     if(otherUrl == 2825520992) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Aren't you one of Dedede's Waddldums?",
                "Actually, sir it's Waddlede-",
                "Yeah, yeah, whatever. Your politness makes me want to puke."]
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


     if(otherUrl == 2802528159) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Hey buddy! If you're gonna intimidate, people maybe stop crawling like a baby.",
                "* screeches",
                "GWAHAHA, and you cry like one too! Do you need a nap?"]
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
    

     if(otherUrl == 2798199714) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "So you're supposed to be the galaxy's greatest warrior?",
                "* points blade",
                "Let's see how you deal with a galaxy-conqueror, pinky."]
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
    


     if(otherUrl == 2642265963) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "So, you're the one who sold Jr. that bootleg Switch. You're getting roasted for that, you little gremlin.",
                "SORRY NO [refunds] MR. [turtle soup] MAYBE I CAN INTEREST YOU IN [call your local plumber today].",
                "How about a trade? You hold still and I'll show you the death of a salesman!"]
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
    
         if(otherUrl == 2606409742) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Gwahaha! Do you think that toothpick's gonna scratch me?",
                "Hyah! *the Master Sword glows",
                "Grrr. You remind me of Mario. Sorry, blondie, but Zelda's mine!"]
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

        if(otherUrl == 2841541558) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Yo, tree boy! Give me some of those apples.",
                "You are not worthy, turtle. Leave my forest",
                "Gwaha. Roasted apples it is, then."]
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
    

    if(otherUrl == 2839808881) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Hey, who ate the last of the Blarg Tail Soup?!",
                "* sitting next to an empty bowl sleeping",
                "Why you! Time to roast some marshmallows!"]
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

    if(otherUrl == 2843385011) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Oh great, another Dark loser.",
                "* narrows eye",
                "At least you're not a copycat."]
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
    
        if(otherUrl == 2904134945) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Gah! Why is it snowing?",
                "Oh, I'm sorry, sir. I was just practicing some spells.",
                "Lets see how your spells do against my flames!"]
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
    
            if(otherUrl == 2842873754) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Hey, that's my food, Dedede!",
                "I didn't see your name on it.",
                "It's right there! Get over here, you flightless freak!"]
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
    
               if(otherUrl == 2842873754) && (get_player_color(2) == 9) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Dedede, you seem different. You get a tan or something?",
                "Hey, I didn't order no monster. I'm not taking no free sample.",
                "Oh, I'll show you a free sample. How about a knuckle sandwich?!"]
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

   if(otherUrl == 2911048812) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Oh good, I was low on pepper.",
                "I AM NOT A SPICE! I AM A DALEK, AND YOUR KINGDOM NOW BELONGS TO US!",
                "If Mario can handle the Shroobs, taking care of an overgrown pepper shaker is gonna be easy."]
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

   if(otherUrl == 2876246765) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Gwahahaha! I've finally got my filthy claws on all 7!",
                "* begins floating and sparking",
                "I don't feel any stronger. Gah, stupid gems!"]
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
   
   if(otherUrl == 2311095319) || (otherUrl == 2945062156) || (otherUrl == 2944680077)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Mario! You always have to get in my way, don't you?!",
                "Let's-a go!",
                "This time, it's game over, Mario!"]
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
   if(otherUrl == 2946784030) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "WARIO! GET BACK HERE!",
                "WAHAHAHA! Sorry, finders keepers!",
                "Finders keepers? THAT'S MY TREASURE!"]
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

   if(otherUrl == 2948285612) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "You can't be serious?",
                "* growls",
                "I'll use your ashes as fertilizer!"]
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
   if(otherUrl == 2904498757) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "About time you got here. Where's my pizza?",
                "* hands over pizza",
                "Finally! Now... Wait, IS THAT PINEAPPLE?!"]
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

   if(otherUrl == 2957312834) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "You're a monster.",
                "Says the serial kidnapper.",
                "Let's see you survive this fire, freak!"]
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