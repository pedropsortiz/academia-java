package br.csi.Controller;

import br.csi.Model.Usuario;
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

        RequestDispatcher rd;
        String Url = "WEB-INF/";

        Usuario usuario = new UsuarioService().autenticar(emailLogin, senhaLogin);

        if (usuario != null) {
            HttpSession sessao = req.getSession();
            sessao.setAttribute("usuario_logado", usuario);
            Url += "home/index.jsp";
        } else {
            req.setAttribute("erro", "Usuário ou senha incorretos");
            Url += "Entrar.jsp";
        }

        rd = req.getRequestDispatcher(Url);
        rd.forward(req, rep);

    }

}
