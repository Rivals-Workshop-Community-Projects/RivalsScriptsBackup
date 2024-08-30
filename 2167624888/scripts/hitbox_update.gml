//hitbox_update

if (attack == AT_NSPECIAL && hbox_num == 1)
{
	var gt;
	gt = get_gameplay_time() mod 10
	if (player_id.should_red_arrow == false and gt % 3 > 0)
    {
		var rand, flip, xpos;
		rand = random_func(5,30,true)
		flip = gt % 4 == 0 ? 1 : -1;
		xpos = hsp < 2 ? random_func(7, 20, false)*flip : 0;
		with (player_id)
		{
			createParticle(particles,1,0,0,sprite_get("fireeffect"),0,other.x, other.y,0, -1, .2, 0, 0, 1, 0, 30, true, true)
		}
    }
    
	if (free)
	{
		current_frame = (current_frame >= 8) ? 0 : current_frame+.25
	}
	else {
		if player_id.should_red_arrow == false {
			spawn_hit_fx(x,y, player_id.nspec_hitenemy)
		}
		else {
			spawn_hit_fx(x,y, player_id.nspec_hitenemy_red)
		}
		destroyed = true;
	}
	
}



// if ((attack == AT_NSPECIAL && hbox_num <= 3) or (attack == AT_USPECIAL || attack == AT_USPECIAL_2 /*&& hbox_num == 1*/))
// {
//     var hit_article = false;
// 	if (player_id.fspec_article != noone
// 	&& player_id.fspec_article.state != 2
//     && point_distance(x,y,player_id.fspec_article.x,player_id.fspec_article.y) < (hbox_num == 1?30:50)
//     //place_meeting(x,y,player_id.fspec_article)
// 	&& player_id == player_id.fspec_article.player_id
// 	&& orig_player == player)
// 	{
//         player_id.fspec_article.state = 2;
//         player_id.fspec_article.state_timer = 0;
        
//         hit_article = true;
// 	}
	
//     if ((hbox_num == 1 && !free) || hit_article)  // hitbox_timer includes the firing time
//     {
//         destroyed = true;
//         player_id.move_cooldown[AT_NSPECIAL] = 30 + (30*(!player_id.should_red_arrow));
        
//         if (hit_article)
//         {
//             if (!player_id.fspec_article.isRed) // if blue article
//             {
//             	if (player_id.should_red_arrow == false){ // blue arrow
// 	                spawn_hit_fx(player_id.fspec_article.x,player_id.fspec_article.y,player_id.fspec_effect);
// 	                create_hitbox(AT_NSPECIAL, 4, player_id.fspec_article.x, player_id.fspec_article.y);
//             	}
//             	else{ // if red arrow
// 	                spawn_hit_fx(player_id.fspec_article.x,player_id.fspec_article.y,player_id.fspec_effect_mix);
// 	                create_hitbox(AT_NSPECIAL, 6, player_id.fspec_article.x -5, player_id.fspec_article.y -12);
//             	}
//             }
//             else // red article
//             {
//             	if (player_id.should_red_arrow == false){ // if blue arrow
// 	                spawn_hit_fx(player_id.fspec_article.x,player_id.fspec_article.y,player_id.fspec_effect_mix);
// 	                create_hitbox(AT_NSPECIAL, 6, player_id.fspec_article.x -5, player_id.fspec_article.y -12);
//             	}
//             	else{  // if red arrow
// 	                spawn_hit_fx(player_id.fspec_article.x,player_id.fspec_article.y,player_id.nspec_effect_red);
// 	                create_hitbox(AT_NSPECIAL, 3, player_id.fspec_article.x, player_id.fspec_article.y);
//             	}
//             }
//         }
//         else
//         {
//         	//if(player_id.attack == AT_NSPECIAL){
// 	            if (player_id.should_red_arrow == false) // if blue arrow
// 	            {
// 	                spawn_hit_fx(x,y,player_id.nspec_effect);
// 	                //create_hitbox(AT_NSPECIAL, 2, x, y-16);
// 	            }
// 	            else
// 	            {
// 	                spawn_hit_fx(x,y,player_id.nspec_effect_red);
// 	                //create_hitbox(AT_NSPECIAL, 3, x, y-16);
// 	            }
//         	//}
//         }
        
//         if (hbox_num == 1 || (hit_article?hitbox_timer>4:true))
//             sound_play(sound_get("Impact"));
//     }
//     else if (free)
//     {
//         if (y > room_height + 100)
//             destroyed = true;
//     }
//     else
//     {
//         //hsp = 0;
//         //vsp = 0;
//         hit_priority = 0;
//         transcendent = true;
//     }
// }

// if(attack == AT_NSPECIAL && hbox_num == 1){
// 	if(!destroyed){
// 		if(should_red_arrow){
// 			player_id.move_cooldown[AT_NSPECIAL] = 2;
// 		}
// 	}
// }

if (attack == AT_USPECIAL || attack == AT_USPECIAL_2 && hbox_num == 1)
{
    if (!free)
    {
        destroyed = true;
    }
}

#define createParticle
///createParticle(list, amt, xvar, yvar, sprite, image, x, y, hsp, vsp, ?frame_rate, ?hAccel, ?vAccel, ?alpha, ?alpha_rate, ?lifetime, ?uses_shader, ?stop_at_last_frame)
///- create a number (amt) of particles
// This function goes wherever you want to create particles from.
var ind = 0;
var list = argument[0];
var amt = argument[1]; //Amount of particles
var xvar = argument[2]; //X Variation
var yvar = argument[3];	//Y Variation
var sprite = argument[4], image = argument[5],
	_x = argument[6], _y = argument[7],
	_hsp = argument[8], _vsp = argument[9];
var frame_rate = argument_count >= 11 ? argument[10] : 0; //animation framerate
var hAccel = argument_count >= 12 ? argument[11] : 0; //horizontal acceleration
var vAccel = argument_count >= 13 ? argument[12] : 0; //vertical acceleration
var alpha = argument_count >= 14 ? argument[13] : 1; //the starting alpha.
var alpha_rate = argument_count >= 15 ? argument[14] : -0.1; //the rate the alpha changes at.
var lifetime = argument_count >= 16 ? argument[15] : 30; //particle lifetime.
var uses_shader = argument_count >= 17 ? argument[16] : true; //whether the particle should recolor with the character
var stop_at_last_frame = argument_count >= 18 ? argument[17] : false; //if this is true, instead of looping the particle will despawn after hitting the final frame.
//actual function
if argument_count <= 8 return false; //if it returns false you didn't give it enough arguments so it can't make a particle
repeat(amt) {
    var newParticle = {
        sprite: sprite,     //sprite
        image: image,
        frame_rate: frame_rate,
        x: _x+random_func((ind++)%25,xvar,true)-floor(xvar/2),      //x
        y: _y+random_func((ind++)%25,yvar,true)-floor(yvar/2),      //y
        hsp: _hsp,      //hsp
        vsp: _vsp,      //vsp
        hAccel: hAccel,      //hAccel
        vAccel: vAccel,      //vAccel
        alpha: alpha,      //alpha
        alpha_rate: alpha_rate,      //alpha rate
        timer: 0,      //particle timer
        lifetime: lifetime,       //particle lifetime
        shader: uses_shader,
        frame_end: stop_at_last_frame,
        xscale: image_xscale
        };
    ds_list_add(list,newParticle);
}