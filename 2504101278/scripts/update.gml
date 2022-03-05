//B - Reversals

with oPlayer
{
	if self != other
	{
		black_sil = max(0,black_sil-1);
	}
}

updateParticles1();
updateParticles2();
if state == PS_ATTACK_AIR
{
    switch (attack)
    {
        case AT_DAIR:
        can_move = false;
        var angle_safe = false;
        switch (window)
        {
            case 1:
                angle_safe = true;
                if window_timer == 0
                {
                    reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
                }
                dair_direction = 270;
                if right_down dair_direction += 45
                if left_down dair_direction -= 45
                hsp = lerp(hsp,0,0.3);
                vsp = lerp(vsp,0,0.3);
            break;
            case 2:
                var spd = floor(3+(window_timer));
                //print(spd)
                hsp += lengthdir_x(spd, dair_direction);
                vsp += lengthdir_y(spd, dair_direction);
            break;
            case 3:
                hsp *=0.8;
                vsp *=0.8;
            break;
        }
    }
}

if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND
{
	var n = fspecial_stored[0] == 3 ? 4 : 1 + floor(3*(fspecial_stored[1]/get_window_value(AT_FSPECIAL,2,AG_WINDOW_LENGTH)));
	var current_shot = window_timer / fspecial_interval;
	
    switch attack
    {
	    case AT_FSPECIAL:
	    if window == 5 and window_timer mod fspecial_interval == 0 and current_shot < n
	    {
			
	    	//print("creating")
	    	sound_play(asset_get("sfx_ori_charged_flame_release"))
	        var minang, maxang;
	        minang = free ? -30-(n*2.5) : 0;
	        maxang = free ? -30+(n*2.5) : (10+(n*4));
	        
			var angle = (spr_dir*lerp(minang, maxang, current_shot/n)) + getStartAngle();
	
	        //print("spawning")
	        var pos = !free ? [ x+(spr_dir*9) , y-(char_height/2) - 6 ] : [ x+(spr_dir*16) , y - 20];
	        
	        var proj = spawnFspecialProjectile( pos[@ 0], pos[@ 1], angle, 20);
	        var name = "light_particle_green";
	        if (current_shot+1) mod 3 = 0
	        {
	        	proj.sprite_index = sprite_get("lemon");
	        	name = "light_particle_white";
	        }
	        
	        var i=0;
	        repeat (1+random_func(10,4,true))
	        {
	        	spawnParticle(sprite_get(name), 0.2, [proj.x+(spr_dir*(15 + (35*!free) )),proj.y + (free*9)], [round(random_func(4+i,8,false)-random_func(5+i, 16, false)), round(random_func(6+i,8,false)-random_func(7+i, 16, false))], 0.9)
	        	i++;
	        }
	    }
	    break;
	    case AT_DSPECIAL:
	    
	    	if window == 2 and window_timer == 0 instance_create(floor(x+(spr_dir*50)+hsp), floor(y-40+vsp), "obj_article2")
	    
	    break;
    }
}

if(introTimer2 < 2)
    introTimer2++
else if(state == PS_SPAWN)
{
    introTimer2 = 0;
    introTimer++;
    if(introTimer == 0)
    	sound_play(asset_get("sfx_boss_vortex_start"),false,noone, 0.6);
    if(introTimer == 14)
        sound_play(sound_get("scream_void"));
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 37) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
//SANDBERT CODE
// if (attack == AT_NSPECIAL){
//     if (window == 3){
//         if (special_pressed){
//             window = 1;
//             window_timer = 0;
//         }
//     }
// }

// if (attack == AT_FSPECIAL){
//     if (window == 2){
//         if (special_pressed){
//             window = 3;
//             window_timer = 0;
//             destroy_hitboxes();
//         }
//     }
//     can_fast_fall = false;
// }

