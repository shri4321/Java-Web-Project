package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.factoryP;
import com.noteT.noteStudent;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteServlet() {
        super();
        
    }
     	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
     		try {
				int noteId=Integer.parseInt(request.getParameter("note_id").trim());
				Session s = factoryP.getFactory().openSession();
				Transaction tx = s.beginTransaction();
				noteStudent s1=(noteStudent)s.get(noteStudent.class, noteId);
				s.delete(s1);
     			
				tx.commit();
     			s.close();
     			response.sendRedirect("showNotes.jsp");
     			
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	}


}
