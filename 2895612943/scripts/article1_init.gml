//article1_init - runs once, when the article is created

image_xscale = 2;
image_yscale = 2;

is_bite = !player_id.is_bite;
spr_init = sprite_get("dash");
spr_init_b = sprite_get("bite_dash");


//------------------------------------------------------------------------------
//---Feel free to adjust these property variables for speed and stuff-----------
assist_startup = 5;                         //Amount of frames before they start the attack.
init_speed = 10;                            //Initial speed that the assist spawns at. Determines distance travelled.
slowdown = 0.95;                             //Friction, as a percentage. Determines how much they slide during the attack.
aerial_bounce = -5;                         //VSP boost when using an aerial.
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------



//Sprite and direction
if(!is_bite){
    sprite_index = spr_init;           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
    spr_pose = sprite_get("dspecpose");
    spr_hit = sprite_get("ohno");
    with(player_id){
        other.stored_atk = s_storedatk;
        s_storedatk = 0;
        //other.stored_atk = AT_UTILT;
        other.spr_atk = get_attack_value(other.stored_atk, AG_SPRITE);
    }
}else{
    sprite_index = spr_init_b;
    spr_pose = sprite_get("bite_dspecpose");
    spr_hit = sprite_get("bite_ohno");
    with(player_id){
        other.stored_atk = b_storedatk;
        b_storedatk = 0;
        //other.stored_atk = AT_UTILT;
        other.spr_atk = get_attack_value(other.stored_atk, AG_SPRITE_BITE);
    }
}

mask_index = sprite_get("dspec_mask");
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
slowdown_orig = slowdown;
can_be_hit = true;
can_swap = true;
white_flash = 0;
has_hit = false;
dspec_hitboxes = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

//window variables
with(player_id){
    var atk = other.stored_atk
    other.window_timer = -1;                                  //current window timer
    other.window = 1;                                         //current window
    if(get_window_value(atk, 1, AG_WINDOW_HAS_WHIFFLAG) > 0){
        other.window_length = get_window_value(atk, 1, AG_WINDOW_LENGTH) * 1.5;                  //window length in frames
    }else{
        other.window_length = get_window_value(atk, 1, AG_WINDOW_LENGTH);                  //window length in frames
    }
    other.window_nums = get_attack_value(atk, AG_NUM_WINDOWS);                         //windows in the attack
    other.window_frame_start = get_window_value(atk, 1, AG_WINDOW_ANIM_FRAME_START);   //window frame start
    other.window_frames = get_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES);             //window frames in the window
    
    if(get_window_value(atk, 1, AG_WINDOW_HAS_SFX)){
        other.window_sfx = get_window_value(atk, 1, AG_WINDOW_SFX);                    //window sfx
        other.window_sfx_frame = get_window_value(atk, 1, AG_WINDOW_SFX_FRAME);        //frame to play window sfx
    }else{
        other.window_sfx = -1;
        other.window_sfx_frame = -1;
    }
}


//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//State buffering (for if the article is busy when you send it a state command)
bufferedstate = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffertimer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.

//Animation speeds and timers
idle_anim_rate = 10;                                 //Example animation speed value 1. The animation in question will increment every 10 frames in this case
die_anim_rate = 15;                                  //Example animation speed value 2.
die_time = 35;                                      //Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 1;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_index;             //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"

//Limit on number of articles
replacedcount = 0;                                  //This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 1;                                    //The maximum number of this article that should exist at once.

with(asset_get("obj_article1")){
    if (player_id == other.player_id){
        replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}

//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something



/* README - Basic Article Usage



Everything below refers to the first article slot, which is article1. To add multiple types of articles, rename these files from article1 to article2, and do the same replacement in the code below.



To summon an article, use the line:

    instance_create(x, y, asset_get("obj_article1"));

where x and y are the position to spawn it at.



To reference an article, the best way is using a "with" statement. With statements run code for one object from within another object's script.

For example, update.gml is a script run by the player... but you can use a with statement to do stuff with your article from here, too.

This example causes all onscreen articles belonging to the character upward:

    with(asset_get("obj_article1")){
        if (player_id == other.id){
            vsp = -5;
        }
    }

The if statement checks that the article belongs to your character. If you leave this out, you'll screw with other characters' stuff and that's bad

The code within the with statement is run from the article's perspective. For example, if you put "vsp = -10" inside of there, the ARTICLE's speed will be set.

Use "other" to reference the object which is OUTSIDE the with statement (in this case the player), and similarly use "other.variable" to reference one of their variables.

Example code to check if your character is touching your article and, if so, launch the character upward a bit:

    with(asset_get("obj_article1")){
        if (player_id == other.id && place_meeting(x, y, other){
            other.vsp = -10;
        }
    }



Another useful application of this is spawning an article and then IMMEDIATELY doing something to it.

For example, you have an article which normally stays in place when spawned, but if a variable (belonging to the character) called "lift" is true, then you want the article to instead move upward.

By putting "var myarticle = " in front of the spawn command, we can cause the variable "myarticle" (which can be called anything you want) to refer to the article we just spawned.

The purpose of the "var" is that this variable will be thrown away once we've finished running this script, so it won't interfere with other things later.

By removing the "var" you can make the variable PERMANENTLY refer to the article, which might be helpful but can also be finnicky. I recommend the with statement method in place of this, ESPECIALLY if maxarticles > 1.

Anyway, we can use "myarticle" to refer to the article we just created, WITHOUT referring to other instances of it that may already exist.

    var myarticle = instance_create(x+50, y-10, asset_get("obj_article1"));
    
    if lift{
        myarticle.vsp = -5;
    }
    
OR
    
    var myarticle = instance_create(x+50, y-10, asset_get("obj_article1"));
    
    if lift{
        with(myarticle){
            vsp = -5;
        }
    }
    
This kind of thing is how Mollo crams five types of bombs into one article slot - the bomb type is a variable changed through this method. Cool, huh?