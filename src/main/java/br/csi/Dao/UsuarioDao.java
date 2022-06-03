package br.csi.Dao;

import br.csi.Model.Usuario;

import java.sql.*;

public class UsuarioDao {

    private String sql;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public Usuario getUsuario(String emailAluno, String senhaAluno){

        Usuario user = null;

        try (Connection connection = new ConectaDBPostgres().getConexao()) {
            this.sql = "SELECT idAluno, nomeAluno, emailAluno, senhaAluno FROM Aluno WHERE emailAluno = ? AND senhaAluno = ?;";

            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setString(1, emailAluno);
            preparedStatement.setString(2, senhaAluno);
            resultSet = preparedStatement.executeQuery();
//            System.out.println("GetUsuario: " + preparedStatement);
            while (resultSet.next())
            {
                user = new Usuario();
                user.setIdUsuario(resultSet.getInt("idAluno"));
                user.setNomeUsuario(resultSet.getString("nomeAluno"));
                user.setEmailUsuario(resultSet.getString("emailAluno"));
                user.setSenhaUsuario(resultSet.getString("senhaAluno"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;

    }

    public boolean InsertUsuario(String nomeUsuario, String emailUsuario, String senhaUsuario, String CpfUsuario, String sexoUsuario, Date dataNascUsuario){
        System.out.println(CpfUsuario);
        try (Connection connection = new ConectaDBPostgres().getConexao()) {
            this.sql = "INSERT INTO Aluno (nomeAluno, dataNascAluno, CpfAluno, sexoAluno, emailAluno, senhaAluno) VALUES  (?, ?, ?, ?, ?, ?);";
            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setString(1, nomeUsuario);
            preparedStatement.setDate(2, dataNascUsuario);
            preparedStatement.setString(3, CpfUsuario);
            preparedStatement.setString(4, sexoUsuario);
            preparedStatement.setString(5, emailUsuario);
            preparedStatement.setString(6, senhaUsuario);
            preparedStatement.execute();
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }

        return true;

    }

}
