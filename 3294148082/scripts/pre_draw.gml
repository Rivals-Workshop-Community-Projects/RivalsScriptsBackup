// pre-draw
draw_set_halign(fa_left)
tTimer = 0
        draw_set_font(1)

if state = PS_PARRY or state = PS_PARRY_START {
//    draw_set_alpha(1-image_index/6)
  //  draw_sprite(sprite_get("parrybg"),image_index,x,y)
    //draw_set_alpha(1)
}


if !healdraw = 0 {
    draw_sprite_ext(sprite_get("heart"),1,healedperson.x-18,healedperson.y-(2.1*healedperson.char_height)-4,1,1,0,c_white,healtimer)
        if healdraw > 9 {
    draw_sprite_ext(sprite_get("dmgfont"),floor(healdraw/10),healedperson.x-20+4,healedperson.y-(2.1*healedperson.char_height),1,1,0,c_white,healtimer)
    draw_sprite_ext(sprite_get("dmgfont"),healdraw,healedperson.x-10+6,healedperson.y-(2.1*healedperson.char_height),1,1,0,c_white,healtimer)
            
        } else {
    draw_sprite_ext(sprite_get("dmgfont"),healdraw,healedperson.x-10,healedperson.y-(2.1*healedperson.char_height),1,1,0,c_white,healtimer)
        
        }
}






if attack = AT_TAUNT and state = PS_ATTACK_GROUND {
draw_sprite(sprite_get("talk"),talkbox,x-100,y-150)
    } else {
draw_sprite(sprite_get("talk"),talkbox,x-100,y-150)
    }
    
    if talkbox > 2 {
        draw_text_transformed_color(x-92,y-137+sin(atimer/8),string_copy(string(taunttext),1,floor(textamount)),1,1,sin(atimer/10),c_black,c_black,c_black,c_black,1)
    } else {
    }
       // draw_debug_text(x-80,y-110,string(taunttext))
           if (attack = AT_FSTRONG or attack = AT_DSTRONG or attack = AT_USTRONG) and state = PS_ATTACK_GROUND and state_timer > 3{
    if sellbox < 3 {
        sellbox = floor(sellbox+1)
    } else {
        sellbox = 3
    }
    } else {
    if sellbox > 0 {
        sellbox = floor(sellbox-1)
    } else {
    	sellbox = 0
    }
    }


       