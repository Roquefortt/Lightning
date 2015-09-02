int startX = 150;
int startY = 65;
int endX = 150;
int endY = 0;

int x = 50;

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
	fill(0, 0, 0);
	ellipse(30,250,20,20);

	stroke(0, 0, 0);
	line(30,260,30,280);

//arms
	line(30,270,20,265);
	line(30,270,40,265);

//legs
	line(30,280,20,290);
	line(30,280,40,290);
}

void draw()
{
	noStroke();
	cloud();
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

}

void mousePressed()
{
	background((int)(Math.random() * 156), (int)(Math.random() * 156), (int)(Math.random() * 156));

	noStroke();
	cloud ();

	startX = 150;
	startY = 65;
	endX = 150;
	endY = 0;
}


