package br.csi.Dao;

import br.csi.Model.Academia;
import br.csi.Model.Plano;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.sql.*;
import java.io.*;
import java.util.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PlanoDao {

    private String sql;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public List<Plano> getPlanos(String idAcademia){

        try (Connection connection = new ConectaDBPostgres().getConexao()) {
            this.sql = "select * from plano INNER JOIN academiaplano a on plano.idplano = a.idplano WHERE idAcademia=?;";
            int idAcademiaComando =Integer.parseInt(idAcademia);
            preparedStatement = connection.prepareStatement(this.sql);
            preparedStatement.setInt(1, idAcademiaComando);
            resultSet = preparedStatement.executeQuery();
            List<Plano> Planos = new ArrayList<>();
            while (resultSet.next()) {
                Plano plano = new Plano(resultSet.getInt("idPlano"),
                        resultSet.getFloat("valorPlano"),
                        resultSet.getString("mesesPlano"),
                        resultSet.getString("nomePlano"),
                        resultSet.getString("descricaoPlano")
                        );
                Planos.add(plano);
            }
            return Planos;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}
