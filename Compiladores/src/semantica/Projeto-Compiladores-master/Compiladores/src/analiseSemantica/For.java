package analiseSemantica;

public class For {
	public String comeco;
	public String bloco;
	public String atualizacao;
	public String fora;
	
	For(String comeco, String block, String updt, String out){
		this.comeco = comeco;
		this.bloco = block;
		this.atualizacao = updt;
		this.fora = out;
	}

	public void gen(){
		System.out.println("Inside GoForStmt");
		System.out.println(comeco+" "+bloco+" "+atualizacao+" "+fora);
	}
}