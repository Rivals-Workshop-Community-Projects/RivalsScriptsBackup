//
print_debug("Now its time for movie time");

// Compatibility
has_movie_title = false;
movie_title = " ";

with(asset_get("oPlayer")){
    if variable_instance_exists(oPlayer, "movietitle"){
        if player == 1{
            movietitle = obj_stage_main.movie_title;
            has_movie_title = true;
        }
    }
}

if !has_movie_title{
    var movie_select = current_hour;
    switch(movie_select){
        case 0:
            movie_title = "What Does DSpecial Do: The Musical";
            break;
        case 1:
            movie_title = "Curated Park";
            break;
        case 2:
            movie_title = "Sandbert: King of the Workshop";
            break;
        case 3:
            movie_title = "The Ex-ori-cist";
            break;
        case 4:
            movie_title = "Buffy 2: Judgement Day";
            break;
        case 5:
            movie_title = "Citizen Orcane";
            break;
        case 6:
            movie_title = "Snakes in a Mech";
            break;
        case 7:
            movie_title = "The Shovel Knight Begins";
            break;
        case 8:
            movie_title = "The Burnfather";
            break;
        case 9:
            movie_title = "Legally Pomme";
            break;
        case 10:
            movie_title = "Lottie of the Rings";
            break;
        case 11:
            movie_title = "Spar Wars: Return of the Sai";
            break;
        case 12:
            movie_title = "Saving Private Riva";
            break;
        case 13:
            movie_title = "Free Wally";
            break;
        case 14:
            movie_title = "A Klockwurth Orange";
            break;
        case 15:
            movie_title = "When Penny was There";
            break;
        case 16:
            movie_title = "Torg Story";
            break;
        case 17:
            movie_title = "Ferris Birdguy's Day Off";
            break;
        case 18:
            movie_title = "Chad's Away";
            break;
        case 19:
            movie_title = "Ash and the Furious";
            break;
        case 20:
            movie_title = "Barr & Tempos Excellent Adventure";
            break;
        case 21:
            movie_title = "Fantastic Mr. Voidfox";
            break;
        case 22:
            movie_title = "Synne City";
            break;
        case 23:
            movie_title = "Blake Runner";
            break;
    }
}

// Time
if current_hour >= 6 and current_hour < 17{
    print_debug("Day");
    // Change Music
    day = true;
    with obj_stage_article{
        switch(num){
            case 2:
                visible = 0;
                break;
            case 3:
                visible = 0;
                break;
            case 4:
                visible = 1;
                break;
            case 5:
                visible = 1;
                break;
            case 6:
                visible = 1;
                break;
            case 7:
                visible = 1;
                break;
            case 8:
                visible = 1;
                break;
        }
    }
} else {
    // Night
    // Change Music
    day = false;
    with obj_stage_article{
        switch(num){
            case 2:
                visible = 1;
                break;
            case 3:
                visible = 1;
                break;
            case 4:
                visible = 0;
                break;
            case 5:
                visible = 0;
                break;
            case 6:
                visible = 0;
                break;
            case 7:
                visible = 0;
                break;
            case 8:
                visible = 0;
                break;
        }
    }
    print_debug("Night");
}