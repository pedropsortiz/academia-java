package br.csi.Controller;

import br.csi.Model.Academia;
import br.csi.Service.AcademiaService;
import br.csi.Service.UsuarioService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet("cadastro")

public class CadastroController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

        String idAcademia = req.getParameter("idAcademia");
        String nomeCadastro = req.getParameter("nomeCadastro");
        String emailCadastro = req.getParameter("emailCadastro");
        String senhaCadastro = req.getParameter("senhaCadastro");
        String telefoneCadastro = req.getParameter("telefoneCadastro");
        Date dataCadastro = Date.valueOf(req.getParameter("dataCadastro"));
        String planoCadastro = req.getParameter("planoCadastro");
        String sexoCadastro = req.getParameter("sexoCadastro");
        String cpfCadastro = req.getParameter("cpfCadastro");

        RequestDispatcher rd;
        String Url = "WEB-INF/";


        try {
            new UsuarioService().Inserir(nomeCadastro, emailCadastro, senhaCadastro, dataCadastro, cpfCadastro, sexoCadastro, planoCadastro, telefoneCadastro, idAcademia);
            Url = "Entrar.jsp";
        } catch (Exception e){
            Url += "Academia.jsp";
            e.printStackTrace();
        }

        Academia academia = new AcademiaService().getAcademia(idAcademia);
        req.setAttribute("academiaObj", academia);
        rd = req.getRequestDispatcher(Url);
        rd.forward(req, rep);

    }

}
