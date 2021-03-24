if(attack == AT_FSTRONG){
    sound_play(asset_get("sfx_blow_heavy1"));
}

if (attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) // I guess
{    
       var k = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, mud_hit_fx1);
       k.depth = depth - 1;
}

if (attack == AT_DTILT && my_hitboxID.hbox_num == 1) // I guess
{    
        if (moist_level = 2 || moist_level = 3) {
            which_fx = mud_hit_fx1;
        }
        {
var k = spawn_hit_fx(my_hitboxID.x + (spr_dir * 12), my_hitboxID.y - -15, which_fx);
       k.depth = depth - 1;
}}

if (attack == AT_FTILT && my_hitboxID.hbox_num == 1)
{
    var which_fx = mud_hit_fx1;
    if (moist_level = 2 || moist_level = 3) 
    {
       which_fx = mud_hit_fx2;
    }
var k = spawn_hit_fx(my_hitboxID.x + (spr_dir * 12), my_hitboxID.y - -15, which_fx);
    k.depth = depth - 1;
}

if ((attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 4) || (attack == AT_USTRONG && my_hitboxID.hbox_num == 7 && moist_level = 3 || attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1)) // I guess
{    
       var k = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, mud_hit_fx2);
       k.depth = depth - 1;
}

if (attack == AT_DSPECIAL && my_hitboxID.hbox_num ==1){
        var k = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, mud_hit_fx1);
       k.depth = depth - 1;
}

    /*
   if(attack == AT_FSTRONG)
{
   if( 50 > random_func(0, 150, true))
    {
        if (spr_dir = 1){
            which_fx = bonk_hit_fx1;
           bonk = true;

        } else {
            which_fx = bonk_hit_fx2;
          bonk = true;

    }
var k = spawn_hit_fx(my_hitboxID.x + (spr_dir * 12), my_hitboxID.y - -25, which_fx);
       k.depth = depth - 1;
    }
} */

if(attack == AT_FSTRONG && bonk = true)
{
    if(spr_dir = 1){
        which_fx = bonk_hit_fx1;
    } else {
        which_fx = bonk_hit_fx2;
    }
var k = spawn_hit_fx(my_hitboxID.x + (spr_dir * 12), my_hitboxID.y - -25, which_fx);
       k.depth = depth - 1;
}

if(attack == AT_USPECIAL_2){
    if (my_hitboxID.hbox_num ==1 ||  my_hitboxID.hbox_num == 2 ||  my_hitboxID.hbox_num == 3){
            var k = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, mud_hit_fx1);
       k.depth = depth - 1;
}} 

if(attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 4){
            var k = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, mud_hit_fx2);
       k.depth = depth - 1;
}

if(attack == AT_UTILT_2){
    if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5){
            var k = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, mud_hit_fx1);
    k.depth = depth - 1;
}} 

if(attack == AT_USTRONG && moist_level = 3){
    if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6){
            var k = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, mud_hit_fx1);
    k.depth = depth - 1;
}}
    
if(attack == AT_USPECIAL_2 && moist_level = 3 && my_hitboxID.hbox_num == 7){
            var k = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, mud_hit_fx2);
    k.depth = depth - 1;
} 