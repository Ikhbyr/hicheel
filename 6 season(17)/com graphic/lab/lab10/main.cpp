//header

#include<GL/gl.h>
#include<GL/glut.h>
#include<stdio.h>

//globals

GLuint bunny;
float bunnyrot;
char ch='1';

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

void drawCar()
{
 	glPushMatrix();
 	glTranslatef(0,0,-60);
 	glColor3f(1.0,0.4,0.1);
 	glScalef(0.7,0.7,0.7);
 	glRotatef(bunnyrot,1,1,0);
 	glCallList(bunny);
 	glPopMatrix();
 	bunnyrot=bunnyrot+0.6;
 	if(bunnyrot>360)bunnyrot=bunnyrot-360;
}

void display(void)
{
   	glClearColor (0.0,0.0,0.0,1.0);
   	glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   	glLoadIdentity();
   	drawCar();
   	glutSwapBuffers(); //swap the buffers

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
	glutIdleFunc(display);
        loadObj("E:/hicheel/6 season(17)/com graphic/lab/lab11/bunny.obj");
	glutMainLoop();
	return 0;
}
