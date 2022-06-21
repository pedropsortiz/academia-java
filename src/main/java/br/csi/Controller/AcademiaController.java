package br.csi.Controller;


import br.csi.Model.Academia;
import br.csi.Model.Plano;
import br.csi.Service.AcademiaService;
import br.csi.Service.PlanoService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("academia")

    public class AcademiaController extends HttpServlet {

        protected void doPost(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

            String idAcademia = req.getParameter("idAcademia");
            String botaoEntrar = req.getParameter("botaoEntrar");
            String botaoCadastrar = req.getParameter("botaoCadastrar");
            RequestDispatcher rd;
            String Url = "WEB-INF/";

            if (botaoEntrar == null)
            {
                Url += "Academia.jsp";
                List<Plano> plano = new PlanoService().listarPlanos(idAcademia);
                System.out.println(plano.get(0));
                req.setAttribute("planosLista", plano);
            }
            else
            {
                Url = "Entrar.jsp";
            }
            Academia academia = new AcademiaService().getAcademia(idAcademia);
            req.setAttribute("academiaObj", academia);
            rd = req.getRequestDispatcher(Url);
            rd.forward(req, rep);

        }

}
