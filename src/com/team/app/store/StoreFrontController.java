package com.team.app.store;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.ActionForward;
import com.team.app.manage.ManageInsertEventOkAction;
import com.team.app.manage.ManageInsertNoticeOkAction;
import com.team.app.manage.ManageInsertStoreOkAction;
import com.team.app.manage.ManageLoginOkAction;

public class StoreFrontController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;

		switch (command) {
		case "/store/Props.st":
			try {forward = new StorePropsOKAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			break;
		/*case "/manage/ManageLogin.mn":
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/manage/manageLogin.jsp");
			break;
	
		*/
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}

	}



}
