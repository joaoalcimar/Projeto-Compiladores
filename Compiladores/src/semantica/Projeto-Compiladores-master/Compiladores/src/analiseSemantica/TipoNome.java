package analiseSemantica;

public class TipoNome {
	String typeName;
	
	TipoNome(String typeName){
		this.typeName = typeName;
	}
	
	public void gen()
	{
		System.out.println("Nome"+this.typeName);
	}
}
	
