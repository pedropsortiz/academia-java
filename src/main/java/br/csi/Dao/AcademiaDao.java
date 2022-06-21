package br.csi.Dao;

import br.csi.Model.Academia;
import br.csi.Model.Usuario;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.sql.*;
import java.io.*;
import java.util.*;

public class AcademiaDao {

    private String sql;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public List<Academia> getAcademias() {

        try (Connection connection = new ConectaDBPostgres().getConexao()) {
            this.sql = "SELECT * FROM Academia;";
            preparedStatement = connection.prepareStatement(this.sql);
            resultSet = preparedStatement.executeQuery();
            List<Academia> Academias = new ArrayList<>();
            while (resultSet.next()) {
                Academia academia = new Academia(resultSet.getInt("idAcademia"),
                        resultSet.getString("cnpjAcademia"),
                        resultSet.getString("situacaoAcademia"),
                        resultSet.getString("nomeFantasiaAcademia"),
                        resultSet.getString("nomeEmpresarialAcademia"),
                        resultSet.getString("enderecoAcademia"),
                        resultSet.getString("contatoAcademia"),
                        resultSet.getString("descricaoAcademia"),
                        resultSet.getString("fotoAcademia"),
                        resultSet.getString("logoAcademia"));
                Academias.add(academia);
            }
            return Academias;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public Academia getAcademia(String idAcademia) {
        Academia academia = null;

        try (Connection connection = new ConectaDBPostgres().getConexao()) {
            this.sql = "SELECT * FROM Academia WHERE idAcademia = ?;";
            int idAcademiaComando = Integer.parseInt(idAcademia);
            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setInt(1, idAcademiaComando);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                academia = new Academia(resultSet.getInt("idAcademia"),
                        resultSet.getString("cnpjAcademia"),
                        resultSet.getString("situacaoAcademia"),
                        resultSet.getString("nomeFantasiaAcademia"),
                        resultSet.getString("nomeEmpresarialAcademia"),
                        resultSet.getString("enderecoAcademia"),
                        resultSet.getString("contatoAcademia"),
                        resultSet.getString("descricaoAcademia"),
                        resultSet.getString("fotoAcademia"),
                        resultSet.getString("logoAcademia"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return academia;
    }

}
