
package com.TFsRuns.copy;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Parent {

    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("plan")
    @Expose
    private Plan plan;
    @SerializedName("pointIds")
    @Expose
    private List<String> pointIds = new ArrayList<String>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Parent withName(String name) {
        this.name = name;
        return this;
    }

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public Parent withPlan(Plan plan) {
        this.plan = plan;
        return this;
    }

    public List<String> getPointIds() {
        return pointIds;
    }

    public void setPointIds(List<String> pointIds) {
        this.pointIds = pointIds;
    }

    public Parent withPointIds(List<String> pointIds) {
        this.pointIds = pointIds;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Parent.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("name");
        sb.append('=');
        sb.append(((this.name == null)?"<null>":this.name));
        sb.append(',');
        sb.append("plan");
        sb.append('=');
        sb.append(((this.plan == null)?"<null>":this.plan));
        sb.append(',');
        sb.append("pointIds");
        sb.append('=');
        sb.append(((this.pointIds == null)?"<null>":this.pointIds));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

    @Override
    public int hashCode() {
        int result = 1;
        result = ((result* 31)+((this.name == null)? 0 :this.name.hashCode()));
        result = ((result* 31)+((this.pointIds == null)? 0 :this.pointIds.hashCode()));
        result = ((result* 31)+((this.plan == null)? 0 :this.plan.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof Parent) == false) {
            return false;
        }
        Parent rhs = ((Parent) other);
        return ((((this.name == rhs.name)||((this.name!= null)&&this.name.equals(rhs.name)))&&((this.pointIds == rhs.pointIds)||((this.pointIds!= null)&&this.pointIds.equals(rhs.pointIds))))&&((this.plan == rhs.plan)||((this.plan!= null)&&this.plan.equals(rhs.plan))));
    }

}
