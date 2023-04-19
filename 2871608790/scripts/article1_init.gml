//article1_init.gml
//nspec items


/////////////////////////////////////////////////////////////////////////// GENERAL SETUP ///////////////////////////////////////////////////////////////////////////

is_an_azi_and_baggy_item = true; //pokcet detection
spitting = (player_id.attack == AT_FSPECIAL && player_id.window == 4);

//manipulate the "range" to change how frequently an item can spawn
item[0] = { name: "pencil",     range: 50 };
item[1] = { name: "ruler",      range: 45 };
item[2] = { name: "scissors",   range: 30 };
item[3] = { name: "water",      range: 35 };
item[4] = { name: "lunchbox",   range: 20 };
item[5] = { name: "banana",     range: 30 };
item[6] = { name: "bell",       range: 20 };
item[7] = { name: "textbook",   range: 20 };
item[8] = { name: "car",        range: 20 };
item[9] = { name: "soap",       range: 20 };
item[10] ={ name: "paper",      range: 20 };
item[11] ={ name: "bomb",       range: 10 };

total_item_amount = array_length(item);

allow_rng = 1; //for testing mostly
item_type = 0; //instance_number(obj_article1) > 1 ? 11 : 8;

car_item_held = -1;

//pocket logic detection
if (!player_id.holding_item) 
{
    item_id = player_id.fake_item_id;

	if (allow_rng) //rolling for items
	{
		rng_range = 0;
		for (var i = 0; i < total_item_amount; i++)
		{
			rng_range += item[i].range;
			item[i].range = rng_range;

			//roll results only once
			if (i == total_item_amount - 1) var rng_num = random_func(0, rng_range, true);
		}

		if (rng_num != -1) for (var i = 0; i < total_item_amount; i++)
		{
			if (rng_num < item[0].range) item_type = 0;
			else if (rng_num < item[i].range && rng_num >= item[i-1].range) item_type = i;
		}
	}

    item_hp = 3;
}
else with (player_id)
{
    other.item_id = pocket_item.id
    other.item_type = pocket_item.type;
    other.item_hp = pocket_item.hp;
	if (pocket_item.car_type > -1) other.car_item_held = pocket_item.car_type;
    holding_item = false;
}

//trajectory control
player_input = 0; //-1 = towards | 0 = no input | 1 = away
with (player_id) if (attack == AT_NSPECIAL && window == 1 && window_timer == window_end)
{
	if (left_down && -spr_dir || right_down && spr_dir) other.player_input = 1;
	else if (left_down && spr_dir || right_down && -spr_dir) other.player_input = -1;
	else if (!left_down && !right_down) other.player_input = 0;
}

can_be_pocket = true; //prevents a duplication glitch lol

////////////////////////////////////////////////////////////////////////// ITEM VARIABLES ///////////////////////////////////////////////////////////////////////////

//changed around in article1_update
sprite_index = sprite_get("artc_nspec_" + item[item_type].name);
mask_index = sprite_get("artc_nspec_mask");

can_be_grounded = true;
ignores_walls = false;
is_hittable = false;
launch_hsp = 0;		//the speed of which an item is spat out
grav = 0;			//gravity/weight
g_fric = 0;			//ground friction
a_fric = 0;			//air friction (i don't think there's any item that actually uses air friction but just in case)
item_bouncy = 0;	//if true, the item will bounce on the ground
item_hbox_num = 0;	//sets the hitbox for the item

rec_hsp = 0;
rec_vsp = 0;
item_timer = -1;
rec_timer = 0;
spr_dir = player_id.spr_dir;
item_landed = false;
reflected_item = false;
item_loop_sound = noone;

hitpause = false;
hitstop = 0;
hitstop_full = 0;
orig_knock = 0;
old_hsp = 0;
old_vsp = 0;

item_hbox = noone;
hbox_spawn_time = !spitting ? 5 : 2;
item_hit_lockout = 0; //just so it won't hit who hit it
item_hit_player = false;
item_sim_percent = 50;
item_hit_azi = true;
item_has_hit = false;
item_dspec_bounced = 0;
item_bounce_range = [12, 30]; //decides how high the item can bounce (lowest / highest)

hud_col = get_player_hud_color(player);     // - gets the color of the player's hud (ie. player 1's color is red)
offscreen_arrow_enabled = true;             // - if true, it will draw the offscreen indicator for the article
article_offscreen = false;                  // - when true, it will show the offscreen indicator
offscreen_image = 0;                        // - offscreen arrow image to draw
offscreen_x_pos = 0;                        // - offscreen arrow position (x axis)
offscreen_y_pos = 0;                        // - offscreen arrow position (y axis)

orig_depth = depth;                         // - checks the depth (we are changing it when the article is offscreen so the indicator shows)

//VFX
fx_soap_part = hit_fx_create(sprite_get("fx_soap_part"), 32);
fx_soap_explode = hit_fx_create(sprite_get("fx_soap_explode"), 24);
fx_bomb_explode = hit_fx_create(sprite_get("fx_bomb_explode"), 32);
fx_car_explode = hit_fx_create(sprite_get("fx_car_explode"), 24);
fx_water_multi = hit_fx_create(sprite_get("fx_water_multi"), 24);
fx_water_final = hit_fx_create(sprite_get("fx_water_final"), 32);

