#include <GL/glut.h>
#include <stdlib.h>
#include <math.h>

static int slices = 25;
static int stacks = 17;

/* GLUT callback Handlers */

static void resize(int width, int height)
{
    const float ar = (float) width / (float) height;

    glViewport(0, 0, width, height);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glFrustum(-ar, ar, -1.0, 1.0, 2.0, 100.0);

    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity() ;
}

static void display(void)
{
    const double t = glutGet(GLUT_ELAPSED_TIME) / 1000.0;
    const double a = t*90.0;
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    GLUquadricObj *pObj;
    glColor3d(1,0.9,0.39);
    glPushMatrix();
        pObj = gluNewQuadric();
        gluQuadricNormals(pObj, GLU_SMOOTH);
        glTranslatef(0.0f, 0.0f, -5.0f);
        glRotated(20,1,0,0);
        glRotated(a,0,1,0);
        //glutSolidSphere(0.6,slices,stacks);
            glPushMatrix();
            //body
                glTranslatef(-0.6f, 0.0f, 0.0f);
                glutSolidCube(0.8);
                glTranslatef(0.6f, 0.0f, 0.0f);
                glutSolidCube(0.8);
            //feet
                glTranslatef(0.26f, -0.4f, 0.26f);
                glRotated(90,1,0,0);
                gluCylinder(pObj,0.1,0.07,0.5,26,13);

                glTranslatef(0.0f, -0.5f, -0.0f);
                gluCylinder(pObj,0.1,0.07,0.5,26,13);

                glTranslatef(-1.1f, -0.0f, -0.0f);
                gluCylinder(pObj,0.1,0.07,0.5,26,13);

                glTranslatef(0.0f, 0.5f, -0.0f);
                gluCylinder(pObj,0.1,0.07,0.5,26,13);
            glPopMatrix();
            //head
            glPushMatrix();
                glTranslatef(0.7f, 0.7f, -0.0f);
                glutSolidCube(0.4);
                glTranslatef(0.3f, -0.06f, 0.0f);
                glutSolidCube(0.3);
                glTranslatef(0.1f, 0.0f, 0.0f);
                glutSolidCube(0.3);
                // nose
                glColor3f(0.0f, 0.0f, 0.0f);
                glTranslatef(0.1f, 0.06f, -0.13f);
                gluSphere(pObj, 0.03f, 26, 13);
                glTranslatef(0.0f, 0.0f, 0.274f);
                gluSphere(pObj, 0.02f, 26, 13);
                // eyes
                glTranslatef(-0.49f, 0.07f, 0.046f);
                gluSphere(pObj, 0.04f, 26, 13);
                glTranslatef(0.0f, 0.0f, -0.38f);
                gluSphere(pObj, 0.04f, 26, 13);
            glPopMatrix();
            glPushMatrix();
                glColor3d(1,0.9,0.39);
                glRotated(90,1,-0.5,0);
                glTranslatef(0.3f, -0.15f, -0.9f);
                gluCylinder(pObj,0.2,0.2,1,26,13);
            glPopMatrix();
            // tail
            glPushMatrix();
                glColor3f(0.0f, 0.0f, 0.0f);
                glTranslatef(-1.1f, 0.3f, 0.0f);
                glutSolidCube(0.3);
                glTranslatef(-0.1f, -0.1f, 0.0f);
                glutSolidCube(0.3);
                glTranslatef(-0.1f, -0.1f, 0.0f);
                glutSolidCube(0.25);
                glTranslatef(0.0f, -0.2f, 0.0f);
                glutSolidCube(0.2);
                glTranslatef(0.0f, -0.2f, 0.0f);
                glutSolidCube(0.2);
            glPopMatrix();
            //ears
            glPushMatrix();
                glTranslatef(0.6f, 0.87f, 0.1f);
                glRotated(-90,1,0,0);
                glRotated(10,0,1,0);
                glutSolidCone(0.03,0.2,26,13);
                glTranslatef(0.0f, 0.2f, 0.0f);
                glutSolidCone(0.03,0.2,26,13);
            glPopMatrix();
            //del
            glPushMatrix();
                glTranslatef(0.24f, 0.16f, 0.0f);
                glRotated(-90,1,-0.5,0);
                gluCylinder(pObj,0.06,0.06,0.8,26,13);
            glPopMatrix();
    glPopMatrix();
    glutSwapBuffers();
}

static void idle(void)
{
    glutPostRedisplay();
}

const GLfloat light_ambient[]  = { 0.0f, 0.0f, 0.0f, 1.0f };
const GLfloat light_diffuse[]  = { 1.0f, 1.0f, 1.0f, 1.0f };
const GLfloat light_specular[] = { 1.0f, 1.0f, 1.0f, 1.0f };
const GLfloat light_position[] = { 2.0f, 5.0f, 5.0f, 0.0f };

const GLfloat mat_ambient[]    = { 0.7f, 0.7f, 0.7f, 1.0f };
const GLfloat mat_diffuse[]    = { 0.8f, 0.8f, 0.8f, 1.0f };
const GLfloat mat_specular[]   = { 1.0f, 1.0f, 1.0f, 1.0f };
const GLfloat high_shininess[] = { 100.0f };

/* Program entry point */

int main(int argc, char *argv[])
{
    glutInit(&argc, argv);
    glutInitWindowSize(840,580);
    glutInitWindowPosition(10,10);
    glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);

    glutCreateWindow("GLUT Shapes");

    glutReshapeFunc(resize);
    glutDisplayFunc(display);
    glutIdleFunc(idle);

    glClearColor(1,1,1,1);
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    glEnable(GL_LIGHT0);
    glEnable(GL_NORMALIZE);
    glEnable(GL_COLOR_MATERIAL);
    glEnable(GL_LIGHTING);

    glLightfv(GL_LIGHT0, GL_AMBIENT,  light_ambient);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  light_diffuse);
    glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular);
    glLightfv(GL_LIGHT0, GL_POSITION, light_position);

    glMaterialfv(GL_FRONT, GL_AMBIENT,   mat_ambient);
    glMaterialfv(GL_FRONT, GL_DIFFUSE,   mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR,  mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, high_shininess);

    glutMainLoop();

    return EXIT_SUCCESS;
}
