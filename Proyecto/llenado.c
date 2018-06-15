/*
línea 1 (1-20)
línea 2 (21-43)
línea 3 (44-62)
línea 4 (63-71)
línea 5 (72-81)
línea 6 (82-89)
línea 7 (90-100)
línea 8 (101-115)
línea 9 (116-122)
línea A (123-131)
línea B (132-147)
línea 12 (148-163)
*/

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
int tam=163,adyacencia,nodo,costo,cont;
int A[163][163];
char estacion[163][40];
	char s[40],ans[2];
	int c;
	char ch;
	int indice,cont=0;
	int error,cagadas=0;
	int temp[8];
	int tempo[8];

#define RED "e[31m"
void recorrer(){
	for(int i=0;i<tam;i++){
		for(int j=0;j<tam;j++){
			A[i][j] = 0;
		}
	}
}

void llenado(int i){
	printf("-----------------------------------------------------------------------------------------------------------\n");
		printf("RAMAS (ADYACENCIAS) del NODO [%d] %s : --->",i+1,estacion[i]);
		scanf("%d",&adyacencia);
			while ((c = getchar()) != '\n' && c != EOF);	//LIMPIA EL BUFFER CORRECTAMENTE			
					
			for(int j=0;j<adyacencia;j++){
				printf("Ingrese el NODO con la adyacencia (NOMBRE DE LA ESTACIÓN) [%d] : --->",j+1);
				fgets(s, 40, stdin);
   				error=0;
					for (int m = 0; m < 163; ++m)
					{
						if(strncmp(estacion[m],s,strlen(estacion[m]))==0){
							indice=m;
							error=1;
							break;
						}
					}
				if(error){
					printf("Costo (TIEMPO) para llegar al nodo [%d] %s:  --->",indice+1,estacion[indice]);
					scanf("%d",&costo);
					while ((c = getchar()) != '\n' && c != EOF);		//LIMPIA EL BUFFER CORRECTAMENTE	
		
					A[i][indice]=costo;
			
					temp[j]=indice;
					tempo[j]=costo;

				}
				else{
					printf("\t\tLa estacion NO EXISTE, intente otro nombre, quizá no lo escribió bien, don pendejo\n");
					j--;
				}
		}
		
		printf("\n\tCONFIRMACION DE DATOS\n");
		for (int l = 0; l < adyacencia; ++l)
		{
			printf("\t\tEstacion %s - Costo %d \n",estacion[temp[l]],tempo[l]);
				
		}
		printf("\tMODIFICAR Datos del NODO [%d] %s : (S/N) \n",i+1,estacion[i]);
		fgets(ans, 2, stdin);
		if(strncmp("S",ans,strlen(ans))==0){
			
		for (int n = 0; n < 163; ++n)
		{
					A[i][n]=0;
			
		}
		i--;
		}
		printf("-----------------------------------------------------------------------------------------------------------\n");
}
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
	
FILE * pFile;
	 pFile = fopen ("estaciones.txt" , "r");
	recorrer();
	for(int i=0;i<163;i++){
		 fgets (estacion[i] , 40 , pFile);		
   			strtok(estacion[i],"\n");
   		}
		 fclose (pFile);



	FILE *archivo;
	archivo = fopen("matriz.txt","r");
	for(int j=0;j<163;++j){
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

	for(int i =0;i<tam;i++){
			printf("La estacion %s numero %d tiene las adyacencias :\n",estacion[i],i+1);
			for (int k = 0; k < 163; ++k)
			{
				if (A[i][k]==2)
				{
					printf("%s\n",estacion[k]);
				}
			}
		printf("Desea MODIFICAR Datos del NODO [%d] %s : (S/N) \n",i+1,estacion[i]);
		fgets(ans, 2, stdin);
		if(strncmp("S",ans,strlen(ans))==0){
			
		for (int n = 0; n < 163; ++n)
		{
					A[i][n]=0;
		}
		llenado(i);
		}
		while ((c = getchar()) != '\n' && c != EOF);
		system("clear");
		

	}
	imprimir();
}

