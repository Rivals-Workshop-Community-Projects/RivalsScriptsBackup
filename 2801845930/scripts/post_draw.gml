//post-draw

if (state == PS_IDLE || state == PS_WALK || state == PS_PARRY_START || state == PS_RESPAWN) {
    shader_start();
    draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
    shader_end();
}

if (state == PS_ATTACK_AIR && attack == AT_NAIR) {
    if (spr_dir == 1) {
        shader_start();
        draw_sprite_ext(sprite_get("nair_r"), -1, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
    } else {
        shader_start();
        draw_sprite_ext(sprite_get("nair_l"), -1, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
}

// Intro
if (state == PS_SPAWN) {
    if (SpamNeoIntroTimer <= 50) {
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
    } else if (SpamNeoIntroTimer > 50 && SpamNeoIntroTimer <= 56) {
        draw_sprite_ext(sprite_get("intro"), 7, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_start();
        draw_sprite_ext(sprite_get("eyepink"), 0, x + 6 * spr_dir, y - 82, 1, 1, 0, c_white, 1);
        draw_sprite_ext(sprite_get("eyeyellow"), 0, x - 6 * spr_dir, y - 76, 1, 1, 0, c_white, 1);
        shader_end();
        
    } else if (SpamNeoIntroTimer > 56 && SpamNeoIntroTimer <= 64) {
        draw_sprite_ext(sprite_get("intro"), 7, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_start();
        draw_sprite_ext(sprite_get("eyepink"), 1, x + 6 * spr_dir, y - 82, 1, 1, 0, c_white, 1);
        draw_sprite_ext(sprite_get("eyeyellow"), 1, x - 6 * spr_dir, y - 76, 1, 1, 0, c_white, 1);
        shader_end();
        
    } else if (SpamNeoIntroTimer > 64 && SpamNeoIntroTimer <= 70) {
        draw_sprite_ext(sprite_get("intro"), 7, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_start();
        draw_sprite_ext(sprite_get("eyepink"), 1, x + 6 * spr_dir, y - 82, 1, 1, 0, c_white, 1);
        draw_sprite_ext(sprite_get("eyeyellow"), 1, x - 6 * spr_dir, y - 76, 1, 1, 0, c_white, 1);
        shader_end();
        
    } else if (SpamNeoIntroTimer > 70 && SpamNeoIntroTimer <= 76) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 0.8);
        
    } else if (SpamNeoIntroTimer > 76 && SpamNeoIntroTimer <= 82) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 0.6);

    } else if (SpamNeoIntroTimer > 82 && SpamNeoIntroTimer <= 88) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 0.4);
        
    } else if (SpamNeoIntroTimer > 88 && SpamNeoIntroTimer <= 94) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
        draw_sprite_ext(sprite_get("intro"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 0.2);

    } else if (SpamNeoIntroTimer > 94) {
        shader_start();
        draw_sprite_ext(sprite_get("walkidle"), SpamNeoWalkIdleFrame, x, y, 1 * spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
}

if (state == PS_RESPAWN) {
    if (spr_dir = 1) {
        shader_start();
        draw_sprite(sprite_get("plat_overdraw"), 0, x, y);
        shader_end();
    } else if (spr_dir = -1) {
        shader_start();
        shader_start();
        draw_sprite(sprite_get("plat_overdraw"), 0, x, y);
        shader_end();
    }
}

/*if (SpamNeoTauntActive == true) {
    switch (SpamNeoColor) {
        case 0: // Spamton (Default)
        switch (SpamNeoTauntRand) {
            default:
            draw_debug_text( x + 45, y - 80, string("YOU WANT IT? THE [BIG]?"));
            draw_debug_text( x + 45, y - 60, string("MAYBE NEXT MATCH"));
            draw_debug_text( x + 45, y - 40, string("[little sponge]."));
            break;
            
            case 1:
            draw_debug_text( x + 45, y - 80, string("HELLO? IS THIS THE"));
            draw_debug_text( x + 45, y - 60, string("[pet store]?! WHAT ARE YOU"));
            draw_debug_text( x + 45, y - 40, string("[animal] SELLING OUT HERE?"));
            break;
            
            case 2:
            draw_debug_text( x + 45, y - 80, string("DEALS [negative]!"));
            draw_debug_text( x + 45, y - 60, string("STOCKS [help]."));
            break;
            
            case 3:
            draw_debug_text( x + 45, y - 80, string("PUPPET? DOWN HERE WE'RE ALL"));
            draw_debug_text( x + 45, y - 60, string("[on the line]. NOW GET BACK"));
            draw_debug_text( x + 45, y - 40, string("TO YOUR [stocks n bonds]."));
            break;
            
            case 4:
            draw_debug_text( x + 45, y - 80, string("NOW'S YOUR CHANCE"));
            draw_debug_text( x + 45, y - 60, string("TO BE [pratfall]."));
            break;
            
            case 5:
            draw_debug_text( x + 45, y - 80, string("BUT DON'T WAIT! SELL YOUR"));
            draw_debug_text( x + 45, y - 60, string("[stocks] AND I'LL THROW"));
            draw_debug_text( x + 45, y - 40, string("IN A [mixels] FOR FREE!!"));
            break;
            
            case 6:
            draw_debug_text( x + 45, y - 80, string("DEALS [negative]!"));
            draw_debug_text( x + 45, y - 60, string("STOCKS [help]."));
            break;
        }
        break;
        
        case 1: // Jevil
        switch (SpamNeoTauntRand) {
            case 0:
            draw_debug_text( x + 45, y - 80, string("SAD! SAD! ALL ALONE ON"));
            draw_debug_text( x + 45, y - 60, string("THESE MANGLED STRINGS."));
            break;
            
            case 1:
            draw_debug_text( x + 45, y - 80, string("HEE HEE, ARE YOU HERE TO"));
            draw_debug_text( x + 45, y - 60, string("SET US FREE?"));
            break;
            
            case 2:
            draw_debug_text( x + 45, y - 80, string("CHAOS CHAOS"));
            draw_debug_text( x + 45, y - 60, string("WONDEROUS FUN!"));
            break;
            
            case 3:
            draw_debug_text( x + 45, y - 80, string("I CAN DO ANYTHING,"));
            draw_debug_text( x + 45, y - 60, string("WATCH! WATCH!"));
            break;
            
            case 4:
            draw_debug_text( x + 45, y - 80, string("MY STAGE AGLOW!"));
            draw_debug_text( x + 45, y - 60, string("WONT YOU SPIN FOR ME?"));
            break;
            
            case 5:
            draw_debug_text( x + 45, y - 80, string("PIIP, PIIP, BUT AN EXTRA"));
            draw_debug_text( x + 45, y - 60, string("IN THEIR PLAY."));
            break;
        }
        break;
        
        case 3: // Grimm
        switch (SpamNeoTauntRand) {
            case 0:
            draw_debug_text( x + 45, y - 80, string("The Nightmare Heart..."));
            draw_debug_text( x + 45, y - 60, string("So distant in this land."));
            break;
            
            case 1:
            draw_debug_text( x + 45, y - 80, string("What a wonderful act!"));
            draw_debug_text( x + 45, y - 60, string("Let us bring them an encore!"));
            break;
            
            case 2:
            draw_debug_text( x + 45, y - 80, string("Beyond this dream of strife"));
            draw_debug_text( x + 45, y - 60, string("does my performance satisfy?"));
            break;
            
            case 3:
            draw_debug_text( x + 45, y - 80, string("The string, like veins"));
            draw_debug_text( x + 45, y - 60, string("from the heart of fear."));
            break;
            
            case 4:
            draw_debug_text( x + 45, y - 80, string("Shall I dance for"));
            draw_debug_text( x + 45, y - 60, string("your amusement?"));
            break;
        }
        break;
        
        case 4: // Mettaton
        switch (SpamNeoTauntRand) {
            case 0:
            draw_debug_text( x + 45, y - 80, string("Oh My! What did they"));
            draw_debug_text( x + 45, y - 60, string("do to my body?!"));
            break;
            
            case 1:
            draw_debug_text( x + 45, y - 80, string("I'm the star of your"));
            draw_debug_text( x + 45, y - 60, string("show? How touching!"));
            break;
            
            case 2:
            draw_debug_text( x + 45, y - 80, string("I hope you were"));
            draw_debug_text( x + 45, y - 60, string("recording that."));
            break;
            
            case 3:
            draw_debug_text( x + 45, y - 80, string("NEO is famous for"));
            draw_debug_text( x + 45, y - 60, string("its combo potential."));
            break;
            
            case 4:
            draw_debug_text( x + 45, y - 80, string("These LEGS!"));
            draw_debug_text( x + 45, y - 60, string("Perfection!"));
            break;
            
            case 5:
            draw_debug_text( x + 45, y - 80, string("I'm ready for my"));
            draw_debug_text( x + 45, y - 60, string("close up."));
            break;
        }
        break;
        
        case 6: // Purple Guy
        switch (SpamNeoTauntRand) {
            case 0:
            draw_debug_text( x + 45, y - 80, string("I ALWAYS COME BACK."));
            break;
            
            case 1:
            draw_debug_text( x + 45, y - 80, string("NUMBER ONE RATED"));
            draw_debug_text( x + 45, y - 60, string("SALESMAN... 1987..."));
            break;
            
            case 2:
            draw_debug_text( x + 45, y - 80, string("PATHETIC. YOU FIGHT"));
            draw_debug_text( x + 45, y - 60, string("LIKE A CHILD."));
            break;
            
            case 3:
            draw_debug_text( x + 45, y - 80, string("THE ENDLESS RINGING."));
            draw_debug_text( x + 45, y - 60, string("MAKE IT STOP."));
            break;
        }
        break;
        
        case 8: // P03
        switch (SpamNeoTauntRand) {
            case 0:
            draw_debug_text( x + 45, y - 80, string("You done gawkin?"));
            break;
            
            case 1:
            draw_debug_text( x + 45, y - 80, string("Total missplay. Maybe"));
            draw_debug_text( x + 45, y - 60, string("remember to DI"));
            draw_debug_text( x + 45, y - 40, string("next time."));
            break;
            
            case 2:
            draw_debug_text( x + 45, y - 80, string("Maybe you should"));
            draw_debug_text( x + 45, y - 60, string("stick to card games."));
            break;
            
            case 3:
            draw_debug_text( x + 45, y - 80, string("I'd say to adapt, but"));
            draw_debug_text( x + 45, y - 60, string("I can't seem to find."));
            draw_debug_text( x + 45, y - 40, string("that file."));
            break;
            
            case 4:
            draw_debug_text( x + 45, y - 80, string("Where did you think"));
            draw_debug_text( x + 45, y - 60, string("I went after the ARG?"));
            break;
            
            case 5:
            draw_debug_text( x + 45, y - 80, string("Quit wasting my time, we've"));
            draw_debug_text( x + 45, y - 60, string("got Transcending to do."));
            break;
        }
        break;
        
        case 19: // Forbidden
        switch (SpamNeoTauntRand) {
            case 0:
            draw_debug_text( x + 45, y - 80, string("Skill issue."));
            break;
            
            case 1:
            draw_debug_text( x + 45, y - 80, string("Yes, I am cringe."));
            break;
            
            case 2:
            draw_debug_text( x + 45, y - 80, string("Abyss runes when?"));
            break;
            
            case 3:
            draw_debug_text( x + 45, y - 80, string("Hi Krispy."));
            break;
        }
        break;
        
        case 20: // Forbidden
        switch (SpamNeoTauntRand) {
            case 0:
            draw_debug_text( x + 45, y - 80, string("..."));
            break;
            
            case 1:
            draw_debug_text( x + 45, y - 80, string("Your actions."));
            draw_debug_text( x + 45, y - 60, string("Irrelevant."));
            break;
            
            case 2:
            draw_debug_text( x + 45, y - 80, string("What does this bring you?"));
            draw_debug_text( x + 45, y - 60, string("Pride? Rage? Joy?"));
            draw_debug_text( x + 45, y - 40, string("Statements."));
            break;
            
            case 3:
            draw_debug_text( x + 45, y - 80, string("There is nothing here."));
            break;
            
            case 4:
            draw_debug_text( x + 45, y - 80, string("It will happen."));
            draw_debug_text( x + 45, y - 60, string("You will see."));
            break;
            
            case 5:
            draw_debug_text( x + 45, y - 80, string("This concept a failure."));
            draw_debug_text( x + 45, y - 60, string("It will never achieve"));
            draw_debug_text( x + 45, y - 40, string("it's perspective's dream."));
            break;
        }
        break;
    }
}*/
