package model;

public class NoiDung {
	
	private int id;
    private String Title;
    private String Brief;
    private String Content;
    private String Createddate; 
    
    
	public NoiDung(int id, String title, String brief, String content, String createddate) {
		super();
		this.id = id;
		Title = title;
		Brief = brief;
		Content = content;
		Createddate = createddate;
	}
	
	
	
	public NoiDung(int id, String title, String brief, String content) {
		super();
		this.id = id;
		Title = title;
		Brief = brief;
		Content = content;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getBrief() {
		return Brief;
	}
	public void setBrief(String brief) {
		Brief = brief;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getCreateddate() {
		return Createddate;
	}
	public void setCreateddate(String createddate) {
		Createddate = createddate;
	}
    
    
    

	
}
