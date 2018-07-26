package analiseSemantica;

public class Tipo {
	public Object obj;
	
	Tipo(TipoNome tipoNome){
		this.obj = tipoNome;
	}
	Tipo(Tipo tipoLiteral){
		this.obj =tipoLiteral ;
	}
	Tipo(){
		this.obj = null;
	}
	public void gen()
	{
		if ( obj instanceof TipoNome)
			((TipoNome)obj).gen();
	}

	public String get_type()	
	{
		String parsedDataType = "";
		Object dataType = obj;
		if(dataType instanceof TipoNome){
            parsedDataType = ((TipoNome)dataType).typeName; 
		}else{
            System.out.println("ERROR: Tipo invalido");
        }
        return parsedDataType;
	}

}
