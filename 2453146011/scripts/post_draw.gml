// Post draw

// Munophone
user_event(12); 

if(lite || phone_playtest) exit;

shader_start();



// Small sprites check
var small = small_sprites+1;

// Debug code to view portal line positions
// draw_rectangle_color(t1-10,t2-10,t1+10,t2+10,monBlue,monBlue,monBlue,monBlue,false);
// draw_rectangle_color(b1-10,b2-10,b1+10,b2+10,monRed,monRed,monRed,monRed,false);
// draw_rectangle_color(c1-10,c2-10,c1+10,c2+10,monPurple,monPurple,monPurple,monPurple,false);

// if(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD)
// {
//     gpu_set_blendmode(bm_add);
//     draw_sprite_ext(sprite_index,image_index,x+(10*spr_dir),y,spr_dir*2,2,0,c_blue,1)
//     draw_sprite_ext(sprite_index,image_index,x+(20*spr_dir),y,spr_dir*2,2,0,c_red,1)
//     gpu_set_blendmode(bm_normal);

// }

var j = 0;

// Universal flicker oscillator
if(flickerback) flickercount-=.5 else flickercount+=.5;
flickerback = flickercount == 10 ? true : flickercount == -10 ? false : flickerback;



repeat(2)
{
var pref = noone;
if(portal_1 != noone && j == 0 && instance_exists(portal_1))
{
	var px = portal_1.x;
	var py = portal_1.y;
	pref = portal_1;
	var light = sprite_get("blight");
	var portalid = 1;
}

if(portal_2 != noone && j == 1 && instance_exists(portal_2))
{
	var px = portal_2.x;
	var py = portal_2.y;
	pref = portal_2;
	var light = sprite_get("rlight");
	var portalid = 2;
}




if(pref != noone)
{
    // Portal x distance
    var NewValue = (point_distance(x,y,px,py)) / 20;
    
    // Flicker
    var flickerVal = abs(NewValue) - sin(flickercount/50);

    
    // Outline color
    // outline_color = portalid == 1 ? [ min(26,26/flickerVal-sin(flickercount)*7), min(96,96/flickerVal-sin(flickercount)*7), min(143,143/flickerVal-sin(flickercount)*7) ] :
    // [ min(100,196/flickerVal-sin(flickercount)*7), min(44,44/flickerVal-sin(flickercount)*7), min(40,69/flickerVal-sin(flickercount)*7) ];
    init_shader();
    
    // Offset + distance value
    var sprval = sprite_get_width(sprite_index)/flickerVal;
    
    // Portal direction
    var pdir = (px-x) > 0 ? 1 : -1;
    
   
	var offset = 0;
	
	if(pref.isFloor)		offset = pref.y > y ? 120 : 40;
	else if(pref.isCeil)	offset = pref.y > y ? 40 : 120;
	else if(pref.rightWall) offset = pref.x > x ? 120 : 40;
	else					offset = pref.x > x ? 40 : 120;
   
	
	
	
	
	
    //draw_sprite_ext(light,0,px - (pref.image_angle == 90 ? 97.5 : pref.image_angle == -90 ? -97.5 : 0),py - (pref.image_angle == 0 ? 97.5 : pref.image_angle == 180 ? -97.5 : 0),.75,.75,pref.image_angle,c_white,1);
    //draw_sprite_ext(light,0,px - (pref.image_angle == 90 ? -11 : pref.image_angle == -90 ? 11 : 0),py - (pref.image_angle == 0 ? -11 : pref.image_angle == 180 ? 11 : 0),.75,-.10,pref.image_angle,c_white,1);
    
    // Additional portal mask lighting
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);


	draw_set_alpha(1);
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_index,image_index, x,y,small*spr_dir,small,0,c_white,(flickercount/100)+min(.4,.8-((point_distance(x,y,px,py)/offset))/1.4));
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite_ext(light,0,px - (pref.image_angle == 90 ? 97.5 : pref.image_angle == -90 ? -97.5 : 0),py - (pref.image_angle == 0 ? 97.5 : pref.image_angle == 180 ? -97.5 : 0),.75,.75,pref.image_angle,c_white,1);
	draw_sprite_ext(light,0,px - (pref.image_angle == 90 ? -11 : pref.image_angle == -90 ? 11.5 : 0),py - (pref.image_angle == 0 ? -11.5 : pref.image_angle == 180 ? 11.5 : 0),.75,-.10,pref.image_angle,c_white,1);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	
}
else
{
    outline_color = [ 0, 0, 0 ];
}

