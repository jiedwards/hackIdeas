package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Contact;
import models.ContactsDAO;

public class ServletAddNewContact extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher view = req.getRequestDispatcher("addnew.jsp");
		view.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ContactsDAO dao = new ContactsDAO();
		
		String name = (String) req.getParameter("name");
		String email = (String) req.getParameter("email");
		
		Contact c = new Contact(name, email);
		try {
			boolean done = dao.insertContact(c);
			System.out.println(done);;
			if (done) {
				resp.sendRedirect("home");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
	}

}
