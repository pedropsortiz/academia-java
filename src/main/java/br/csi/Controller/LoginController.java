package br.csi.Controller;

import br.csi.Model.Academia;
import br.csi.Model.Usuario;
import br.csi.Service.AcademiaService;
import br.csi.Service.UsuarioService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("login")

public class LoginController extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

        String emailLogin = req.getParameter("emailLogin");
        String senhaLogin = req.getParameter("senhaLogin");
        String cnpjAcademia = req.getParameter("cnpjAcademia");

        RequestDispatcher rd;
        String Url = "WEB-INF/";

        Usuario usuario = new UsuarioService().autenticar(emailLogin, senhaLogin, cnpjAcademia);
        Academia academia = new AcademiaService().getAcademia(cnpjAcademia);

        if (usuario != null) {
            HttpSession sessao = req.getSession();
            sessao.setAttribute("usuario_logado", usuario);
            sessao.setAttribute("academia_logado", academia);
            Url += "home/Index.jsp";
        } else {
            req.setAttribute("erro", "Usuário ou senha incorretos");
            Url = "Entrar.jsp";
        }

        rd = req.getRequestDispatcher(Url);
        rd.forward(req, rep);

    }

}
