package com.jerrymice.runner.entity;

import java.sql.Date;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="information")
public class Information {
    private String uId;
    private String name;
    private String sex;
    private String age;
    private Date birthday;
    private String phone;
    private String schoolNumber;
    private String major;
    private String clazz;
    private String grade;
    private String college;
    private String school;
    private String positiveImage;
    private String oppositeImage;
    private Integer aBalance;
    private String bankNumber;
    private Integer deposit;
    private Integer creditScore;
    private String paymentPassword;
    private Users user;
    

    
    @OneToOne(mappedBy="information")
    public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@Id
    public String getuId() {
        return uId;
    }


	public void setuId(String uId) {
        this.uId = uId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSchoolNumber() {
        return schoolNumber;
    }

    public void setSchoolNumber(String schoolNumber) {
        this.schoolNumber = schoolNumber;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getClazz() {
        return clazz;
    }

    public void setClazz(String clazz) {
        this.clazz = clazz;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getPositiveImage() {
        return positiveImage;
    }

    public void setPositiveImage(String positiveImage) {
        this.positiveImage = positiveImage;
    }

    public String getOppositeImage() {
        return oppositeImage;
    }

    public void setOppositeImage(String oppositeImage) {
        this.oppositeImage = oppositeImage;
    }

    public Integer getaBalance() {
        return aBalance;
    }

    public void setaBalance(Integer aBalance) {
        this.aBalance = aBalance;
    }

    public String getBankNumber() {
        return bankNumber;
    }

    public void setBankNumber(String bankNumber) {
        this.bankNumber = bankNumber;
    }

    public Integer getDeposit() {
        return deposit;
    }

    public void setDeposit(Integer deposit) {
        this.deposit = deposit;
    }

    public Integer getCreditScore() {
        return creditScore;
    }

    public void setCreditScore(Integer creditScore) {
        this.creditScore = creditScore;
    }

    public String getPaymentPassword() {
        return paymentPassword;
    }

    public void setPaymentPassword(String paymentPassword) {
        this.paymentPassword = paymentPassword;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Information that = (Information) o;
        return Objects.equals(uId, that.uId) &&
                Objects.equals(name, that.name) &&
                Objects.equals(sex, that.sex) &&
                Objects.equals(age, that.age) &&
                Objects.equals(birthday, that.birthday) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(schoolNumber, that.schoolNumber) &&
                Objects.equals(major, that.major) &&
                Objects.equals(clazz, that.clazz) &&
                Objects.equals(grade, that.grade) &&
                Objects.equals(college, that.college) &&
                Objects.equals(school, that.school) &&
                Objects.equals(positiveImage, that.positiveImage) &&
                Objects.equals(oppositeImage, that.oppositeImage) &&
                Objects.equals(aBalance, that.aBalance) &&
                Objects.equals(bankNumber, that.bankNumber) &&
                Objects.equals(deposit, that.deposit) &&
                Objects.equals(creditScore, that.creditScore) &&
                Objects.equals(paymentPassword, that.paymentPassword);
    }

    @Override
    public int hashCode() {

        return Objects.hash(uId, name, sex, age, birthday, phone, schoolNumber, major, clazz, grade, college, school, positiveImage, oppositeImage, aBalance, bankNumber, deposit, creditScore, paymentPassword);
    }
}
