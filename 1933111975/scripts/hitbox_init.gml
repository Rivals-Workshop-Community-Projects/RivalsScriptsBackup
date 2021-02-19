//Initialize horizontal speed as well as RNG raindrop positions; unused because of lag

/*if (attack == AT_DSPECIAL){
    i = 0;
    rngoffset = 0;
    if (hbox_num == 1){
        hsp = player_id.hsp;
        rngoffset = 0;
    }
    if (hbox_num == 2){
        with (asset_get("obj_article1")){
            if (player_id == other.player_id && abs(x - other.x < 10)){
                other.rngoffset = replacedcount;
            }
            else{
                other.rngoffset = 0;
            }
        }
    }
    repeat(10){
        raindrops[i, 0] = random_func(i + rngoffset, 11, true); //Sprite index
        raindrops[i, 1] = (random_func(i + rngoffset, 5, true) - 25 + (5 * i)) * spr_dir; //X coord
        raindrops[i, 2] = random_func(i + rngoffset, 80, true) - 80; //Y coord
        i++;
    }
}*/

if (attack == AT_DSPECIAL){
    rainindex = random_func(1, 6, true);
}

shoulddie = false;          //Used to destroy hitbox, even though there's a built in thing for it but oh well
shouldspawnmolotov = false; //Up Special; used to spawn article3
target = noone;             //Up Special AND Forward Special; used to drag opponent
hitplayer = false;          //Forward Special; have I hit someone or not
hitbox = 2;                 //Forward Special; set hitbox
hitplayertimer = 0;

//Funny move
hitspeed = 20;
batted = false;
battime = -1;



//Add to Forward Special SFX
if (attack == AT_FSPECIAL && hbox_num == 1){
    sound_play(asset_get("sfx_ell_big_missile_fire"));
}



orig_image_yscale = image_yscale;
orig_image_xscale = image_xscale;