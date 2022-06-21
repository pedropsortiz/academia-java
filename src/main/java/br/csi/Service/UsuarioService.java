package br.csi.Service;
import br.csi.Dao.UsuarioDao;
import br.csi.Model.Usuario;

import java.sql.Date;

public class UsuarioService {

    public Usuario autenticar(String email, String senha, String idAcademia) {

        Usuario u = new UsuarioDao().getUsuario(email, senha, idAcademia);

        try {
            if (u.getEmailUsuario().equals(email) && u.getSenhaUsuario().equals(senha)){
                return u;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;

    }

    public boolean Inserir(String nomeUsuario, String emailUsuario, String senhaUsuario, Date dataNascUsuario, String CpfUsuario, String sexoUsuario, String idPlano, String telefoneAluno, String idAcademia) {

        try {
            if (new UsuarioDao().InsertUsuario(nomeUsuario, emailUsuario, senhaUsuario, dataNascUsuario, CpfUsuario, sexoUsuario, idPlano, telefoneAluno, idAcademia)){
                return true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return false;

    }

}
