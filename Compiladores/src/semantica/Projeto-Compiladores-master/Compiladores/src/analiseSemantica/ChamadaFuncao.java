package analiseSemantica;
import java.util.LinkedList;
public class ChamadaFuncao
{
	public TipoNome tipoNome;
	public LinkedList<Expressoes>  exprList; //null pra funcoes void


	ChamadaFuncao(TipoNome tipoNome, LinkedList<Expressoes> exprList )
	{
		this.tipoNome = tipoNome;
		this.exprList= exprList;
	}
	ChamadaFuncao(TipoNome typeName)
	{
		this.tipoNome = typeName;
		this.exprList= null;
	}
	public void gen()
	{
		System.out.println("Chamada Funcao");
		if( exprList!=null)
		{
			for (int i = 0; i<exprList.size();++i ) 
			{
				exprList.get(i).gen();
			}			
		}
		if(tipoNome != null)
		{
			tipoNome.gen();
		}
	}
	
}