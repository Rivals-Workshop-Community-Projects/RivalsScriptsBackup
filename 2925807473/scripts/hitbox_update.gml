//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around
if (attack == AT_NSPECIAL && hbox_num == 1 && hitbox_timer == 1)
{
if player_id.chainaim == -1{
x = x+ 50 * spr_dir
hsp = 22 * spr_dir;
vsp = -.1;}

if player_id.chainaim == 1{
vsp = lengthdir_y(21,90);
x = x + 30 * spr_dir
y = y - 90
}

if player_id.chainaim == 2{
x = x - 30 * spr_dir
y = y + 15
vsp = lengthdir_y(21,-90);
}

if player_id.chainaim == 3{
x = x + 60 * spr_dir
y = y - 30
hsp = 22 * spr_dir
vsp = lengthdir_y(21 * spr_dir,45 * spr_dir);}

if player_id.chainaim == 4{
x = x + 30 * spr_dir
hsp = 22 * spr_dir
vsp = lengthdir_y(21 * spr_dir,-45 * spr_dir);}

if player_id.chainaim == 5{
x = x + 1 * spr_dir
y = y - 25
hsp = 19 * spr_dir
vsp = lengthdir_y(21 * spr_dir,80 * spr_dir);}

}

if (attack == AT_NSPECIAL && hbox_num == 1 && hitbox_timer == 12) || player_id.attack == AT_NSPECIAL && player_id.special_pressed == 1 && player_id.chainstocks > 0 
{
hsp = 0
vsp = 0
priority = 0
player_id.chainx = x
player_id.chainy = y
player_id.chainlength = hitbox_timer
can_hit = array_create(20, 0)
can_hit[player] = false
}

if (attack == AT_NSPECIAL && hbox_num == 1 && hitbox_timer == 12 && player_id.window_num == 4){
mask_index = (asset_get("empty_sprite"))
}

if (attack == AT_USPECIAL && hbox_num == 1 && hitbox_timer == 1){
x = x + 66 * spr_dir
y = y - 73
hsp = 22 * spr_dir
vsp = lengthdir_y(21 * spr_dir,45 * spr_dir);
}

if (attack == AT_USPECIAL && hbox_num == 1 && player_id.uspechit == true){
player_id.chainx = x
player_id.chainy = y
}


if (attack == AT_USPECIAL && hbox_num == 1 && player_id.uspechit == true && player_id.window == 5 && player_id.window_timer == 8){
hsp = -19 * spr_dir;
vsp = -4
}

if (attack == AT_USPECIAL && hbox_num == 1 && player_id.uspechit == true && player_id.window == 5 && player_id.window_timer == 9){
create_hitbox(AT_USPECIAL, 2, x + 15 * spr_dir, y - 30);
hsp = -17 * spr_dir;
proj_angle = 60 * spr_dir
can_hit = array_create(20, 0)
can_hit[player] = false
}

if (attack == AT_USPECIAL && hbox_num == 1 && hitbox_timer == 17 && player_id.uspechit == false){
hsp = -22 * spr_dir
vsp = lengthdir_y(21 * spr_dir,-47 * spr_dir);
can_hit = array_create(20, 0)
can_hit[player] = false
}
//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;


if (multihit_amount > 0)
{
    if (instance_exists(multihit_hit_player) && multihit_hit_player != noone)
    {
        if (!in_hitpause)
        {
            if (proj_hit_count <= multihit_amount - 1 && !proj_multihit_final) //multihitting
            {
                with (multihit_hit_player) //forces the hit player to travel along the projectile so they won't fall off
                {
                    //what this chunk of code does is record the size of the hitbox
                    other.old_xscale = other.image_xscale;
                    other.old_yscale = other.image_yscale;

                    //this part increases the size of the hitbox for the collision check
                    other.image_xscale = ((other.image_xscale*200)+other.additional_radius)/200;
                    other.image_yscale = ((other.image_yscale*200)+other.additional_radius)/200;

                    if (place_meeting(x, y, other)) //collision check
                    {
                        //this checks how close the hit player is to the center of the projectile
                        //affecting their pull into it, making it harded to DI the closer the player is to the center
                        var dist = point_distance(x, y, other.x, other.y);
                        var target_hsp = other.hsp * 0.6;
                        var target_vsp = other.vsp - gravity_speed * !free;
                        hsp = lerp(hsp, target_hsp, (1-clamp(0.05*dist, 0, 1))); //pull towards the center of the projectile
                        vsp = lerp(vsp, target_vsp, (1-clamp(0.05*dist, 0, 1)));

                        other.multihit_escape_time = 0; //reset the escape value, which allows the hit player to escape the projectile
                    }
                    else
                    {
                        other.multihit_escape_time ++; //counts up, if it goes over 5 the player will escape the projectile
                        if (other.multihit_escape_time > 5) other.multihit_hit_player = noone;
                    }

                    //reset the size of the hitbox to the proper size so it doesn't stay and grow
                    other.image_xscale = other.old_xscale;
                    other.image_yscale = other.old_yscale;
                }

                proj_gap_timer --; //will count down all the time and act as a cooldown
                if (proj_gap_timer == 0) proj_hit_count ++; //increment hit count when the timer reaches 0
                
                if (proj_gap_timer <= 0) //if the gap timer is/under 0, allow the proectile to hit again
                {
                    for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = true;
                    if (proj_hit_count >= multihit_amount - 1) proj_multihit_final = true; //if the hit count is almost reaching the amount, count the next hit as final
                }
            }
            
            if (proj_multihit_final) //final hit
            {
                kb_value = multproj_saved_values[0];
                kb_scale = multproj_saved_values[1];
                hitpause = multproj_saved_values[2];
                hitpause_growth = multproj_saved_values[3];
                hit_effect = multproj_saved_values[4];
                sound_effect = multproj_saved_values[5];
                kb_angle = multproj_saved_values[6];
                damage = multproj_saved_values[7];
                can_tech = multproj_saved_values[8];
            }
        }
        else
        {
            hitbox_hitstop = multihit_hit_player.hitstop;
            if (hitbox_hitstop <= 0) in_hitpause = false;
        }
    }
}