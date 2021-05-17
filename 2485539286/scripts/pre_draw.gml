////

shader_start();

if move_cooldown[AT_EXTRA_1] > 0 && hhh == 0 && move_cooldown[AT_EXTRA_1] < 290{
    
            draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 , famix , famiy , spr_dir, 1, 0 , c_white,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);
         draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 , famix , famiy , spr_dir, 1, 0 , c_black,  0.4 - move_cooldown[AT_USPECIAL_GROUND]/30);

        draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 + 4, famix , famiy , spr_dir, 1, 0 , c_white,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);
         draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 + 4, famix , famiy , spr_dir, 1, 0 , c_black,  0.4 - move_cooldown[AT_USPECIAL_GROUND]/30);

        draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 - 4, famix , famiy , spr_dir, 1, 0 , c_white,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);
         draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 - 4, famix , famiy , spr_dir, 1, 0 , c_black,  0.4 - move_cooldown[AT_USPECIAL_GROUND]/30);


}


if  move_cooldown[AT_EXTRA_1] % 4 < 2 &&  move_cooldown[AT_EXTRA_1] < 30 {
       draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3, famix , famiy , spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	
      draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3 + 4, famix , famiy , spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	
      draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3 - 4, famix , famiy , spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	
}

if hhh != 0 {
    
draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3, famix , famiy , spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	
draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3 + 4, famix , famiy , spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	
draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3 - 4, famix , famiy , spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	


if get_gameplay_time()% 3 == 0 {
gpu_set_blendmode(bm_add);

     draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3, famix - 2 + random_func(1,4,true) , famiy - 2 + random_func(2,4,true), spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	
     draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3 + 4, famix - 2 + random_func(1,4,true), famiy - 2 + random_func(2,4,true), spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	
     draw_sprite_ext(sprite_get("hhh"), get_gameplay_time()/3 - 4, famix - 2 + random_func(1,4,true), famiy - 2 + random_func(2,4,true), spr_dir, 1, 0 , c_white ,  0.6 - move_cooldown[AT_USPECIAL_GROUND]/30);	

gpu_set_blendmode(bm_normal);
}


if hhh <= 2 {
         draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 + 4, famix - 2 + random_func(1,4,true), famiy - 2 + random_func(2,4,true), spr_dir, 1, 0 , c_white,  0.7 - move_cooldown[AT_USPECIAL_GROUND]/3);
         draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 + 4, famix - 2 + random_func(1,4,true), famiy - 2 + random_func(2,4,true), spr_dir, 1, 0 , c_black,  0.2 - move_cooldown[AT_USPECIAL_GROUND]/3);

    
}

if hhh <= 1 {
         draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 - 4, famix - 2 + random_func(1,4,true), famiy - 2 + random_func(2,4,true), spr_dir, 1, 0 , c_white ,  0.7 - move_cooldown[AT_USPECIAL_GROUND]/3);
         draw_sprite_ext(sprite_get("hhh2"), get_gameplay_time()/3 - 4, famix - 2 + random_func(1,4,true), famiy - 2 + random_func(2,4,true), spr_dir, 1, 0 , c_black ,  0.2 - move_cooldown[AT_USPECIAL_GROUND]/3);

    
}

