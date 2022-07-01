// Draw debug text

/*if (debug == "articles") {
    for (var i = 0; i <= array_length(articles) - 1; i++) {
        draw_debug_text( view_get_xview() + view_get_wview() / 2, view_get_yview() + 20 * i, string(articles[i]));
    }
} else draw_debug_text(view_get_xview() + view_get_wview() / 2, view_get_yview(), string(debug));

/*if (is_aether_stage()) {
    if (changeTimer <= 60 * 5) {
        var text = string(nextChange) + " in " + string(ceil(changeTimer/60)) + " seconds"; 
        draw_debug_text(view_get_xview() + view_get_wview() / 2 - 125, view_get_yview() + 50, string(text));
    }
    
    /*var j
    for (j = 0; j <= array_length(rules) - 1; j++) {
        var text1 = rules[j].name;
        var text2;// = "State: " + string(rules[j].state);
        switch rules[j].state {
            case 0: text2 = "False"; break;
            case 1: text2 = "True"; break;
            default: text2 = string(rules[j].state);
        }
        draw_debug_text( view_get_xview(), view_get_yview() + 40 * j, string(text1));
        draw_debug_text( view_get_xview() + 15, view_get_yview() + 40 * j + 20, string(text2));
    }
    
    var text = string(nextChange) + " in " + string(ceil(changeTimer/60)) + " seconds"; 
    draw_debug_text( view_get_xview(), view_get_yview() + 60 * j, string(text));
}

//debug = "";