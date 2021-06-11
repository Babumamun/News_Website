package com.news;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveUpdateServlet
 */
@WebServlet("/saveupdate")
public class SaveUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
        String tittle=request.getParameter("tittle");
        String deatils=request.getParameter("des");
        News news= new News();
        news.setId(id);
        news.setTittle(tittle);
        news.setDes(deatils);
        NewsDAO newsDAO= new NewsDAO();
        int result=newsDAO.update(news);
        String msg="";
        if(result>0)
            msg="Update News Successfully!";
        else
            msg="Update News Failed!";
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
