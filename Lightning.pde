int startX = 150;
int startY = 65;
int endX = 150;
int endY = 0;

//person
int x = 120;

void setup()
{
	size(300, 300);
	strokeWeight(1);
}

void cloud ()
{
	fill(117,114,114);
	ellipse(30, 30, 110, 70);
	ellipse(90, 20, 100, 110);
	ellipse(150, 30, 90, 70);
	ellipse(210, 20, 100, 110);
	ellipse(270, 30, 110, 70);
}

void person ()
{
//head and body
	ellipse(x-20, 250, 20, 20);

	stroke(0, 0, 0);
	line(x-20, 260, x-20, 280);

//arms
	line(x-20, 270, x-30, 265);
	line(x-20, 270, x-10, 265);

//legs
	line(x-20, 280, x-30, 290);
	line(x-20, 280, x-10, 290);


/*	if (x > 301)
	{
		x = -10;
	}
*/
}

void draw()
{
	noStroke();
	cloud();
	fill(0, 0, 0);
	stroke(0, 0, 0);
	person();

	stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));

	while (endX < 301)
	{
		endX = startX + (int)(Math.random() * 9);
		endY = startY + (int)(Math.random() * -9) + 18;

		line(startX, startY, endX, endY);	

		startX = endX;
		startY = endY;
	}

	if (x > 200)
	{
		stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
		fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
		person();
	}
}

void mousePressed()
{
	background((int)(Math.random() * 156), (int)(Math.random() * 156), (int)(Math.random() * 156));

	noStroke();
	cloud ();

	x = x + 10;

	if (x > 230)
	{
		x=230;
	}

	startX = 150;
	startY = 65;
	endX = 150;
	endY = 0;
}
