package org.zerock.domain;

public class SnsCriteria {

	private int page;
	private int perPageNum;
	
	public SnsCriteria() {
		this.page = 0;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	@Override
	public String toString() {
		return "SnsCriteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
	
	
}
