package br.csi.Service;

import br.csi.Dao.AcademiaDao;
import br.csi.Model.Academia;

import java.util.List;

public class AcademiaService {

    public List<Academia> listarAcademias() {

        try {
            List<Academia> academiaLista;
            academiaLista = new AcademiaDao().getAcademias();
            return academiaLista;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;

    }

    public Academia getAcademia(String cnpjAcademia) {

        try {
            Academia academia;
            academia = new AcademiaDao().getAcademia(cnpjAcademia);
            return academia;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;

    }

}
