package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.StudentDao;
@WebServlet("/delete")
public class Delete extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		StudentDao dao = new StudentDao(DBConnect.getConn());
		
		boolean f= dao.deleteStudent(id);
		HttpSession session = req.getSession();

		if (f) {

			session.setAttribute("SucessMesg", "Student Details Delete Sucessfully");
			resp.sendRedirect("index.jsp");
			System.out.println("Student Details Submit Sucessfully");
		} else {
			session.setAttribute("ErrorMesg", "Server Error");
			resp.sendRedirect("index.jsp");
			System.out.println("Server Error");
		}
	}

}
