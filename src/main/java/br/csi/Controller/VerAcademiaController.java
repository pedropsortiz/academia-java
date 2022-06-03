package br.csi.Controller;
import br.csi.Model.Academia;
import br.csi.Service.AcademiaService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("verAcademia")
public class VerAcademiaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/AcademiasLista.jsp");
        List<Academia> academiaLista = new AcademiaService().listarAcademias();
        req.setAttribute("academiasLista", academiaLista);
        rd.forward(req, resp);

    }
}