package com.vote.checkAbility.server;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServerConfig
 */
@WebServlet("/ServerConfig")
public class ServerConfig extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServerConfig() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String fname=request.getParameter("firstname");
		String lname=request.getParameter("lastname");
		String country=request.getParameter("country");
		
		
		
		String age=request.getParameter("age");
		int age2=Integer.parseInt(age);
		
		ValidDetails vDet=new ValidDetails();
		
		String agePermission=vDet.ageValidation(age2);
		
		String getValue=request.getParameter("citizen");
		String citizenPermission = vDet.checkCitizenshipCheck(getValue);
		
		String countryConfig=vDet.checkCountry(country);
		
		
		String valid="valid";
		
		if(agePermission=="yes" && citizenPermission=="yes" && country.equals("Sri Lanka"))
		{
			valid="a valid";
		}
		else{
			valid="not a valid";
		}
		//request.setAttribute("country",country);
		request.setAttribute("fname", fname);
		//request.setAttribute("country", country);
		request.setAttribute("lname", lname);
		request.setAttribute("validity", valid);
		request.getRequestDispatcher("DisplayForm.jsp").forward(request, response); 
	}

}
