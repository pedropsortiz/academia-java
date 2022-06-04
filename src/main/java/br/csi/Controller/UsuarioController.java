package br.csi.Controller;

import br.csi.Service.UsuarioService;
import br.csi.Model.Usuario;
import br.csi.Service.UsuarioService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("cadastrar")

public class UsuarioController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

        String nomeUsuario = req.getParameter("nomeCadastro");
        String emailUsuario = req.getParameter("emailCadastro");
        String senhaUsuario = req.getParameter("senhaCadastro");
        String CpfUsuario = req.getParameter("CpfCadastro");
        String sexoUsuario = req.getParameter("sexoCadastro");
        String dataEmTexto = req.getParameter("dataNascCadastro");
        String cnpjAcademia = req.getParameter("cnpjAcademia");
        Date dataNascUsuario = null;
        try {
            dataNascUsuario = new SimpleDateFormat("yyyy-MM-dd").parse(dataEmTexto);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        RequestDispatcher rd;

        String Url = "WEB-INF/";
        System.out.println( req.getParameter("CpfCadastro"));
        try {
            if (new UsuarioService().Inserir(nomeUsuario, emailUsuario, senhaUsuario, CpfUsuario, sexoUsuario, new java.sql.Date(dataNascUsuario.getTime()))){
                Url += "login.jsp";
            }
            else{
                req.setAttribute("erro", "Erro no cadastro!");
                Url += "Cadastrar.jsp";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        rd = req.getRequestDispatcher(Url);
        rd.forward(req, rep);

    }
}