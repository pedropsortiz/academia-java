package br.csi.Controller;

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

//        aoba

        HttpSession sessao = req.getSession();
        sessao.setAttribute("usuario_logado", emailLogin);
        rd = req.getRequestDispatcher("WEB-INF/home/Dashboard.jsp");

//        aoba2

        rd.forward(req, rep);

    }

}
