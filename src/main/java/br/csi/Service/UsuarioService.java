package br.csi.Service;
import br.csi.Dao.UsuarioDao;
import br.csi.Model.Usuario;

import java.sql.Date;

public class UsuarioService {

    public Usuario autenticar(String email, String senha) {

        Usuario u = new UsuarioDao().getUsuario(email, senha);

        try {
            if (u.getEmailUsuario().equals(email) && u.getSenhaUsuario().equals(senha)){
                return u;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;

    }

    public boolean Inserir(String nomeUsuario, String emailUsuario, String senhaUsuario, String CpfUsuario, String sexoUsuario, Date dataNascUsuario) {

        System.out.println(CpfUsuario);
        try {
            if (new UsuarioDao().InsertUsuario(nomeUsuario, emailUsuario, senhaUsuario, CpfUsuario, sexoUsuario, dataNascUsuario)){
                return true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return false;

    }

}
