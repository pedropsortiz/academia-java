package br.csi.Dao;

import br.csi.Model.Usuario;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDao {

    private String sql;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public Usuario getUsuario(String email, String senha){

        Usuario user = null;

        //

        return user;

    }

    public boolean InsertUsuario(String nome, String email, String senha, String cpf, char sexo, Date dataNasc){

        //

        return false;

    }

}
