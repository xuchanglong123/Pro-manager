package com.bch.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;
import java.util.Objects;

@Entity
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

    @Id
    @Column(name = "uId", nullable = false, length = 50)
    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 50)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "sex", nullable = true, length = 50)
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "age", nullable = true, length = 50)
    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Basic
    @Column(name = "birthday", nullable = true)
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Basic
    @Column(name = "phone", nullable = true, length = 50)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "schoolNumber", nullable = true, length = 50)
    public String getSchoolNumber() {
        return schoolNumber;
    }

    public void setSchoolNumber(String schoolNumber) {
        this.schoolNumber = schoolNumber;
    }

    @Basic
    @Column(name = "major", nullable = true, length = 50)
    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    @Basic
    @Column(name = "class", nullable = true, length = 50)
    public String getClazz() {
        return clazz;
    }

    public void setClazz(String clazz) {
        this.clazz = clazz;
    }

    @Basic
    @Column(name = "grade", nullable = true, length = 50)
    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    @Basic
    @Column(name = "college", nullable = true, length = 50)
    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    @Basic
    @Column(name = "school", nullable = true, length = 50)
    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    @Basic
    @Column(name = "positiveImage", nullable = true, length = 256)
    public String getPositiveImage() {
        return positiveImage;
    }

    public void setPositiveImage(String positiveImage) {
        this.positiveImage = positiveImage;
    }

    @Basic
    @Column(name = "oppositeImage", nullable = true, length = 256)
    public String getOppositeImage() {
        return oppositeImage;
    }

    public void setOppositeImage(String oppositeImage) {
        this.oppositeImage = oppositeImage;
    }

    @Basic
    @Column(name = "aBalance", nullable = true, precision = 0)
    public Integer getaBalance() {
        return aBalance;
    }

    public void setaBalance(Integer aBalance) {
        this.aBalance = aBalance;
    }

    @Basic
    @Column(name = "bankNumber", nullable = true, length = 50)
    public String getBankNumber() {
        return bankNumber;
    }

    public void setBankNumber(String bankNumber) {
        this.bankNumber = bankNumber;
    }

    @Basic
    @Column(name = "deposit", nullable = true, precision = 0)
    public Integer getDeposit() {
        return deposit;
    }

    public void setDeposit(Integer deposit) {
        this.deposit = deposit;
    }

    @Basic
    @Column(name = "creditScore", nullable = true)
    public Integer getCreditScore() {
        return creditScore;
    }

    public void setCreditScore(Integer creditScore) {
        this.creditScore = creditScore;
    }

    @Basic
    @Column(name = "paymentPassword", nullable = true, length = 50)
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
