package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.factoryP;
import com.noteT.noteStudent;


public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("contents");
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			Session s = factoryP.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			noteStudent ns=s.get(noteStudent.class, noteId);
			ns.setTitle(title);
			ns.setContent(content);
			ns.setAddedDate(new Date());
			
			tx.commit();
			s.close();
			response.sendRedirect("showNotes.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
