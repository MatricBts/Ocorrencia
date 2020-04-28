package dao;

import model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ProdutoDAO {
    
    private Connection conn;
    private PreparedStatement stmt; //passa mysql como parametro
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList <>();
    
    public ProdutoDAO(){
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir(Produto produto){
        String sql = "INSERT INTO produto (descricao_ocorrencia, equipamento_ocorrencia, data_ocorrencia, profissional_ocorrencia) VALUES (?,?,?,?)" ;
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getDescricao_ocorrencia());
            stmt.setString(2, produto.getEquipamento_ocorrencia());
            stmt.setString(3, produto.getData_ocorrencia());
            stmt.setString(4, produto.getProfissional_ocorrencia());
            stmt.execute();
            stmt.close();
        }catch (Exception erro){
            throw new RuntimeException("Erro 2: "+ erro);
        }
    }
    
    public void alterar(Produto produto){
        String sql = "UPDATE produto SET descricao_produto, preco_produto, data_ocorrencia,proficional_ocorrencia,data_ocorrencia  = ? WHERE codigo_produto = ?" ;
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getDescricao_ocorrencia());
            stmt.setString(2, produto.getEquipamento_ocorrencia());
            stmt.setInt(3, produto.getCodigo_ocorrencia());
            stmt.setString(4, produto.getData_ocorrencia());
           
            stmt.execute();
            stmt.close();
        }catch (Exception erro){
            throw new RuntimeException("Erro 2: "+ erro);
        }
    }
    
    public void excluir(int valor){
        String sql = "DELETE FROM produto WHERE codigo_ocorrencia = "+valor ;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch (Exception erro){
            throw new RuntimeException("Erro 2: "+ erro);
        }
    }
    
    public ArrayList<Produto> listarTodos(){
        String sql = "SELECT * FROM produto";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Produto produto = new Produto();
                produto.setCodigo_ocorrencia(rs.getInt("codigo_ocorrencia"));
                produto.setDescricao_ocorrencia(rs.getString("descricao_ocorrencia"));
                produto.setEquipamento_ocorrencia(rs.getString("equipamento_ocorrencia"));
                produto.setData_ocorrencia(rs.getString("data_ocorrencia"));
                produto.setProfissional_ocorrencia(rs.getString("profissional_ocorrencia"));
                lista.add(produto);
        }
            
        }catch(Exception erro){
            throw new RuntimeException("Erro 5: "+erro);
        }
        return lista;
    }
    
    public ArrayList<Produto> listarTodosDescricao(String valor){
        String sql = "SELECT * FROM produto WHERE data_ocorrencia LIKE '%"+valor+"%' ";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Produto produto = new Produto();
                produto.setCodigo_ocorrencia(rs.getInt("codigo_ocorrencia"));
                produto.setDescricao_ocorrencia(rs.getString("descricao_ocorrencia"));
                produto.setEquipamento_ocorrencia(rs.getString("equipamento_ocorrencia"));
                produto.setData_ocorrencia(rs.getString("data_ocorrencia"));
                produto.setProfissional_ocorrencia(rs.getString("profissional_ocorrencia"));
                lista.add(produto);
        }
            
        }catch(Exception erro){
            throw new RuntimeException("Erro 5: "+erro);
        }
        return lista;
    }
}
