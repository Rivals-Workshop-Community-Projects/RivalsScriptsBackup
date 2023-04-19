//FIELD SYSTEM ARTICLE1_INIT.GML (by Delta Parallax)
//Initializes variables we need for the field itself.

sprite_index = asset_get("empty_sprite"); //Don't draw anything.

state = 0; //This isn't even used why tf is it still here plz delta give me answers I'm begging you :crydinal:
state_timer = 0; 

//Nothing to see here.
can_be_grounded = false; 
free = true;
uses_shader = true;

//Simplifies variables, because why would I want to type more than I need to
fvars = player_id.player_field_vars;
radius = fvars.init_radius;

//The field that is actually drawn. Starts at 0 to achieve a nice inward pulse effect.
shown_radius = 0;

//The player the field is currently stuck to.
stuck_player = noone;

//The field sprite that will be used to draw the field's outline.
field_spr = sprite_get("field");

//Whether or not the field should begin decaying. Shouldn't decay until the opponent hits.
should_decay = false;

//If the field is at a minimum, this will start to go up. At some maximum value, this will cause the field to be destroyed.
death_timer = 0;

//A random variable for the field's outline, gets updated in the article's update script.
rand = random_func(3,30,true);