package com.team.app.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.store.dao.StoreDAO;

public class StorePropsOKAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionForward forward = new ActionForward();
		StoreDAO dao = new StoreDAO();
		req.setAttribute("StoreList", dao.getStoreCategory("소품"));
		
		forward.setRedirect(false);
		forward.setPath("/app/store/props.jsp");
		return forward;
	}


}
