#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
int tam=164,adyacencia,nodo,costo,cont;
int A[165][165];
char estacion[165][40];
	char s[40],ans[2];
	int c,count=164;
	char ch;
	int indice,cont=0;
	int error,cagadas=0;
	int temp[8];
	int tempo[8];


void imprimir(){
	FILE *archivo;
	archivo = fopen("matrizcp.txt","w");
	
	for(int i=0;i<tam;i++){
		if(i==0)
			fprintf(archivo,"A = [");

		for(int j=0;j<tam;j++){
			fprintf(archivo,"%d",A[i][j]);
			fprintf(archivo," ");
		}
		fprintf(archivo,";\n");
		if(i==(tam-1))
			fprintf(archivo,"];");
		}		
}


int main(){
	
FILE *pFile;
	 pFile = fopen ("nombre.txt" , "r");
	for(int i=0;i<165;i++){
		 fgets (estacion[i] , 40 , pFile);		
   			strtok(estacion[i],"\n");
   		}
		 fclose (pFile);



	FILE *archivo;
	archivo = fopen("matriz.txt","r");
	for(int j=0;j<165;++j){
		while(ch!=';'){
			ch=fgetc(archivo);
			if(ch!=' ' && ch!=']' && ch!='A'&& ch!='[' && ch!='=' && ch!=';' && ch!='\n'){
				A[j][cont]=ch - 48;	
				cont++;
			}
		}
		cont=0;
		ch='o';
	}
	fclose(archivo);
	for (int i = 0; i < count; ++i)
	{
		for (int j = 0; j < count; ++j)
		{
			if(i>151)
				A[i][j]=A[i+1][j];
		}
	}


	for (int i = 0; i < count; ++i)
	{
		for (int j = 0; j < count; ++j)
		{
			if(j>151)
				A[i][j]=A[i][j+1];
		}
	}

	imprimir();
}

