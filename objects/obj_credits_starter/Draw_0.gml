/// @description Draw credits text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

middle_x = room_width/2;

first_text = "Title of credits.";
second_text = "Made by [me]."
third_text = "Third line.";
fourth_text = "Fourth line.";
fifth_text = "Fifth line.";
sixth_text = "Sixth line.";
seventh_text = "Seventh line.";
eigth_text = "Eighth line.";
ninth_text = "Ninth line.";
tenth_text = "Tenth line.";

first_y = indentation * 2;
second_y = indentation * 4;
third_y = indentation * 6;
fourth_y = indentation * 7;
fifth_y = indentation * 8;
sixth_y = indentation * 9;
seventh_y = indentation * 10;
eight_y = indentation * 11;
ninth_y = indentation * 12;
tenth_y = indentation * 13;

draw_set_font(font_credits_title);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, first_y + 2, first_text);
draw_set_colour(button_text_color);
draw_text(middle_x, first_y, first_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, second_y + 2, second_text);
draw_set_colour(button_text_color);
draw_text(middle_x, second_y, second_text);

draw_set_font(font_credits_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, third_y + 2, third_text);
draw_set_colour(button_text_color);
draw_text(middle_x, third_y, third_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, fourth_y + 2, fourth_text);
draw_set_colour(button_text_color);
draw_text(middle_x, fourth_y, fourth_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, fifth_y + 2, fifth_text);
draw_set_colour(button_text_color);
draw_text(middle_x, fifth_y, fifth_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, sixth_y + 2, sixth_text);
draw_set_colour(button_text_color);
draw_text(middle_x, sixth_y, sixth_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, seventh_y + 2, seventh_text);
draw_set_colour(button_text_color);
draw_text(middle_x, seventh_y, seventh_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, eight_y + 2, eigth_text);
draw_set_colour(button_text_color);
draw_text(middle_x, eight_y, eigth_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, ninth_y + 2, ninth_text);
draw_set_colour(button_text_color);
draw_text(middle_x, ninth_y, ninth_text);

draw_set_colour(shadow_text_color);
draw_text(middle_x + 2, tenth_y + 2, tenth_text);
draw_set_colour(button_text_color);
draw_text(middle_x, tenth_y, tenth_text);