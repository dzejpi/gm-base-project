/// @description Draw the transition
draw_set_alpha(1 - (alpha * 2));

draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

draw_set_color(c_white);
//draw_set_alpha(1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(font_credits_title);
draw_text(room_width/2, room_height/2, displayed_text)

draw_set_font(font_credits_text);
draw_text(room_width/2, (room_height/2) + 48, secondary_text)

draw_set_alpha(1);