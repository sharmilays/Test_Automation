
package com.TFsPoints;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class WorkItemProperty {

    @SerializedName("workItem")
    @Expose
    private WorkItem workItem;

    public WorkItem getWorkItem() {
        return workItem;
    }

    public void setWorkItem(WorkItem workItem) {
        this.workItem = workItem;
    }

    public WorkItemProperty withWorkItem(WorkItem workItem) {
        this.workItem = workItem;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(WorkItemProperty.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("workItem");
        sb.append('=');
        sb.append(((this.workItem == null)?"<null>":this.workItem));
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
        result = ((result* 31)+((this.workItem == null)? 0 :this.workItem.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof WorkItemProperty) == false) {
            return false;
        }
        WorkItemProperty rhs = ((WorkItemProperty) other);
        return ((this.workItem == rhs.workItem)||((this.workItem!= null)&&this.workItem.equals(rhs.workItem)));
    }

}
