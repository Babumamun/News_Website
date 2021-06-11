package com.news;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddSevlet
 */
@WebServlet("/add")
public class AddSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 News news=new News();
		 news.setId(request.getParameter("id"));
		 news.setTittle(request.getParameter("tittle"));
		 news.setDes(request.getParameter("des"));
		 NewsDAO newsDAO= new NewsDAO();
         int result=newsDAO.add(news);
         String msg="";
         if(result>0)
             msg="Add News successfully!";
         else
             msg="Failed to add the News!";
         request.getSession().setAttribute("msg",msg);
         response.sendRedirect("result.jsp");
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
