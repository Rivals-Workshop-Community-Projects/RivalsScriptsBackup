//article1_init - runs once, when the article is created

//set all movement sprites----------------------------------

spr_idle = sprite_get("pandy_idle");
spr_walk = sprite_get("pandy_walk");
spr_turn = sprite_get("pandy_walkturn");
spr_hurt = sprite_get("pandy_hurt");
spr_affinitymax = sprite_get("pandy_affinitymax");
spr_dtaunt = sprite_get("pandy_dtaunt");

spr_nspec = sprite_get("pandy_nspec");
spr_fspec = sprite_get("pandy_fspec");
spr_uspec = sprite_get("pandy_uspec");
spr_dspec = sprite_get("pandy_dspec");

swordhold_sprites = [sprite_get("pandy_idles"), sprite_get("pandy_walks"), sprite_get("pandy_walkturns"),
                    sprite_get("pandy_crouch"), sprite_get("pandy_dashstart"), sprite_get("pandy_dash"),
                    sprite_get("pandy_dashstop"), sprite_get("pandy_dashturn"), sprite_get("pandy_jumpstarts"), 
                    sprite_get("pandy_jumps"), sprite_get("pandy_lands"), sprite_get("pandy_nspec"),
                    sprite_get("pandy_fspec"), sprite_get("pandy_uspec"), sprite_get("pandy_dspec")];

//sword movement sprites
spr_idle_s = sprite_get("pandy_idles");
spr_crouch = sprite_get("pandy_crouch");
spr_walk_s = sprite_get("pandy_walks");
spr_turn_s = sprite_get("pandy_walkturns");

spr_dashstart = sprite_get("pandy_dashstart");
spr_dash = sprite_get("pandy_dash");
spr_dashstop = sprite_get("pandy_dashstop");
spr_dashturn = sprite_get("pandy_dashturn");

//jumps
spr_jumpstart = sprite_get("pandy_jumpstart"); //reuse as land
spr_jump = sprite_get("pandy_jump");

spr_jumpstart_s = sprite_get("pandy_jumpstarts");
spr_jump_s = sprite_get("pandy_jumps");
spr_land_s = sprite_get("pandy_lands");

//other
mask_index1 = sprite_get("pandy_mask");
mask_index2 = sprite_get("pandy_mask2");
cmask_index1 = sprite_get("pandy_maskcrouch");
cmask_index2 = sprite_get("pandy_maskcrouch2");
mask_index = sprite_get("pandy_mask");
spr_field = [sprite_get("test_radius120"), sprite_get("test_radius180"), sprite_get("test_radius250")];
spr_thread = [sprite_get("affinity_threadlow"), sprite_get("affinity_threadmed"), sprite_get("affinity_threadhigh")];
//----------------------------------------------------------

//Sprite and direction
sprite_index = spr_idle;           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//my stuff
affinity = 50;                          //0-39 is low, 40 - 139 is medium, 140 - max is high
affinity_max = 202;
affinity_level = 1;                     //0 = low, 1 = med, 2 = high
player_near_x = true;
player_near_y = true;
affinity_radius = [150, 200, 250];      //120, 180, 250
pandy_control = false;
can_attack = true;
jumptype = 0;                           //0 is shorthop, 1 is fullhop
fastfall = false;
has_djump = true;
fall_through = false;
affinityanim = true;
hit = false;
stored_hsp = 0;
stored_vsp = 0;
fake_hitpause = 0;
caught_uspec = false;
uspec_vfx = noone;

//animation frame help
nspec_animframes = [5, 5, 4, 3, 4, 4, 5, 6];
fspec_animframes = [2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 8, 4, 6];
uspec_animframes = [3, 3, 2, 2, 5, 4, 6, 6, 8, 3];
dspec_animframes = [4, 4, 5, 5, 5, 6, 12, 2, 2];
window_timer = -1;





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
idle_anim_rate = 8;                                 //Example animation speed value 1. The animation in question will increment every 6 frames in this case
anim_rate = 0;                                      //USED BY ME!! WOW
die_anim_rate = 4;                                  //Example animation speed value 2.
die_time = 20;                                      //Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 1;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_get("your_sprite");             //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"

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
*/



//HIT DETECTION CODE BY SUPERSONIC - https://pastebin.com/zUXGn0QK
//make hbox_group array (the old version was really bad because the array actually affected all players no matter what lol)
hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.