package model;

public class Content {
	private int id;
	private String title;
	private String brief;
	private String content;
	private String createdtime;
	private String updatetime;
	private int authorid;
	
	
	public Content() {
		super();
	}



	public Content(int id, String title, String brief, String content, String createdtime, String updatetime,
			int authorid) {
		super();
		this.id = id;
		this.title = title;
		this.brief = brief;
		this.content = content;
		this.createdtime = createdtime;
		this.updatetime = updatetime;
		this.authorid = authorid;
	}


	public Content(String title, String brief, String content, int authorid) {
		super();
		this.title = title;
		this.brief = brief;
		this.content = content;
		this.authorid = authorid;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getBrief() {
		return brief;
	}



	public void setBrief(String brief) {
		this.brief = brief;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getCreatedtime() {
		return createdtime;
	}



	public void setCreatedtime(String createdtime) {
		this.createdtime = createdtime;
	}



	public String getUpdatetime() {
		return updatetime;
	}



	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}



	public int getAuthorid() {
		return authorid;
	}



	public void setAuthorid(int authorid) {
		this.authorid = authorid;
	}
	
	
	
	
}
