//header

#include<GL/gl.h>
#include<GL/glut.h>
#include<stdio.h>
#include<math.h>
//globals

GLuint bunny;
float bunnyrot;
int gen_ind;
char ch='1';
// angle of rotation for the camera direction
float angle=0.0;
// actual vector representing the camera's direction
float lx=0.0f,lz=-1.0f;
// XZ position of the camera
float x=0.0f,z=5.0f;
//.obj loader code begins
// Our vertex type
typedef struct{
    float x,y,z;
}vertex_type;

typedef struct{
    int a,b,c;
}tran_type;

vertex_type vertex[200000];
tran_type f_index[300000];

void loadObj(char *fname)
{
    FILE *fp;
    int read, index_v=0, index_f=0;
    GLfloat x, y, z;
    GLint x1, y1, z1;
    bunny=glGenLists(1);
    fp=fopen(fname,"r");
    if (!fp)
    {
        printf("can't open file %s\n", fname);
	  exit(1);
    }

        while(!(feof(fp))){
            char ch[128];
            read=fscanf(fp,"%s",ch);
            if(strcmp(ch,"v")==0){
                fscanf(fp,"%f %f %f",&x,&y,&z);
                vertex[index_v].x = x;
                vertex[index_v].y = y;
                vertex[index_v].z = z;
                //glVertex3f(x,y,z);
                index_v++;
            }else if(strcmp(ch,"f")==0){
                fscanf(fp,"%d %d %d",&x1,&y1,&z1);
                f_index[index_f].a = x1;
                f_index[index_f].b = y1;
                f_index[index_f].c = z1;
                index_f++;
            }
        }
        gen_ind = index_f;
        printf("v ni: %d f ni: %d",index_v, index_f);
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

 	glPointSize(1.0);
    glNewList(bunny, GL_COMPILE);
    {
        glPushMatrix();
        glBegin(GL_TRIANGLES);
            for(int i=0; i<gen_ind; i++){
                glVertex3f(vertex[f_index[i].a-1].x,vertex[f_index[i].a-1].y,vertex[f_index[i].a-1].z);
                glVertex3f(vertex[f_index[i].b-1].x,vertex[f_index[i].b-1].y,vertex[f_index[i].b-1].z);
                glVertex3f(vertex[f_index[i].c-1].x,vertex[f_index[i].c-1].y,vertex[f_index[i].c-1].z);
            }
        glEnd();
    }
    glPopMatrix();
    glEndList();

 	glPopMatrix();
 	bunnyrot=bunnyrot+0.6;
 	if(bunnyrot>360)bunnyrot=bunnyrot-360;
}

void display(void)
{
   	glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   	glLoadIdentity();

   	// Set the camera
	gluLookAt(	x, 1.0f, z, x+lx, 1.0f,  z+lz, 0.0f, 1.0f,  0.0f);
    // Draw ground
	glColor3f(0.9f, 0.9f, 0.9f);
    drawRabbit();
   	glutSwapBuffers(); //swap the buffers

}

void processSpecialKeys(int key, int xx, int yy) {

	float fraction = 0.3f;

	switch (key) {
		case GLUT_KEY_LEFT :
			angle -= 0.1f;
			lx = sin(angle);
			lz = -cos(angle);
			break;
		case GLUT_KEY_RIGHT :
			angle += 0.1f;
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
