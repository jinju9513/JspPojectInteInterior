package com.team.app.cs.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.cs.board.dao.CS_BoardDAO;
import com.team.app.cs.board.vo.CS_ReplyVO;

public class CS_ReplyEditOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		CS_BoardDAO dao = new CS_BoardDAO();
		CS_ReplyVO reply = new CS_ReplyVO();
		
		return null;
	}

}
