

//article3_init

//article3_init.gml



with (player_id)
{
	if (has_rune("A"))
	{
		other.explodestickies = 1;
	}
	else
	{
		other.explodestickies = 0;
	}
}

sprite_index = sprite_get("sticky");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = true;
enemy_hit = 0;
hit = noone;
sprite[0] = sprite_get("sticky"); //launched
sprite[1] = sprite_get("sticky"); //idle level 1
sprite[2] = sprite_get("sticky"); //idle level 2
sprite[3] = sprite_get("sticky"); //idle level 2
player_id.sticky_count++;

anim_type[0] = 1;
anim_type[1] = 1;
anim_type[2] = 1;
anim_type[3] = 1;
stickx = x;
sticky = y;


free_timer = 0;
stick = 0;
strength = 0;
distance = point_distance(x, y, player_id.x, player_id.y);
angle = point_direction(x, y, player_id.x, player_id.y);
state = 0;                   //The behavior state the article should start in.
state_timer = 0;                   //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                 //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = player_id.sticky_charge * 0.3 * spr_dir ;                    //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                    //The vertical speed of the article.
exist_timer = 0;	         //How long the article has existed.

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;       //If the article moves into a wall on its own, this variable will be true.


blink_timer = 5;

//tinmines stuff
demo = player_id.player;


//articleX_init.gml