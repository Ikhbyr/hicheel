//header

#include<GL/gl.h>
#include<GL/glut.h>
#include<stdio.h>
#include<math.h>
//globals

GLuint bunny;
float bunnyrot;
char ch='1';
// angle of rotation for the camera direction
float angle=0.0;
// actual vector representing the camera's direction
float lx=0.0f,lz=-1.0f;
// XZ position of the camera
float x=0.0f,z=5.0f;
//other functions and main

//.obj loader code begins

void loadObj(char *fname)
{
    FILE *fp;
    int read;
    GLfloat x, y, z;
    char ch;
    bunny=glGenLists(1);
    fp=fopen(fname,"r");
    if (!fp)
    {
        printf("can't open file %s\n", fname);
	  exit(1);
    }
    glPointSize(2.0);
    glNewList(bunny, GL_COMPILE);
    {
        glPushMatrix();
        glBegin(GL_POINTS);
        while(!(feof(fp)))
        {
          read=fscanf(fp,"%c %f %f %f",&ch,&x,&y,&z);
          if(read==4&&ch=='v')
          {
            glVertex3f(x,y,z);
          }
        }
        glEnd();
    }
    glPopMatrix();
    glEndList();
    fclose(fp);
}

//.obj loader code ends here

void reshape(int w,int h)
{
	glViewport(0,0,w,h);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
    gluPerspective (60, (GLfloat)w / (GLfloat)h, 0.1, 1000.0);
	//glOrtho(-25,25,-2,2,0.1,100);
	glMatrixMode(GL_MODELVIEW);
}

void drawRabbit()
{
 	glPushMatrix();
 	glTranslatef(0,0,-50);
 	glColor3f(1.0,0.4,0.1);
 	glRotated(-60,1,0,0);
 	//glScalef(0.7,0.7,0.7);
 	//glRotatef(bunnyrot,1,1,0);
 	glCallList(bunny);
 	glPopMatrix();
 	bunnyrot=bunnyrot+0.6;
 	if(bunnyrot>360)bunnyrot=bunnyrot-360;
}

void display(void)
{
   	glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   	glLoadIdentity();

   	// Set the camera
	gluLookAt(	x, 1.0f, z,
			x+lx, 1.0f,  z+lz,
			0.0f, 1.0f,  0.0f);
    // Draw ground
	glColor3f(0.9f, 0.9f, 0.9f);
    drawRabbit();
   	glutSwapBuffers(); //swap the buffers

}

void processSpecialKeys(int key, int xx, int yy) {

	float fraction = 0.3f;

	switch (key) {
		case GLUT_KEY_LEFT :
			angle -= 0.01f;
			lx = sin(angle);
			lz = -cos(angle);
			break;
		case GLUT_KEY_RIGHT :
			angle += 0.01f;
			lx = sin(angle);
			lz = -cos(angle);
			break;
		case GLUT_KEY_UP :
			x += lx * fraction;
			z += lz * fraction;
			break;
		case GLUT_KEY_DOWN :
			x -= lx * fraction;
			z -= lz * fraction;
			break;
	}
}

void processNormalKeys(unsigned char key, int x, int y)
{

if (key == 27)
exit(0);
}

int main(int argc,char **argv)
{
	glutInit(&argc,argv);
	glutInitDisplayMode(GLUT_DOUBLE|GLUT_RGB|GLUT_DEPTH);
	glutInitWindowSize(800,450);
	glutInitWindowPosition(20,20);
	glutCreateWindow("ObjLoader");
	glutReshapeFunc(reshape);
    glutDisplayFunc(display);
    glutKeyboardFunc(processNormalKeys);
    glutSpecialFunc(processSpecialKeys);
	glutIdleFunc(display);
    loadObj("E:/hicheel/6 season(17)/com graphic/lab/lab10/bunny.obj");
    // OpenGL init
	glEnable(GL_DEPTH_TEST);
	glutMainLoop();
	return 0;
}
