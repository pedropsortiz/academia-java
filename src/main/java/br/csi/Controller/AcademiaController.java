package br.csi.Controller;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("academia")

    public class AcademiaController extends HttpServlet {

        protected void doPost(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

            String botaoEntrar = req.getParameter("botaoEntrar");
            String botaoCadastrar = req.getParameter("botaoCadastrar");

            RequestDispatcher rd;
            String Url = "WEB-INF/";

            if (botaoEntrar == null)
            {
                Url += "Cadastrar.jsp";
            }
            else
            {
                Url = "Entrar.jsp";
            }

            rd = req.getRequestDispatcher(Url);
            rd.forward(req, rep);

        }

}