// if (attack == AT_USPECIAL){
//     if (window == 1 && window_timer == 1){
//         times_through = 0;
//     }
//     if (window == 2){
//         if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
//             if (times_through < 10){
//                 times_through++;
//                 window_timer = 0;
//             }
//         }
//         if (!joy_pad_idle){
//             hsp += lengthdir_x(1, joy_dir);
//             vsp += lengthdir_y(1, joy_dir);
//         } else {
//             hsp *= .6;
//             vsp *= .6;
//         }
//         var fly_dir = point_direction(0,0,hsp,vsp);
//         var fly_dist = point_distance(0,0,hsp,vsp);
//         var max_speed = 12;
//         if (fly_dist > max_speed){
//             hsp = lengthdir_x(max_speed, fly_dir);
//             vsp = lengthdir_y(max_speed, fly_dir);
//         }
//         if (special_pressed && times_through > 0){
//             window = 4;
//             window_timer = 0;
//         }
//         if (shield_pressed){
//             window = 3;
//             window_timer = 0;
//         }
//     }
//     if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
//         window++;
//         window_timer = 0;
//     }
// }
var states = [PS_AIR_DODGE,PS_ROLL_BACKWARD,PS_ROLL_FORWARD];
if (array_find_index(states,state) != -1 or ((state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_DSPECIAL and window > 1 and point_distance(0,0,hsp,vsp) > 5)) and state_timer mod afterimage_spawnsep == 0 and sprite_index != sprite_get("parry")
{
		//Create the particle!
	var newParticle = {
		sprite: sprite_index,
		frame: image_index,
		position: [x,y],
		scale: [image_xscale,image_yscale],
		alpha: afterimage_alpha,
		alpha_decay: afterimage_alphadecay,
		color: afterimage_color
	}
	
	ds_list_add(afterimages,newParticle);
}
// if (attack == AT_DSPECIAL){
//     if (window == 2 && !was_parried){
//         can_jump = true;
//     }
//     can_fast_fall = false;
//     can_move = false
// }

#define spawnParticle
/// @param {undefined} spr
/// @param {undefined} animspeed
/// @param {undefined} pos
/// @param {undefined} velocity
/// @param {undefined} fric
/// spawnParticle(spr, animspeed, pos, velocity, fric)

var spr = argument0, animspeed = argument1, pos = argument2, velocity = argument3, fric = argument4;

var newParticle = {
	sprite: spr,
	frame: 0,
	aspeed: animspeed,
	position: pos,
	scale: [1,1],
	color: c_white,
	vel: velocity,
	frict: fric
};
	
ds_list_add(particles,newParticle);

#define getStartAngle()

return 180*( -(spr_dir-1) / 2 );

#define spawnFspecialProjectile
/// @param {undefined} cx
/// @param {undefined} cy
/// @param {undefined} angle
/// @param {undefined} spd
/// spawnFspecialProjectile(cx, cy, angle, spd)
var cx = argument0, cy = argument1, angle = argument2, spd = argument3;

var o, angle;
o = create_hitbox(AT_FSPECIAL,1,cx,cy);
    
o.hsp = lengthdir_x(spd, angle);
o.vsp = lengthdir_y(spd, angle);

return o;

#define updateParticles1

//Make sure there are particles to loop over, otherwise don't do anything.
var len;
len = ds_list_size(afterimages);

if (len != 0)
{
	//Loop over all the particles.
	for (var i = 0; i < len; i++)
	{
		var n;
		n = afterimages[| i]
		
		n.alpha -= n.alpha_decay;
		//Destroy the particle if it has fully faded out.
		if n.alpha <= 0
		{
		    ds_list_delete(afterimages,i);
		    if i == 0 return;
		}
	}
}

#define updateParticles2
var len;
len = ds_list_size(particles);

if (len != 0)
{
	//Loop over all the particles.
	for (var j = 0; j < len; j++)
	{
		//print("DOING IT")
		var n;
		n = particles[| j];
		
		n.frame += n.aspeed;
		
		var newpos = array_clone(n.position);
		
		newpos[@ 0] += n.vel[@ 0];
		newpos[@ 1] += n.vel[@ 1];
		n.position = newpos;
		//print(n.position)
		
		n.vel[@ 0] *= n.frict;
		n.vel[@ 1] *= n.frict;
		//Destroy the particle if it has fully faded out.
		if n.frame >= sprite_get_number(n.sprite)
		{
		    ds_list_delete(particles,j);
		    if j == 0 return;
		}
	}
}