void setup() {size(1000,1000);}
void draw() {background(#EDBC1A);
drawCreature(mouseX,mouseY);
//drawCreaturewidth/2,height/2);
//drawCreature(random(width),random(height));
}
void drawCreature(float x, float y) {
fill(126);
ellipse(x,y,100,100); // Draws the head
fill(255);
ellipse(x-20,y-20,15,15); // Draws the left eye
ellipse(x+20,y-20,15,15); // Draw the right eye
line(x-15,y+20,x+15,y+20); // Draws the mouth
}