j++;

}

gpu_set_blendmode(bm_normal);



var alpha_screen = clamp(black_screen_timer/5-1,0,1);
draw_set_alpha(alpha_screen);
draw_rectangle_color(0,0,room_width,room_height,monBlue,monBlue,monBlue,monBlue,false);
draw_set_alpha(1);


// Fstrong screen
if (black_screen == true)
{
	if(black_screen_timer < 10) black_screen_timer+=2;
	if(hit_player_obj != noone) draw_sprite_ext(hit_player_obj.sprite_index,0,hit_player_obj.x,hit_player_obj.y,hit_player_obj.spr_dir * (hit_player_obj.small_sprites+1),(hit_player_obj.small_sprites+1),0,c_white,1);
}
else
{
	if(black_screen_timer > 0) black_screen_timer--;
}


// Fstrong fx
if (black_screen == true) 
{
    draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*2,2,0,c_black,1)
    with(oPlayer) if(player != other.player) draw_sprite_ext(sprite_index,image_index,x,y,spr_dir* (small_sprites+1),(small_sprites+1),0,c_black,1)
}



// Slash
if(slashsub > 0 && floor(slashsub) < 6 && black_screen == false && hit_player_obj != noone){
    gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_get("slash"),slashsub,hit_player_obj.x,hit_player_obj.y-30,spr_dir,1,slashangle,c_white,.3);
	gpu_set_blendmode(bm_normal);
}

// Portal afterimage
if(portal_afterimage.timer > 0 && !(attack == AT_USPECIAL && window > 1))
{
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(portal_afterimage.sprite_index,portal_afterimage.image_index,portal_afterimage.x,portal_afterimage.y,portal_afterimage.spr_dir*2,2,0,last_pcolor == 1 ? monLightBlue : monRed,portal_afterimage.timer / 20);
	gpu_set_blendmode(bm_normal);
} else if(attack == AT_USPECIAL && window > 1) portal_afterimage.timer = 0;

// Parry fx
if( (state == PS_IDLE || hit_fspec) && (get_gameplay_time()%500 == 0 || aberration_timer < 30))
{
	if(aberration_timer == 30) aberration_timer = 0;
	if(hit_fspec) hit_fspec = false;
	
    gpu_set_blendmode(bm_add);
    
    var statemax = 2;
    
    if(aberration_timer < 18)
    {
    draw_sprite_ext(sprite_index,image_index,
    x+ (1 - cos((aberration_timer/5 * 3.14) / 2))*statemax,
    y + (1 - cos((aberration_timer/4 * 3.14) / 2))*statemax,
    spr_dir*2,2,0,monBlue,abs(15-aberration_timer)/15)
    
    draw_sprite_ext(sprite_index,image_index,
    x - (1 - cos((aberration_timer/5 * 3.14) / 2))*statemax,
    y - (1 - cos((aberration_timer/4 * 3.14) / 2))*statemax,
    spr_dir*2,2,0,monRed,abs(15-aberration_timer)/15)
    }
    aberration_timer++;
    
    gpu_set_blendmode(bm_normal);
}




// Portal white
if(portal_white > 0)
{
	gpu_set_blendmode(bm_normal);
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index, x,y,small*spr_dir,small,0,c_white,(portal_white <= 10) ? (portal_white / 10) : 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	

}




// Respawn
if(respawn_flash > 0 && state != PS_RESPAWN)
{
	gpu_set_blendmode(bm_normal);
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index, x,y,small*spr_dir,small,0,c_white,(respawn_flash / 10));
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}

// Portal hitbox preview
//draw_rectangle_color(x-10 + (hsp/2),y-char_height,x+10 + (hsp/2),y- 5 +(vsp/2),c_red,c_red,c_red,c_red,c_red);
//draw_rectangle_color(x-5 ,y+2,x+5 ,y+2 ,c_red,c_red,c_red,c_red,c_red);

shader_end();



//draw_rectangle(x, y,  500, 500,monRed, monRed,10);





