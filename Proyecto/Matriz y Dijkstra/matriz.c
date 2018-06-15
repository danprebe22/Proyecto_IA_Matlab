#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
int tam=168,adyacencia,nodo,costo,cont;
int A[168][168];
char estacion[168][40];
#define RED "e[31m"
void recorrer(){
	for(int i=0;i<tam;i++){
		for(int j=0;j<tam;j++){
			A[i][j] = 0;
		}
	}
}
void imprimir(){
	FILE *archivo;
	archivo = fopen("matriz.txt","w");
	
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
	char s[40],ans[2];
	int c;
	int indice;
	int error,cagadas=0;
	int temp[8];
	int tempo[8];
	 pFile = fopen ("nombre.txt" , "r");
	recorrer();
	for(int i=0;i<168;i++){
		 fgets (estacion[i] , 40 , pFile);		
   			strtok(estacion[i],"\n");
   		}
		 fclose (pFile);

	for(int i =0;i<tam;i++){
			
		printf("-----------------------------------------------------------------------------------------------------------\n");
		printf("Cuantas ADYACENCIAS (PUTAS RAMAS) TIENE EL NODO [%d] %s :\n",i+1,estacion[i]);
		scanf("%d",&adyacencia);
			while ((c = getchar()) != '\n' && c != EOF);	//LIMPIA EL BUFFER CORRECTAMENTE			
					
			for(int j=0;j<adyacencia;j++){
				printf("Ingrese el NODO con la adyacencia (EL PUTO NOMBRE DE LA ESTACIÓN, MAMÓN) [%d] :\n",j+1);
				fgets(s, 40, stdin);
   				error=0;
					for (int i = 0; i < 168; ++i)
					{
						if(strncmp(estacion[i],s,strlen(estacion[i]))==0){
							indice=i;
							error=1;
							break;
						}
					}
				if(error){
					printf("Ingrese el COSTO (EL PERRO TIEMPO) para llegar al nodo [%d] %s:\n",indice+1,estacion[indice]);
					scanf("%d",&costo);
					while ((c = getchar()) != '\n' && c != EOF);		//LIMPIA EL BUFFER CORRECTAMENTE	
		
					A[i][indice]=costo;
			
					temp[j]=indice;
					tempo[j]=costo;

				}
				else{
					printf("La estacion no existe, intente otro nombre, tal vez no lo escribio bien, pendejo\n");
					j--;
				}
		}
		
		printf("\nCONFIRMACION DE DATOS\n");
		for (int l = 0; l < adyacencia; ++l)
		{
			printf("Estacion %s - Costo %d \n",estacion[temp[l]],tempo[l]);
				
		}
		printf("Desea MODIFICAR Datos del NODO [%d] %s : (S/N) \n",i+1,estacion[i]);
		fgets(ans, 2, stdin);
		if(strncmp("S",ans,strlen(ans))==0){
			
		for (int n = 0; n < 168; ++n)
		{
					A[i][n]=0;
			
		}
		i--;
		}
		printf("-----------------------------------------------------------------------------------------------------------\n");

	}
	imprimir();
}