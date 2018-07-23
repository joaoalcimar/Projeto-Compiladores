package analiseSemantica;

public class Expressoes{
	
	public Expressoes expr;
	public Expressoes expr2;

	Expressoes(Expressoes expr, Expressoes expr2){
		this.expr = expr;
		this.expr2 = expr2;
	}
	public void gen()
	{
		
	}
	public String getType()
	{
		if(expr == null) {
			System.out.println("expressão 1 nula");
			return null;
		}else if (expr2 == null) {
			System.out.println("expressão 2 nula");
			return null;
		}else {
			String a1 = expr.getType();
			String a2 = expr2.getType();

			if ( a1.equals(a2) == true ){
				return a1;
			}else{
				System.out.println("ERROR: Tipos " + a1 + " e " + a2 + " nao casam");
				return a1 + ":" + a2;

				}
		}
	}
	
}
