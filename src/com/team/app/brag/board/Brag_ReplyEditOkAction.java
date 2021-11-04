package com.team.app.brag.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.action.Action;
import com.team.action.ActionForward;
import com.team.app.brag.board.dao.Brag_BoardDAO;
import com.team.app.brag.board.vo.Brag_ReplyVO;

public class Brag_ReplyEditOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		Brag_BoardDAO dao = new Brag_BoardDAO();
		Brag_ReplyVO reply = new Brag_ReplyVO();
		
		return null;
	}

}
