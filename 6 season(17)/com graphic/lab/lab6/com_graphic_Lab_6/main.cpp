#include <windows.h>
#include <gl/glut.h>
#include <math.h>
//Initial square position and size
//GLsizei rsize=50;
// size in x and y directions
GLfloat xstep=1.0f;
GLfloat ystep=1.0f;
GLfloat winWidth, winHeight;

//
int i, v,n=6;
float durs[100][2],ang,hex=6.2832/n,rad=0.1;
bool tom = true, jij = false;

void display(void) {
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1.0f, 0.0f, 0.0f);
    for(v=0;v<n;v++){
       ang=v*hex;
       durs[v][0]=cos(ang)*rad;
       durs[v][1]=sin(ang)*rad;
    }
    glBegin(GL_LINE_STRIP);
    for(v=0;v<n;v++)
        glVertex2fv(durs[v]);
    glVertex2fv(durs[0]);
    glEnd();
    glFlush();
    //Flush drawing commands and swap
    glutSwapBuffers();
}
void setup(void) {
    glClearColor(0.0f, 0.0f, 1.0f, 1.0f);
}

void timer(int value) {
    if(n==7&& tom==true){
        tom=false;
        jij = true;
    }
    if(n==6&& jij==true){
        jij=false;
        tom = true;
    }
    if(tom==true){
        n=n+1;
    }
    if(jij==true){
        n=n-1;
    }

    glutPostRedisplay();
    glutTimerFunc(33, timer, 1);
}

void resize (GLsizei w, GLsizei h) {
    if (h==0) h=1;
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    if (w<=h) {
        winHeight=250.0f*h/w;
        winWidth=250.0f;
    } else {
        winWidth=250.0f*w/h;
    winHeight=250.0f;
    }
    glOrtho(0.0f, winWidth, 0.0f, winHeight, 1.0f, -1.0f);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
}
int main (int argc, char** argv) {
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
    glutInit(&argc, argv);
    glutCreateWindow("Animation Lab_6");
    glutDisplayFunc(display);
    glutReshapeFunc(resize);
    glutTimerFunc(33, timer, 1);
    setup();
    glutMainLoop();
}