/////////////////////////////////////////////////////////////////////////// ITEM SPECIFIC ///////////////////////////////////////////////////////////////////////////

water_dir = 0;
water_time = 0;

banana_slip = false;
banana_prat_time_set = 24;

// [hsp, vsp, time]
if (!spitting) //nspec path
{
	paper_coords = [
		[hsp, vsp, 0],
		[5, -12, 30],
		[4, 7, 40],
		[-7, 4, 50],
		[-6, -5, 60],
		[4, -8, 70],
		[6, -0.2, 80],
	];
}
else //fspec path
{
	paper_coords = [
		[hsp, vsp, 0],
		[12, -0.5, 20],
		[2, -6, 30],
		[-5, -2, 50],
		[-1, 6, 60],
		[4, 2, 70],
		[6, -5, 80],
	];
}
paper_movement = true;
paper_homing = false;
paper_homing_id = noone;
paper_homing_spd = 7; //changes flight speed towards the target
paper_homing_turn_speed = 5; //changes the turning speed of the paper airplane, the higher the number the sharper the turns

bell_time = 0;

soap_time = 300;
soap_state_change = [0, 120, 240];
soap_state = 0;
soap_sim_kb_adj = 1.1;
soap_hbox = 13;

bomb_time = 300;
bomb_sim_kb_adj = 0.8;
bomb_flash_time = 60;
bomb_hbox = 2;

car_state = 0; //0 = idle | 1 = flipped | 2 = collision with player to explosion
car_state_timer = 0;
car_init_speed = [4, 8];
car_idle_anim_speed = 0.2;
car_slowdown_rate = 500; //the higher the number, the longer it takes for the car to stop
car_sees_wall = 0;
car_player_id = noone;
car_grab_time = 0;
car_got_hit = false;

///////////////////////////////////////////////////////////////////////////// ITEM INIT /////////////////////////////////////////////////////////////////////////////

switch (item[item_type].name)
{
	case "pencil":
		can_be_grounded = false;
		ignores_walls = true;
		launch_hsp = 10;
		vsp = (!spitting ? -13 : -5);
		grav = 0.5;
		item_hbox_num = 8;
		break;
	case "ruler":
		can_be_grounded = false;
		ignores_walls = true;
		launch_hsp = 12;
		vsp = (!spitting ? -13 : -5);
		grav = 0.5;
		item_hbox_num = 9;
		break;
	case "scissors":
		can_be_grounded = false;
		ignores_walls = true;
		launch_hsp = 14;
		vsp = (!spitting ? -13 : -5);
		grav = 0.5;
		item_hbox_num = 10;
		break;
	case "water":
		launch_hsp = 5;
		vsp = (!spitting ? -12 : -4);
		grav = 0.4; //turns 0.6 when landing
		item_hbox_num = 8;
		break;
	case "lunchbox":
		launch_hsp = 4;
		vsp = (!spitting ? -12 : -6);
		grav = 0.6;
		g_fric = 1;
		item_bouncy = true;
		break;
	case "banana":
		launch_hsp = 12;
		vsp = (!spitting ? -9 : -2);
		grav = 0.4;
		g_fric = 1;
		item_hbox_num = 6;
		break;
	case "bell":
		launch_hsp = 7;
		vsp = (!spitting ? -10 : -2);
		item_bouncy = true;
		item_hbox_num = 7;
		//grav changes when landing to 0.4
		break;
	case "textbook":
		launch_hsp = 16;
		vsp = (!spitting ? -25 : -3);
		grav = 0.9; //changes to 0.4 when landing
		g_fric = 1;
		item_bouncy = true;
		//when it falls it gets hitbox 17
		break;
	case "car":
		is_hittable = true;
		launch_hsp = car_init_speed[1]; //slows down to car_init_speed[0] in update
		vsp = (!spitting ? -10 : -2);
		grav = 0.6;
		g_fric = 0.9;
		item_hbox_num = 15;
		//becomes bouncy when in the down state
		break;
	case "soap":
		is_hittable = true;
		launch_hsp = 14;
		vsp = (!spitting ? -14 : -2);
		grav = 0.7;
		g_fric = 0.1;
		item_bouncy = true;
		item_hbox_num = soap_hbox;
		break;
	case "paper":
		ignores_walls = true;
		launch_hsp = 7;
		vsp = (!spitting ? 0 : -2);
		grav = 0.05; //in update it becomes 0.3 when [paper_movement] is false
		item_hbox_num = 11;
		//becomes bouncy when in the down state
		break;
	case "bomb":
		is_hittable = true;
		launch_hsp = 10;
		vsp = (!spitting ? -10 : -4);
		grav = 0.5;
		g_fric = 0.9;
		item_bouncy = true;
		item_hbox_num = bomb_hbox;
		break;
}

hsp = (!spitting ? (3 + player_input * 1.5) : launch_hsp) * spr_dir;