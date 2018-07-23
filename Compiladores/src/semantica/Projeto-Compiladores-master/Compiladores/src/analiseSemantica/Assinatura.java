package analiseSemantica;

import java.util.LinkedList;

public class Assinatura {
	public LinkedList<DeclaracaoDeParametro> parametros;
	public Object obj;

	Assinatura( LinkedList<DeclaracaoDeParametro> parametros, Tipo type){
		this.parametros = parametros;
		this.obj = type;
	}
	
	Assinatura( LinkedList<DeclaracaoDeParametro> parametros1, LinkedList<DeclaracaoDeParametro> parametros2){
		this.parametros = parametros1;
		this.obj = parametros2;
	}
	
	Assinatura(LinkedList<DeclaracaoDeParametro> parameters)
	{
		this.parametros = parameters;
		this.obj = null;
	}
	
	public void gen(){
		System.out.println("Assinatura");
		for(int i=0; i<parametros.size(); ++i){
			parametros.get(i).gen();
		}
		
		if ( obj == null ){
			
		}else if (obj instanceof LinkedList){
			
			for(int i=0; i<parametros.size();++i){
				parametros.get(i).gen();
			}
			
		}else if (obj instanceof Tipo){
				((Tipo)obj).gen();
		}
		
	}
	
}
