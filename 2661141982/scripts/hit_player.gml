if(my_hitboxID.attack == AT_USPECIAL)
{
    shoryu_obj = hit_player_obj;
    if my_hitboxID.hbox_num == 1 sound_play(sound_get("fairspike"))
}
else if my_hitboxID.attack == AT_NAIR
{
    old_vsp -= 1
}
else if my_hitboxID.attack == AT_DAIR
{
    vsp = -8
}
else if my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num < 5 and !hit_player_obj.clone
{
    hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*10),0.2)
    hit_player_obj.y = lerp(hit_player_obj.y,y,0.3)
}
else if (my_hitboxID.attack == AT_FAIR and my_hitboxID.hbox_num == 2)
{
    sound_play(sound_get("fairspike"))
}
else if (my_hitboxID.attack == AT_EXTRA_1)
{
    sound_play(sound_get("lightready"));
}
else if (my_hitboxID.attack == AT_FSTRONG)
{
    has_hit_player = true;
}
else if my_hitboxID.attack == 49 and !hit_player_obj.clone
{
    if(my_hitboxID.hbox_num <= 6)
    {
        if(my_hitboxID.hbox_num == 1)
        {
            fs_tempcheck = 0;
            //check for too many players
            for(i = 0; i < 4; i++)
            {
                if (is_player_on(i+1))
                    fs_tempcheck ++;
            }
            if(fs_tempcheck > 2)
                fs_cinematic = false;
            else
                fs_cinematic = true;
        }
        if(my_hitboxID.hbox_num == 6 && fs_cinematic)
        { 
            set_attack_value(49, AG_NUM_WINDOWS, 10);
            window = 6
            window_timer = 0
            hit_player_obj.hitstun = 9999;
            fs_target = hit_player_obj;
            hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*90),0.4)
            hit_player_obj.y = lerp(hit_player_obj.y,y-40,0.3)
        }
        else
        {
            hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*40),0.4)
            hit_player_obj.y = lerp(hit_player_obj.y,y-20,0.3)
        }
    }
    if(my_hitboxID.hbox_num == 8)
    {
        hit_player_obj.should_make_shockwave = false;
    }
}


var spawn = false;
var spawn_list = [AT_DAIR, AT_FSTRONG, AT_DSTRONG, AT_NSPECIAL]

spawn = array_find_index(spawn_list,my_hitboxID.attack) != -1
var offx = lerp(my_hitboxID.x, hit_player_obj.x, 0.5);
var offy = lerp(my_hitboxID.y, hit_player_obj.y - (hit_player_obj.char_height/2), 0.5);

if (my_hitboxID.attack == AT_FAIR and my_hitboxID.hbox_num == 2)
{
    spawn = false
    var t=spawn_hit_fx(offx + (my_hitboxID.hit_effect_x*spr_dir), offy + my_hitboxID.hit_effect_y, sweet);
    t.depth = depth - 4  
    exit;
}

if (my_hitboxID.attack == AT_USTRONG and my_hitboxID.hbox_num mod 2 == 0)
{
    spawn = true;
}

if (my_hitboxID.attack == AT_USPECIAL and my_hitboxID.hbox_num < 3) or my_hitboxID.attack == AT_DSPECIAL or my_hitboxID.attack == AT_USPECIAL_2 or my_hitboxID.attack == AT_NSPECIAL_2 exit;

var t=spawn_hit_fx(offx + (my_hitboxID.hit_effect_x*spr_dir), offy + my_hitboxID.hit_effect_y, spawn ? splashfx : small);
t.depth = depth - 4
if (my_hitboxID.attack == AT_NSPECIAL) 
{
    t.draw_angle = 90
    if(my_hitboxID.sprite_index == sprite_get("nspecial_projfire"))
    {
        create_hitbox(AT_NSPECIAL, my_hitboxID.hbox_num+1,my_hitboxID.x-10*my_hitboxID.spr_dir,my_hitboxID.y);
    }
}