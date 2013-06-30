package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.Date;

import com.yolema.tbss.ext.facade.fdo.OrderCustomFdo;

/**
 * 游客VO，用于游客列表展示
 * 
 * @author user
 * 
 */
public class CustomerVo {
	private String status;

	private String name;

	private String pinyin;

	private String sex;

	private BigDecimal amount;

	private Certificate certificate;

	private String household;

	private String mobile;

	private String memo;

	private long customerId;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public Certificate getCertificate() {
		return certificate;
	}

	public void setCertificate(Certificate certificate) {
		this.certificate = certificate;
	}

	public String getHousehold() {
		return household;
	}

	public void setHousehold(String household) {
		this.household = household;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}

	/**
	 * 证件信息
	 * 
	 * @author user
	 * 
	 */
	public static class Certificate {

		final private String type;

		Certificate(String type) {
			this.type = type;
		}

		public String getType() {
			return type;
		}

		private String certificateNumber;

		private Date issueDate;

		private Date expiryDate;

		private String issuePlace;

		private String birthday;

		public String getCertificateNumber() {
			return certificateNumber;
		}

		public void setCertificateNumber(String certificateNumber) {
			this.certificateNumber = certificateNumber;
		}

		public Date getIssueDate() {
			return issueDate;
		}

		public void setIssueDate(Date issueDate) {
			this.issueDate = issueDate;
		}

		public Date getExpiryDate() {
			return expiryDate;
		}

		public void setExpiryDate(Date expiryDate) {
			this.expiryDate = expiryDate;
		}

		public String getIssuePlace() {
			return issuePlace;
		}

		public void setIssuePlace(String issuePlace) {
			this.issuePlace = issuePlace;
		}

		public String getBirthday() {
			return birthday;
		}

		public void setBirthday(String birthday) {
			this.birthday = birthday;
		}
	}

	public static CustomerVo fromFdo(OrderCustomFdo fdo) {
		CustomerVo vo = new CustomerVo();
		vo.amount = fdo.getMoneyOfExpense();
		vo.customerId = fdo.getOrderCustomId();
		vo.household = fdo.getCensusRegister();
		vo.memo = fdo.getMemo();
		vo.mobile = fdo.getMobile();
		vo.name = fdo.getName();
		vo.pinyin = fdo.getPinyin();
		vo.sex = fdo.getSex() ? "男" : "女";
		vo.status = fdo.getIsCanceled() ? "已取消" : "正常";
		Certificate certificate = new Certificate(fdo.getPid());
		certificate.birthday = fdo.getBirthday();
		certificate.certificateNumber = fdo.getPidNo();
		certificate.expiryDate = fdo.getGmtPidExpiration();
		certificate.issueDate = fdo.getGmtPidIssue();
		certificate.issuePlace = fdo.getPidIssuePlace();
		vo.setCertificate(certificate);
		return vo;
	}

}
