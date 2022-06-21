package br.csi.Dao;

import br.csi.Model.Usuario;

import java.sql.*;

public class UsuarioDao {

    private String sql;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public Usuario getUsuario(String emailAluno, String senhaAluno, String idAcademia){

        Usuario user = null;

        try (Connection connection = new ConectaDBPostgres().getConexao()) {
            this.sql = "SELECT Al.idAluno, Al.nomeAluno, Al.emailAluno, Al.senhaAluno, AA.idaluno, AA.idacademia, A.idAcademia FROM Aluno AS Al INNER JOIN AcademiaAluno AS AA ON (AA.idaluno = Al.idaluno) INNER JOIN Academia AS A ON (A.idacademia = AA.idacademia) WHERE Al.emailAluno = ? AND Al.senhaAluno = ? AND A.idAcademia = ?;";
            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setString(1, emailAluno);
            preparedStatement.setString(2, senhaAluno);
            preparedStatement.setInt(3, Integer.parseInt(idAcademia));
            resultSet = preparedStatement.executeQuery();
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

    public boolean InsertUsuario(String nomeUsuario, String emailUsuario, String senhaUsuario, Date dataNascUsuario, String CpfUsuario, String sexoUsuario, String idPlano, String telefoneAluno, String idAcademia){
        try (Connection connection = new ConectaDBPostgres().getConexao()) {
            this.sql = "INSERT INTO Aluno (nomeAluno, emailAluno, senhaAluno, dataNascAluno, CpfAluno, sexoAluno, idPlano, telefoneAluno) VALUES  (?, ?, ?, ?, ?, ?, ?, ?);";
            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setString(1, nomeUsuario);
            preparedStatement.setString(2, emailUsuario);
            preparedStatement.setString(3, senhaUsuario);
            preparedStatement.setDate(4, dataNascUsuario);
            preparedStatement.setString(5, CpfUsuario);
            preparedStatement.setString(6, sexoUsuario);
            preparedStatement.setInt(7, Integer.parseInt(idPlano));
            preparedStatement.setString(8, telefoneAluno);
            preparedStatement.execute();
            this.sql = "SELECT idAluno FROM ALUNO WHERE cpfAluno = ?;";
            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setString(1, CpfUsuario);
            resultSet = preparedStatement.executeQuery();
            int idAluno = 0;
            while (resultSet.next())
            {
                idAluno = resultSet.getInt("idAluno");
            }
            this.sql = "INSERT INTO academiaAluno (idAluno, idAcademia) VALUES (?, ?);";
            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setInt(1, idAluno);
            preparedStatement.setInt(2, Integer.parseInt(idAcademia));
            preparedStatement.execute();
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }

        return true;

    }

}
