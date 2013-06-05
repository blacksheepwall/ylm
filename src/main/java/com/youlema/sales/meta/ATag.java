package com.youlema.sales.meta;

public class ATag {
	private String title;
	private String url;
	private boolean focus;

	public boolean getFocus() {
        return focus;
    }

    public void setFocus(boolean focus) {
        this.focus = focus;
    }

    public ATag(String title, String url) {
	    this.title = title;
	    this.url = url;
    }

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
