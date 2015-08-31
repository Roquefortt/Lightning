int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
	size(300, 300);
	strokeWeight(1);
	background(255, 255, 255);
}

void draw()
{
	//stroke((int)(Math.random()*0) + 255, (int)(Math.random()*0) + 255, (int)(Math.random()*0) + 255);

	line(startX, startY, endX, endY);	

	while (endX == 0) 
	{
		endX = startX + (int)(Math.random() * 1) + 9;
		endY = startY + (int)(Math.random() * 9) - 18;
	}

}
void mousePressed()
{

}

