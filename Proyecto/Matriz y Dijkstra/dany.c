#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
int j=0;
char estacion[163][40];


int main(){
	
	
FILE * pFile;
	 pFile = fopen ("nombre.txt" , "r");
	for(int i=0;i<164;i++){
		 fgets (estacion[i] , 40 , pFile);		
   			strtok(estacion[i],"\n");
   		}
		 fclose (pFile);
		 	FILE *archivo;
	archivo = fopen("dany.txt","w");

			for (int j = 0; j < 163; ++j)
			 {
			
			 fprintf(archivo,"case '%s'\n\tnum='%d';",estacion[j],j+1);
	        fprintf(archivo,"\n\tset(handles.lee,'string',num);\n");
	        } 
}