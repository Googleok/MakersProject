package org.zerock.domain;

public class liketoVO {
	
	private int lno;
	private int bno;
	private String uid;
	private int like_check;
	
	public liketoVO() {
		// TODO Auto-generated constructor stub
	}
	
	public liketoVO(int lno, int bno, String uid, int like_check) {
		super();
		this.lno = lno;
		this.bno = bno;
		this.uid = uid;
		this.like_check = like_check;
	}

	public int getLno() {
		return lno;
	}

	public void setLno(int lno) {
		this.lno = lno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getLike_check() {
		return like_check;
	}

	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}

	@Override
	public String toString() {
		return "liektoVO [lno=" + lno + ", bno=" + bno + ", uid=" + uid + ", like_check=" + like_check + "]";
	}





}
