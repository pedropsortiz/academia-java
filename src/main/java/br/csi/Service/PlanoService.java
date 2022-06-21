package br.csi.Service;

import br.csi.Dao.PlanoDao;
import br.csi.Model.Plano;

import java.util.List;

public class PlanoService {

    public List<Plano> listarPlanos(String idAcademia) {

        try {
            List<Plano> planoLista;
            planoLista = new PlanoDao().getPlanos(idAcademia);
            return planoLista;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;

    }

}
