/// @description Drawing
// Make the button appear at the beginning
if alpha_image < 1
{
	alpha_image += transition_speed;
}

draw_set_alpha(alpha_image);

// Draw as selected if mouse is hovering above or the button is selected
if (position_meeting(mouse_x, mouse_y, id) || is_pressed)
{
	if is_selectable
	{
		draw_sprite(spr_menu_button, 1, x, y - font_indentation);
	} else
	{
		draw_sprite(spr_menu_button, 2, x, y - font_indentation);
	}
} else if is_selectable
{
	draw_sprite(spr_menu_button, 0, x, y - font_indentation);
} else
{
	draw_sprite(spr_menu_button, 2, x, y - font_indentation);
}

// Alignment to the center
draw_set_font(font_main_menu_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Shadow
draw_set_colour(shadow_text_color);
draw_text(x + 1, y + 1, button_text);

// Button text
draw_set_colour(button_text_color);
draw_text(x, y, button_text);

draw_set_alpha(1);