package Dao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.Etudiant;
import Models.Filliere;

/**
 * Servlet implementation class AjouterEtudiant
 */
@WebServlet("/AjouterEtudiant")
public class AjouterEtudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjouterEtudiant() {
        super();
        // TODO Auto-generated constructor stub
    }
    EtudiantDaoService em;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 EtudiantDaoService em = new EtudiantDaoServiceLocator();
		 EtudiantDao dm = null;
		String nom=request.getParameter("nom");
		int id= Integer.parseInt(request.getParameter("idF"));
		

		
		
		if(request.getParameter("action").equalsIgnoreCase("Add etudiant"))
		{
				
					dm.addEtudiant1(nom, new Filliere(null, id,null));
				
				response.sendRedirect("http://localhost:8080/ProjetEtudiantClient/AllEtudiant.jsp");	
		}else
			if(request.getParameter("action").equalsIgnoreCase("Modifier"))
			{
				int id1= Integer.parseInt(request.getParameter("id"));
				Etudiant p=new Etudiant();
					dm.updateEtudiant(id1, p, id);
		
				response.sendRedirect("http://localhost:8080/ProjetEtudiantClient/AllEtudiant.jsp");
				
			}
	}

}
