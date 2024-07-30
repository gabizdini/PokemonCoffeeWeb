/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pokemoncoffee.modelo.dao;

import com.mycompany.pokemoncoffee.modelo.entidade.Categoria;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CategoriaDao extends GenericoDAO<Categoria>{
    public void salvar(Categoria c){
        String insert = "INSERT INTO CIDADE(NOME) VALUES (?)";
        save(insert, c.getNomeCategoria());
    }
    
    public void alterar(Categoria c){
        String update = "UPDATE CIDADE SET NOME=?, WHERE CODIGO=?";
        save(update,c.getNomeCategoria(), c.getCodigoCategoria());
    }
    
    public void excluir(Categoria c){
        String delete="DELETE FROM CIDADE WHERE CODIGO=?";
        save(delete, c.getCodigoCategoria());
    }
    
    public Categoria buscarPorId(int id){
        String select = "SELECT * FROM CIDADE WHERE CODIGO=?";
        return buscarPorId(select, new CategoriaRowMapper(), id);
    }
    
    public List<Categoria> buscarTodas(){
         String select = "SELECT * FROM CIDADE";
        return buscarTodos(select, new CategoriaRowMapper());
    }
    
    public static class CategoriaRowMapper implements RowMapper<Categoria>{

        @Override
        public Categoria mapRow(ResultSet rs) throws SQLException {
            Categoria categoria = new Categoria();
            categoria.setCodigoCategoria(rs.getInt("CODIGO"));
            categoria.setNomeCategoria(rs.getString("NOME"));
            return categoria;
        }
        
    }
}