if attacking {

if  attack == AT_EXTRA_1 && window == 1 && window_timer > 1 {
        draw_sprite_ext(sprite_get("pointer"), 0, x + 20*spr_dir, y - 50 , spr_dir*-1, 1, throw_dir*spr_dir , c_white ,  1 - window_timer/20);
         gpu_set_blendmode(bm_add);    
          draw_sprite_ext(sprite_get("pointer"), 0, x + 20*spr_dir, y - 50 , spr_dir*-1, 1, throw_dir*spr_dir , c_white ,  0.2 + (get_gameplay_time()%4)/6 - window_timer/20);
         gpu_set_blendmode(bm_normal);    
    
    
}
         
if nfloat < 5 {         
  gpu_set_blendmode(bm_add);    
    switch attack {

        case AT_FTILT :
            draw_sprite_ext(sprite_get("ftiltex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  1.5 - state_timer/15);
        break ; 

        case AT_DTILT :
            draw_sprite_ext(sprite_get("dtiltex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  1.5 - state_timer/15);
        break ; 

        case AT_UTILT :
            draw_sprite_ext(sprite_get("utiltex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  1.5 - state_timer/15);
        break ; 

        case AT_FAIR:
            draw_sprite_ext(sprite_get("fairex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  1.5 - state_timer/15);
        break ; 
        
        case AT_BAIR:
            draw_sprite_ext(sprite_get("bairex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  1.5 - state_timer/15);
        break ;  
        
        case AT_DAIR:
            draw_sprite_ext(sprite_get("dairex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  1.5 - state_timer/15);
        break ;            

        case AT_UAIR:
            draw_sprite_ext(sprite_get("uairex"), image_index, x , y , spr_dir, 1, 0 , c_white ,  1.5 - state_timer/15);
        break ;  

    }
   gpu_set_blendmode(bm_normal);  
}
}

}

if hhh = 0 && attacking {
        switch attack {
            
            
            
            case AT_FSPECIAL :
                  draw_sprite_ext(sprite_get("pointer"), 0, famix , famiy , spr_dir*-1, 1, 0 , c_white ,  1.5 - state_timer/15);
                  
                    gpu_set_blendmode(bm_add);  
                  draw_sprite_ext(sprite_get("fspecial_hurt"), image_index, x - shsp, y - svsp , spr_dir, 1, 0 , c_white ,  0.6 + 0.4 - state_timer/90);
                   draw_sprite_ext(sprite_get("fspecial_hurt"), image_index, x - shsp*3, y - svsp*3 , spr_dir, 1, 0 , c_white ,  0.4 + 0.4 - state_timer/90);
                   draw_sprite_ext(sprite_get("fspecial_hurt"), image_index, x - shsp*5, y - svsp*5 , spr_dir, 1, 0 , c_white ,  0.2 + 0.4 - state_timer/90);
                    gpu_set_blendmode(bm_normal);  
            break ; 
            
            
            
            case AT_DSPECIAL :
            
                          gpu_set_blendmode(bm_add);  
                         draw_sprite_ext(sprite_get("dspecial_hurt"), image_index, x - shsp, y - svsp , spr_dir, 1, 0 , c_white ,  0.6 + 0.4 - state_timer/90);
                        draw_sprite_ext(sprite_get("dspecial_hurt"), image_index, x - shsp*3, y - svsp*3 , spr_dir, 1, 0 , c_white ,  0.4 + 0.4 - state_timer/90);
                        draw_sprite_ext(sprite_get("dspecial_hurt"), image_index, x - shsp*5, y - svsp*5 , spr_dir, 1, 0 , c_white ,  0.2 + 0.4 - state_timer/90);
                          gpu_set_blendmode(bm_normal);  
             
                          draw_sprite_ext(sprite_get("pointer"), 0, famix , famiy , spr_dir*-1, 1, 270*spr_dir , c_white ,  1.5 - state_timer/15);
            break ; 
            
            
            
            case AT_USPECIAL :
            
                    gpu_set_blendmode(bm_add);  
                    draw_sprite_ext(sprite_get("uspecial_hurt"), image_index, x - shsp, y - svsp , spr_dir, 1, 0 , c_white ,  0.6 + 0.4 - state_timer/90);
                    draw_sprite_ext(sprite_get("uspecial_hurt"), image_index, x - shsp*3, y - svsp*3 , spr_dir, 1, 0 , c_white ,  0.4 + 0.4 - state_timer/90);
                    draw_sprite_ext(sprite_get("uspecial_hurt"), image_index, x - shsp*5, y - svsp*5 , spr_dir, 1, 0 , c_white ,  0.2 + 0.4 - state_timer/90);
                    gpu_set_blendmode(bm_normal);  
                     
                    draw_sprite_ext(sprite_get("pointer"), 0, famix , famiy , spr_dir*-1, 1, 90*spr_dir , c_white ,  1.5 - state_timer/15);
            break ; 
        }
}

shader_end();








////////////codec

///
    //get the stuff
if nctimer > 0 && ( attacking && attack == AT_TAUNT && state_timer > 1 && window <= 2 ){    



var spr = get_char_info(hit_player_obj.player, INFO_CHARSELECT);
var info1 = ((hit_player_obj.hitstun_grav + 0.5) * (hit_player_obj.air_friction*10 + 0.5)) / (hit_player_obj.knockback_adj*hit_player_obj.knockback_adj*hit_player_obj.knockback_adj)
var info2 = hit_player_obj.walk_speed + hit_player_obj.dash_speed*3 + hit_player_obj.initial_dash_speed*4
var info3 = hit_player_obj.jump_speed + hit_player_obj.djump_speed + hit_player_obj.max_djumps*4 
+ hit_player_obj.short_hop_speed + hit_player_obj.leave_ground_max + hit_player_obj.max_jump_hsp + hit_player_obj.air_max_speed*2 
+ hit_player_obj.jump_change*2 + hit_player_obj.leave_ground_max * (hit_player_obj.air_accel*100)
var img = hit_player_obj.select;
var scale = 1+(hit_player_obj.select >= 17);

if down_down {
var codec1 = "Endurance      :  " + string(info1 * 8);
var codec2 = "Ground agility  :  " + string(info2/6.1);
var codec3 = "Air control     :  " + string(info3/25);  
}

if !down_down {
    
if "ncode1" in hit_player_obj && hit_player_obj.select > 16{

if hit_player_obj.ncode1 != "Sorry dude, peeping into this girl data is a no-no." 
and  hit_player_obj.ncode1 != "This data is off limit." {  
    
    
if "nname" in hit_player_obj {
var name = hit_player_obj.nname 
}else {
var name = get_char_info(hit_player_obj.player, INFO_STR_NAME);
}

var codec1 = hit_player_obj.ncode1;
var codec2 = hit_player_obj.ncode2;
var codec3 = hit_player_obj.ncode3;
}

if hit_player_obj.ncode1 == "Sorry dude, peeping into this girl data is a no-no." {
var name = "Katie Helga Vladimir"    
var codec1 = "The [Hunter of Scorp]";
var codec2 = "Special Unit who handle destructive jobs";
var codec3 = "Her Threat Level is at least multiple cities.";
    
}

if hit_player_obj.ncode1 == "This data is off limit." {
var name = "Lynk Umbral"      
var codec1 = "The [Glitch of Scorp]";
var codec2 = "Oh hey, dat's me in Mebodi mk.6";
var codec3 = "Different color tho, but seems nice.";
    
}

} else {
    if "nname" in hit_player_obj {
    var name = hit_player_obj.nname 
    }else {
    var name = get_char_info(hit_player_obj.player, INFO_STR_NAME);
    var codec1 = "Other world lifeform detected.";
    var codec2 = "           404 ";
    var codec3 = "   No further data found.";
    }
}



///Zetter
if "ncode1" not in hit_player_obj && hit_player_obj.select == 2 {
var codec1 = "General of Fire Kingdom, last seen near Abyss Gate.";
var codec2 = "High destructive abilities, capable of manipulate";
var codec3 = "fire element and amplify it upon physical contact.";  
}

///Orcane
if "ncode1" not in hit_player_obj && hit_player_obj.select == 3 {
var codec1 = "An entity with the codename of [WaterDog]";
var codec2 = "Highly dangerous individual with fluid-base";
var codec3 = "shapeshifting ability, don't lets your guard down.";  
}

///Wrastor
if "ncode1" not in hit_player_obj && hit_player_obj.select == 4 {
var codec1 = "Unknown Rank Agent of Air Armada.";
var codec2 = "Skilled in arcrobatic and aerial combat.";
var codec3 = "High in agility and stamina, low in vitality.";  
}

///Kragg
if "ncode1" not in hit_player_obj && hit_player_obj.select == 5 {
var codec1 = "Guardian of the Rock Wall.";
var codec2 = "He has immense strength and the ability";
var codec3 = "to build tactical rock-base constructs.";  
}

///Forb
if "ncode1" not in hit_player_obj && hit_player_obj.select == 6 {
var codec1 = "Traitor of Fire Kingdom(?), last seen in the East(?).";
var codec2 = "The credibility of target info and whereabout";
var codec3 = "is extremely low, approach with utmost caution.";  
}

///Maypul
if "ncode1" not in hit_player_obj && hit_player_obj.select == 7 {
var codec1 = "The Sylvan Watcher.";
var codec2 = "She can rush the opponent with her very high speed";
var codec3 = "and immobilize them with her whip attacks.";  
}

///Absa
if "ncode1" not in hit_player_obj && hit_player_obj.select == 8 {
var codec1 = "Architect of [???].";
var codec2 = "Her presence on the battle field is terrifying";
var codec3 = "due to the flexible nature of her electric power.";  
}

///Etalus
if "ncode1" not in hit_player_obj && hit_player_obj.select == 9 {
var codec1 = "Legendary warrior of the Glacial.";
var codec2 = "One of the last surviving members of the Harbor Guard";
var codec3 = "with ability to conjure icicles and freezing opponents.";  
}

///Ori
if "ncode1" not in hit_player_obj && hit_player_obj.select == 10 {
var codec1 = "Exotic organism made from unknown matter.";
var codec2 = " ";
var codec3 = "404 ";  
}

///Ranno
if "ncode1" not in hit_player_obj && hit_player_obj.select == 11 {
var codec1 = "The self-claimed 'Pacifist'.";
var codec2 = "Highly skilled martial artist with ability";
var codec3 = "to conjure poisonous darts and bubble traps.";  
}


///Clairen
if "ncode1" not in hit_player_obj && hit_player_obj.select == 12 {
var codec1 = "Mysterious Swordman(?gender?).";
var codec2 = "They have traces of strange matter on them,";
var codec3 = "suspected to be a time traveler.";  
}


///Sylvanos
if "ncode1" not in hit_player_obj && hit_player_obj.select == 13 {
var codec1 = "The Alpha plant.";
var codec2 = "Deity figure that became corrupt and tried to turn ";
var codec3 = "all of Aether into a forest. Destroy on sight";  
}

///Elliana
if "ncode1" not in hit_player_obj && hit_player_obj.select == 14 {
var codec1 = "A thief that stole Engr.Ayala's steam mech.";
var codec2 = "She uses the stolen mech to take revenge on Air Armada.";
var codec3 = "The mech is modified and armed with more arsenals.";  
}

///Shovel Knight
if "ncode1" not in hit_player_obj && hit_player_obj.select == 15 {
var codec1 = "Weilder of the [???] made from unknown marterial.";
var codec2 = " ";
var codec3 = "404";  
}

}

}








if nctimer > 0 && ( attacking && attack == AT_TAUNT && state_timer > 1 && window <= 2 ){ 

//draw the stuff.

with hit_player_obj shader_start(); //this starts the color shader for the opponent's colors :)



if nctimer < 10 && nctimer % 6 < 3{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 212 - nctimer,y - 170 - nctimer,scale,scale,0,-1,.2);
}

if nctimer > 10 && nctimer % 12 < 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 220,y - 180,scale,scale,0,-1,.5);
}

if nctimer > 20 && nctimer % 15 < 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180,scale,scale,0,-1,.5);
}

if nctimer > 30 && nctimer % 15 > 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180,scale,scale,0,-1,.5);
}

with hit_player_obj shader_end();

if taunt_down {
    
if !down_down {
   if nctimer > 36 {
   draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,name);
   }
} else {
    draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"General stats");
}

if nctimer > 55{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -130,codec1);  
}
if nctimer > 65{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -110,codec2);  
}
if nctimer > 75{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -90,codec3);
  if !down_down {
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 320)+ 4 ,y -55,"press Down to scan");
  }
}
}

if cheapmode = 1 {
if nctimer > 85{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -60,
  "Target show signs of Anomaly, engage with lethal force?");
}

if nctimer > 95{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 100 ,y -45,
  "           Y: Atk   N: Spec");
}
}

if nctimer < 36 && nctimer > 6{
    
if nctimer % 12 < 12 {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database .");
}

if nctimer % 12 < 8 {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database . .");
}

if nctimer % 12 < 4 {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database . . .");
}

}


shader_start();
if nctimer > 10 {
   if nctimer > 10 && nctimer % 15 < 6{
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100) ,y - 162);
   }
   if nctimer > 10 && nctimer % 15 > 6{
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 4,y - 162);
   }
   draw_sprite(sprite_get("nc1"),nctimer/4,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 2,y - 162);
} else {
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 212 - nctimer,y - 150 - nctimer);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 12 + nctimer,y - 142 - nctimer);
}


shader_end();


}









