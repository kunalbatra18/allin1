package ideawap.content.table;

import java.sql.Timestamp;

public class Game {

	int code;
	String name;
	String prv;
	String src_type;
	String src_stream;
	String cat;
	String pricetag;
	String cat_type;
	Timestamp timestamp;
	
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrv() {
		return prv;
	}
	public void setPrv(String prv) {
		this.prv = prv;
	}
	public String getSrc_type() {
		return src_type;
	}
	public void setSrc_type(String src_type) {
		this.src_type = src_type;
	}
	public String getSrc_stream() {
		return src_stream;
	}
	public void setSrc_stream(String src_stream) {
		this.src_stream = src_stream;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	public String getPricetag() {
		return pricetag;
	}
	public void setPricetag(String pricetag) {
		this.pricetag = pricetag;
	}
	public String getCat_type() {
		return cat_type;
	}
	public void setCat_type(String cat_type) {
		this.cat_type = cat_type;
	}
	
	
	
	
}
