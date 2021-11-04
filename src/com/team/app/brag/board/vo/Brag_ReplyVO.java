package com.team.app.brag.board.vo;

public class Brag_ReplyVO {
	private int brag_reply_no;
	private int user_no;
	private int  brag_board_no;
	private String brag_reply_content;
	
	public Brag_ReplyVO() {;}

	public int getBrag_reply_no() {
		return brag_reply_no;
	}

	public void setBrag_reply_no(int brag_reply_no) {
		this.brag_reply_no = brag_reply_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getBrag_board_no() {
		return brag_board_no;
	}

	public void setBrag_board_no(int brag_board_no) {
		this.brag_board_no = brag_board_no;
	}

	public String getBrag_reply_content() {
		return brag_reply_content;
	}

	public void setBrag_reply_content(String brag_reply_content) {
		this.brag_reply_content = brag_reply_content;
	}
	
	
	
}
