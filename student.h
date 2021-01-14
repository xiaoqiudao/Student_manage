#ifndef STUDENT_H
#define STUDENT_H

//结构
typedef struct Student
{
    char name[20];
    char sex[5];
    char sid[20];
    char pwd[20];
    float chn;    	//语文分
    float math;		//数学分
    float eng;	  	//英语分
    char ver;
    int times;
}Student;
int check_stu(int id);
void score(int ssi);
void stuModify(int ssi);
void show_self(int ssi);
void run_stu(void);


#endif//STUDENT_H

