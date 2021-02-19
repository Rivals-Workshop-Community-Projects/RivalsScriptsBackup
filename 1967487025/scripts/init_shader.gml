if !("za_wurdo" in self) za_wurdo = false;
if !za_wurdo {
    switch (get_player_color(player)) {
        case 1:
        set_article_color_slot(5, 0, 255, 221); //Light green spear
        break;
        case 3:
        set_article_color_slot(5, 0, 117, 220); //Blue spear
        break;
        case 4:
        set_article_color_slot(0, 0, 162, 215); //Blue lance
        set_article_color_slot(5, 62, 235, 235); //Light blue spear
        break;
        case 5:
        for(i = 0; i < 6; i++){
            set_character_color_shading(i, 0.5); //bad skin
        }
        break;
        case 7:
        set_article_color_slot(0, 0, 71, 238); //Dark Blue lance
        set_article_color_slot(5, 102, 255, 255); //Light blue spear
        break;
        case 8:
        set_article_color_slot(0, 45, 143, 46); //Dark Green lance
        set_article_color_slot(5, 45, 143, 46); //Light Green spear
        break;
        case 9:
        set_article_color_slot(0, 112, 1, 130); //Purple lance
        set_article_color_slot(5, 212, 101, 230); //Light purple spear
        break;
        case 10:
        set_article_color_slot(0, 223, 0, 223); //Purple-pink lance
        set_article_color_slot(5, 240, 104, 192); //Light Green spear
        break;
        case 11:
        set_article_color_slot(5, 255, 152, 0); //Light orange spear
        break;
        case 2:
        set_article_color_slot(0, 255, 255, 255 ); //white lance
        set_article_color_slot(5, 152, 214, 213 ); //Light blue spear
        break;
    }
} else {
    switch (get_player_color(player)) {
        case 1:
        set_article_color_slot(5, 246, 207, 0 );
        break;
        case 3:
        set_article_color_slot(5, 5, 246, 207, 0 );
        break;
        case 4:
        set_article_color_slot(0, 184, 19, 32 );
        set_article_color_slot(5, 196, 177, 60 );
        break;
        case 5:
        for(i = 0; i < 6; i++){
            set_character_color_shading(i, 0.5); //bad skin
        }
        break;
        case 7:
        set_article_color_slot(0, 255, 0, 0 );
        set_article_color_slot(5, 255, 217, 10 );
        break;
        case 8:
        set_article_color_slot(0, 0, 229, 1 );
        set_article_color_slot(5, 182, 182, 182 );
        break;
        case 9:
        set_article_color_slot(0, 128, 128, 148 );
        set_article_color_slot(5, 196, 177, 60 );
        break;
        case 10:
        set_article_color_slot(0, 240, 104, 192 );
        set_article_color_slot(5, 246, 207, 0 );
        break;
        case 11: case 13:
        set_article_color_slot(5, 246, 207, 0 );
        break;
    }
}