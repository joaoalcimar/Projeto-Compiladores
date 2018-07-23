package analiseSemantica;

import java.util.LinkedList;

public class DeclaracaoDeParametro {
	public LinkedList<String> identificadores;
	public Tipo tipo;

	DeclaracaoDeParametro(LinkedList<String> identificadores, Tipo tipo){
		this.identificadores = identificadores;
		this.tipo = tipo;
	}
	
	DeclaracaoDeParametro(Tipo tipo){
		this.identificadores = null;
		this.tipo = tipo;
	}

	public void gen()
	{
		System.out.println("Inside GoParameterDecl");
		if ( tipo != null )
		{
			tipo.gen();
		}
		if(identificadores != null)
		for(int i=0; i< identificadores.size();++i)
		{
			System.out.println("Identificadores");
			System.out.println(identificadores.get(i));
		}	
	}
}
