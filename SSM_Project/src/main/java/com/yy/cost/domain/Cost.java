package com.yy.cost.domain;

import java.util.Date;

public class Cost {
    private Integer id;

    private String name;

    private Integer base_duration;

    private Integer base_cost;

    private Double unit_cost;

    private String status;

    private String descr;

    private Date creatime;

    private Date startime;

    private String cost_type;

    public Cost(Integer id, String name, Integer base_duration, Integer base_cost, Double unit_cost, String status, String descr, Date creatime, Date startime, String cost_type) {
        this.id = id;
        this.name = name;
        this.base_duration = base_duration;
        this.base_cost = base_cost;
        this.unit_cost = unit_cost;
        this.status = status;
        this.descr = descr;
        this.creatime = creatime;
        this.startime = startime;
        this.cost_type = cost_type;
    }

    public Cost() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getBase_duration() {
        return base_duration;
    }

    public void setBase_duration(Integer base_duration) {
        this.base_duration = base_duration;
    }

    public Integer getBase_cost() {
        return base_cost;
    }

    public void setBase_cost(Integer base_cost) {
        this.base_cost = base_cost;
    }

    public Double getUnit_cost() {
        return unit_cost;
    }

    public void setUnit_cost(Double unit_cost) {
        this.unit_cost = unit_cost;
    }

    public String getCost_type() {
        return cost_type;
    }

    public void setCost_type(String cost_type) {
        this.cost_type = cost_type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr == null ? null : descr.trim();
    }

    public Date getCreatime() {
        return creatime;
    }

    public void setCreatime(Date creatime) {
        this.creatime = creatime;
    }

    public Date getStartime() {
        return startime;
    }

    public void setStartime(Date startime) {
        this.startime = startime;
    }

    @Override
    public String toString() {
        return "Cost{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", base_duration=" + base_duration +
                ", base_cost=" + base_cost +
                ", unit_cost=" + unit_cost +
                ", status='" + status + '\'' +
                ", descr='" + descr + '\'' +
                ", creatime=" + creatime +
                ", startime=" + startime +
                ", cost_type='" + cost_type + '\'' +
                '}';
    }
}