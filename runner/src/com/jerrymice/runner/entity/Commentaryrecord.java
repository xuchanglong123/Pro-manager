package com.jerrymice.runner.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name="commentaryrecord")
public class Commentaryrecord {
    private int id;
    private String comment;
    private Users uId;   //∂‡∂‘“ª
    private Users commentatorId;
    private Integer score;
    private Timestamp times;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @ManyToOne
    @JoinColumn(name = "uId")
    public Users getuId() {
        return uId;
    }

    public void setuId(Users uId) {
        this.uId = uId;
    }

    @ManyToOne
    @JoinColumn(name = "commentatorId")
    public Users getCommentatorId() {
        return commentatorId;
    }

    public void setCommentatorId(Users commentatorId) {
        this.commentatorId = commentatorId;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Timestamp getTimes() {
        return times;
    }

    public void setTimes(Timestamp times) {
        this.times = times;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Commentaryrecord that = (Commentaryrecord) o;
        return id == that.id &&
                Objects.equals(comment, that.comment) &&
                Objects.equals(uId, that.uId) &&
                Objects.equals(commentatorId, that.commentatorId) &&
                Objects.equals(score, that.score) &&
                Objects.equals(times, that.times);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, comment, uId, commentatorId, score, times);
    }
}
