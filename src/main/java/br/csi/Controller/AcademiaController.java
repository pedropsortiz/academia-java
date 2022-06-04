package br.csi.Controller;


import br.csi.Dao.AcademiaDao;
import br.csi.Model.Academia;
import br.csi.Service.AcademiaService;

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

            String cnpjAcademia = req.getParameter("cnpjAcademia");
            String botaoEntrar = req.getParameter("botaoEntrar");
            String botaoCadastrar = req.getParameter("botaoCadastrar");
            RequestDispatcher rd;
            String Url = "WEB-INF/";

            if (botaoEntrar == null)
            {
                Url += "Academia.jsp";
            }
            else
            {
                Url = "Entrar.jsp";
            }
            Academia academia = new AcademiaService().getAcademia(cnpjAcademia);
            req.setAttribute("academiaObj", academia);
            rd = req.getRequestDispatcher(Url);
            rd.forward(req, rep);

        }

}
