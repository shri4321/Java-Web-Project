package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.factoryP;
import com.noteT.noteStudent;


public class saveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public saveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("contents");
			
			noteStudent nt = new noteStudent(title, content, new Date());
			System.out.println(nt.getId()+" : "+nt.getTitle());
			
			Session s = factoryP.getFactory().openSession();
			
			Transaction tx = s.beginTransaction();
			
			s.save(nt);
			
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='showNotes.jsp'>View All Note</a></h1>");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
