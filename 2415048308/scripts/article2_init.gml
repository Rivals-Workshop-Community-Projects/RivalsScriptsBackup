//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("robodummyspawn");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.
times_hit = 0;
//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = false;                                        //Whether the article is in the air or not.
hit_wall = true; 


//If the article moves into a wall on its own, this variable will be true.


//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something
idle_timer = 0;
while(!position_meeting(x,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x,bbox_bottom+1,asset_get("par_jumpthrough"))){
    y++;
    if(y > room_height + 100){
        instance_destroy(); 
        exit;
    }
}

if (state == 0) { //code borrowed from Mycolich DTilt
    
    var maxlen = 76;
    var of = 34*player_id.spr_dir;
    
    for (x = player_id.x; abs(x - player_id.x) < maxlen; x += player_id.spr_dir*10) {
    
        if (!position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) && !position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough"))){
            repeat(30){
                x -= player_id.spr_dir;
                if (position_meeting(x+of,bbox_bottom+1,asset_get("par_block")) or position_meeting(x+of,bbox_bottom+1,asset_get("par_jumpthrough"))) break;
            }
            break;
        }
    }    
}

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