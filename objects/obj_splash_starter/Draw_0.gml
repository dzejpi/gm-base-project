/// @description Insert description here
// You can write your code in this editor
if displaying_splash
{
	if alpha_image < 1
	{
		alpha_image += splash_speed;
	} else
	{
		if current_delay > 0
		{
			current_delay -= 1;
		} else
		{
			current_delay = logo_delay;
			displaying_splash = false;
			displayed_splash = true;
		}
	}
}

if displayed_splash
{
	if alpha_image > 0
	{
		alpha_image -= splash_speed;
	} else
	{
		if logo_displaying < 2
		{
			logo_displaying += 1;
			displaying_splash = true;
			displayed_splash = false;
			
			alpha_image = 0.00;
		} else
		{
			// Switch to the next room
			room_goto_next();
		}
	}
}

// Fade out at start
if displaying_splash && logo_displaying = 1
{
	draw_set_alpha(1 - alpha_image);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
}

// Fade in when the second logo is fading out
if displayed_splash && logo_displaying = 2
{
	draw_set_alpha(1 - alpha_image);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
}

// Draw logos
draw_set_alpha(alpha_image);
if logo_displaying = 1
{
	// Display first centered logo
	draw_sprite(spr_first_logo, 0, room_width/2, room_height/2);
} else
{
	// Display second centered logo
	draw_sprite(spr_second_logo, 0, room_width/2, room_height/2);
}

// Reset alpha to make sure everything else draws properly
draw_set_alpha(1);