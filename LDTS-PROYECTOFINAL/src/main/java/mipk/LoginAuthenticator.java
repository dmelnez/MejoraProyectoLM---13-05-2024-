package mipk;

import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginAuthenticator
 */
public class LoginAuthenticator extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAuthenticator() {
    	super();
        // TODO Auto-generated constructor stub
        
  
 
                        		                
            	
    	

    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("./index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		
		beanDB db = new beanDB();
		HttpSession session = request.getSession();
		String usuario=request.getParameter("usuario");
		String pass=request.getParameter("pass");

		boolean ok=false;
		    	
    	String administradoresQuery = "SELECT user_name, pass FROM configuraciones WHERE user_name LIKE '" 
    						+ usuario  + "' AND pass LIKE '" + pass +  "';";
    	
    	System.out.println(administradoresQuery);

    
    	
    	try {
    		db.conectarBD();
    		String[][] administradoresTabla =  db.resConsultaSelectA3(administradoresQuery);
	    	if (administradoresTabla.length > 0) {
	    		ok = true;
	    		response.sendRedirect("panelAdministrador.jsp");
	    	}
		} catch (Exception e) {
			response.sendRedirect("wp-admin.jsp");
		} finally {
			db.desconectarBD();
		}
    	
    	
    	
    	
    	if (!ok) {
        	String administradoresQuery2 = "SELECT email, contrasenia FROM usuarios WHERE email LIKE '" 
					+ usuario  + "' AND contrasenia = '" + pass +  "';";

        	System.out.println(administradoresQuery2);

        	try {
        		db.conectarBD();
			String[][] administradoresTabla2 =  db.resConsultaSelectA3(administradoresQuery2);
        	System.out.println(administradoresQuery2);

			if (administradoresTabla2.length > 0) {
				ok = true;
				response.sendRedirect("index.jsp");
			}
		} catch (Exception e) {
			response.sendRedirect("registroUsuarios.jsp");
		} finally {
			db.desconectarBD();
		}

    	}
	

    
    	
    	

	}


}
